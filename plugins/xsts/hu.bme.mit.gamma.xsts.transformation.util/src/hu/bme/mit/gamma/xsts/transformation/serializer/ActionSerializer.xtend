/********************************************************************************
 * Copyright (c) 2018-2020 Contributors to the Gamma project
 *
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * SPDX-License-Identifier: EPL-1.0
 ********************************************************************************/
package hu.bme.mit.gamma.xsts.transformation.serializer

import hu.bme.mit.gamma.xsts.model.AssignmentAction
import hu.bme.mit.gamma.xsts.model.AssumeAction
import hu.bme.mit.gamma.xsts.model.EmptyAction
import hu.bme.mit.gamma.xsts.model.NonDeterministicAction
import hu.bme.mit.gamma.xsts.model.OrthogonalAction
import hu.bme.mit.gamma.xsts.model.ParallelAction
import hu.bme.mit.gamma.xsts.model.SequentialAction
import hu.bme.mit.gamma.xsts.model.XSTS

import static extension hu.bme.mit.gamma.xsts.derivedfeatures.XSTSDerivedFeatures.*

class ActionSerializer {
	// Singleton
	public static final ActionSerializer INSTANCE = new ActionSerializer
	protected new() {}
	// Auxiliary objects
	protected final extension DeclarationSerializer declarationSerializer = DeclarationSerializer.INSTANCE
	protected final extension ExpressionSerializer expressionSerializer = ExpressionSerializer.INSTANCE
	
	def String serializeXSTS(XSTS xSts) '''
		�xSts.serializeDeclarations(false)�
		
		trans {
			�xSts.mergedAction.serialize�
		}
		init {
			�xSts.initializingAction.serialize�
		}
		env {
			�xSts.environmentalAction.serialize�
		}
	'''
	
	def dispatch String serialize(AssumeAction action) '''
		assume �action.assumption.serialize�;
	'''
	
	def dispatch String serialize(AssignmentAction action) '''
		�action.lhs.serialize� := �action.rhs.serialize�;
	'''
	
	// nop cannot be parsed by Theta
	def dispatch String serialize(EmptyAction action) ''''''
	
	def dispatch String serialize(NonDeterministicAction action) '''
		choice �FOR subaction : action.actions SEPARATOR " or "�{
			�subaction.serialize�
		}�ENDFOR�
	'''
	
	def dispatch String serialize(ParallelAction action) '''
		par �FOR subaction : action.actions SEPARATOR " and "�{
			�subaction.serialize�
		}�ENDFOR�
	'''
	
	def dispatch String serialize(OrthogonalAction action) '''
		ort �FOR subaction : action.actions SEPARATOR " "�{
			�subaction.serialize�
		}�ENDFOR�
	'''
	
	def dispatch String serialize(SequentialAction action) '''
���		seq {
			�FOR subaction : action.actions�
				�subaction.serialize�
			�ENDFOR�
���		}
	'''
	
}