# Release Notes

## 2018.11.12. - Version 2.0.0

### What is New 

* Gamma now depends on VIATRA 2.0.2 and Yakindu 3.4.3.
* The Gamma Composite Language has a new syntax.
* Gamma supports two synchronous (synchronous composite and cascade composite) and two asynchronous composition modes (asynchronous adapter and asynchronous composite).
* Cascade composite components support the definition of an execution list.
* Gamma statecharts are serialized with a human-readable syntax.
* Imports in .gcd files now must be specified using a workspace URI. 
* The model checking is executed on a background thread.
* The formal verification of both synchronous and asynchronous component models is supported.
* Generate Test Set functionalitiy for deep validation is implemented.
* The results of the verification are serialized with a human-readable syntax.

## 2018.11.14. - Version 2.0.1

### Improvements

* Improvements have been made regarding content assist while editing the models in the Xtext editor.

## 2018.11.15. - Version 2.0.2

### Improvements

* Imports can be defined relatively to the importer file.
* Multiple triggers (in or relation) in Yakindu are transformable.

## 2018.11.23. - Version 2.0.3
	
### Improvements

* Improvements have been made regarding content assist while editing the models in the Xtext editor.
* Icons are added to .gcd, .ggen and .get files.
* Validation rules regarding asynchronous adapters are extended.
* Timing bug regarding asynchronous adapters is fixed.

## 2018.12.27. - Version 2.0.4
	
### Improvements

* Type checking regarding statecharts while editing the models in the Xtext editor is greatly improved.
* Content assist regarding the message queues of the asynchronous adapters is improved.
* Validation rules regarding the priority of message queues of asynchronous adapters are extended.

## 2019.02.28. - Version 2.1.0

### What is New

* Gamma now depends on VIATRA 2.1.0 and Yakindu 3.5.2.
* Components are now parameterizable. Parameterization is supported by both formal verification and code and test generation functionalities.
* Gamma interfaces, Java code, UPPAAL model and JUnit test suites (in addition to Gamma statecharts) can be generated using the generator model.
* Gamma execution traces now must have a name.
* Transition-covering test sets can now be generated.
* Statecharts can be executed in a bottom-up execution mode (subregions are executed first) in addition to the up to now supported top-down execution mode.
* Asynchronous adapters are now defined with the "adapter" keyword and adapt (paramterizable) component instances instead of component types.

### Improvements

* Bug regarding exit events of composite states is fixed.
* Bug regarding the linking of packages is fixed.
* Compatibility issues with the new VIATRA version are resolved.
* Queries generated with the GUI are now appended with an expression specifying activeness (isActive) when referring to states.

## 2019.03.28. - Version 2.1.1

### Improvements

* Validation rules regarding fork and join nodes are added.

## 2019.05.25. - Version 2.1.2

### What is New

* Gamma now depends on VIATRA 2.1.1 and Yakindu 3.5.3.
* A new action language has been introduced (GAL), wich provides new elements in actions, such as cycles and branches.
* The GCL metamodel and grammar have been refactored, they now depend on the GAL.

### Improvements
 
* Validation rules regarding the control specifications of asynchronous adapters are added.
* The Gamma-UPPAAL transformation has been optimized.

## 2019.07.17. - Version 2.1.3

### What is New

* The Component element of the GSL metamodel has been moved to the composite package.
* The analysis task now has include and exclude component features.

### Improvements
 
* Bugs regarding the generation of imports in the generated code and tests are fixed.

## 2019.11.02. - Version 2.2.0

### What is New

* Gamma Constraint Language has been renamed to Gamma Expression Language.
* Prioritized transitions in the GSL have been introduced.
* A reflective API to the generated Java code has been introduced.

### Improvements
 
* Validation rules have been added.

## 2019.11.28. - Version 2.2.1

### What is New

* The reflective API has been extended with a checkVariableValue method.
* The generated tests now access the class implementations through the reflective API (Java interface).

### Improvements
 
* Optimization regarding timings has been introduced.
* State references in the query generator have been fixed.
* Bugs in the reflective class wrapper have been fixed.

## 2020.03.21. - Version 2.3.0

### What is New

* Gamma now depends on VIATRA 2.3.1 and Yakindu 3.5.10.
* Typedefs can now be used for primitive types.
* Ports can now be bound to multiple instance ports in a composite component if they contain only input events.
* Persistent events have been introduced.
* Multiple test now can be generated in a single JUnit file using the query generator GUI.
* Oncycle triggers can now be used in statechart.

### Improvements
 
* Optimizations regarding event, timing and variable declarations in the UPPAAL transformation have been introduced.
* A state reference bug in the query generator has been fixed.
* New validation rules in the Gamma text editor have been introduced.
* A timeout trigger bug regarding statechart complex triggers in the UPPAAL transformation has been fixed.
* Various UPPAAL back-annotation bugs have been fixed.


## 2020.05.06. - Version 2.3.1

### What is New

* Atomic statechart components can now be inputs for the UPPAAL transformation.
* Out event references are new insertable from the GUI when formulating the verification query.
* Out event and interaction coverage test suite generation have been introduced.
* State space can now be reused when generating test suites.
* Optimizations regarding the size of the generated test suites have been introduced.
* Mission phase statechart generation has been introduced.

### Improvements

* Import serialization in the generated Gamma models has been improved.
* Optimizations regarding unfireable transitions and unreachable state nodes in the UPPAAL transformation have been introduced.
* Parameter handling bug in the UPPAAL transformation has been fixed.
* Listener notification bug in the generated Java code has been fixed.
* New validation rules in the Gamma text editors have been introduced.

## 2020.09.22. - Version 2.4.0

### What is New

* Theta has been integrated as a new verification back-end.
* A property langauge for defining CTL* expressions has been introduced.
* Visualization for traces and composite systems has been introduced.
* A test project for verifying the correctness of Gamma transformations has been introduced.
* A test replayer functionality, which transforms the trace models into statechart models has been introduced.

### Improvements

* The statechart.ecore file has been split into multiple ecore files.
* Test generation for covering transitions and interactions in composite models has been redesigned.
* Bugs in system optimization algorithms during the transformation to verification back-ends have been fixed.
