#!/usr/bin/env wolframscript
(* ::Package:: *)

(* ::Input:: *)
(*IntegrateChangeVariables[Integrate[f[x],x],x==g[x]]*)


(* ::Input:: *)
(*IntegrateChangeVariables[Inactive[Integrate][Exp[2x],x],t,t==2 x]*)


(* ::Input:: *)
(*IntegrateChangeVariables[Inactive[Integrate][f[x],x],t,t==Exp[x I]]*)


(* ::Input:: *)
(*IntegrateChangeVariables[Integrate[f[x],x],t,t==Exp[x I]]*)


(* ::Input:: *)
(*IntegrateChangeVariables[Inactive[Integrate][f[x],x],t,t==Exp[x I]]*)


(* ::Input:: *)
(*ComplexPlot3D[1/z,{z,-2-2I,2+2I}]*)


(* ::Input:: *)
(*Inactive[Integrate][1/z,z]*)


(* ::Input:: *)
(*IntegrateChangeVariables[*)
(*Inactive[Integrate][1/z,z]*)
(*,t,t==Exp[ I]]*)


(* ::Input:: *)
(*ImplicitD[x^y+y^x==0,y,x]*)


(* ::Input:: *)
(*LineIntegrate[{x^3-y,x^2-x y},{x,y}\[Element]Region[ParametricRegion[{t^2,-t Sin[t]^2},{{t,-Pi,Pi}}]]]*)


(* ::Input:: *)
(*ContourIntegrate[Exp[z^2]/Sin[z],z\[Element]Circle[{0,0},10]]*)


(* ::Input:: *)
(*FractionalD[x^2,{x,1/2}]*)


(* ::Input:: *)
(*Plot[(8 x^(3/2))/(3 Sqrt[\[Pi]]),{x,-7.28,7.28}]*)


(* ::Input:: *)
(*ResourceFunction["TraceGraph"][(1 + (2 + 2)) + (3 + 4),TraceOriginal->True]*)


(* ::Input:: *)
(*ResourceFunction["TraceGraph"][*)
(*1+2+3 + 4*)
(*,TraceOriginal->True]*)
(**)
(*Exp[2\[Pi] I \[Theta]]*)


(* ::Input:: *)
(*ResourceFunction["TraceGraph"][*)
(*1*2^3 + 4*)
(*,TraceOriginal->True]*)


(* ::Input:: *)
(*UnlabeledTree[FileSystemTree[$InstallationDirectory],MaxDisplayedChildren->All->3]*)


(* ::Input:: *)
(*UnlabeledTree[FileSystemTree[$InstallationDirectory],MaxDisplayedChildren->All->3]*)


(* ::Input:: *)
(*vars={{u[x,y],v[x,y]},{x,y}}*)


(* ::Input:: *)
(*pars=<|"SolidMechanicsMaterialModel"->"NeoHookean","Thickness"->1,"ShearModulus"->5,"LameParameter"->10|>;*)


(* ::Input:: *)
(*pdemodel={SolidMechanicsPDEComponent[vars,pars]==SolidBoundaryLoadValue[x==1,vars,pars,<|"Pressure"->{9,0}|>],SolidFixedCondition[x==0,vars,pars]};*)


(* ::Input:: *)
(*Activate[pdemodel]*)


(* ::Input:: *)
(*NDSolveValue[pdemodel,{u[x,y],v[x,y]},{x,y}\[Element]Region[BooleanRegion[And[#, Not[#2]]& , {Rectangle[{0, 0}], Disk[{Rational[1, 2], Rational[1, 2]}, Rational[1, 4]]}]]]*)


(* ::Input:: *)
(*VectorDisplacementPlot[%,{x,y}\[Element]Region[BooleanRegion[And[#, Not[#2]]& , {Rectangle[{0, 0}], Disk[{Rational[1, 2], Rational[1, 2]}, Rational[1, 4]]}]],VectorSizes->Full]*)


(* ::Input:: *)
(*pars["ReinforcementDirectionVector"]=Normalize[{1,1}];*)


(* ::Input:: *)
(*pdemodel={SolidMechanicsPDEComponent[vars,pars]==SolidBoundaryLoadValue[x==1,vars,pars,<|"Pressure"->{9,0}|>],SolidFixedCondition[x==0,vars,pars]};*)


(* ::Input:: *)
(*NDSolveValue[pdemodel,{u[x,y],v[x,y]},{x,y}\[Element]Region[BooleanRegion[And[#, Not[#2]]& , {Rectangle[{0, 0}], Disk[{Rational[1, 2], Rational[1, 2]}, Rational[1, 4]]}]]];*)


(* ::Input:: *)
(*VectorDisplacementPlot[%,{x,y}\[Element]Region[BooleanRegion[And[#, Not[#2]]& , {Rectangle[{0, 0}], Disk[{Rational[1, 2], Rational[1, 2]}, Rational[1, 4]]}]],VectorSizes->Full]*)


(* ::Input:: *)
(*vars={{u[x,y],v[x,y],p[x,y]},{x,y}}*)


(* ::Input:: *)
(*sol=ParametricNDSolveValue[{FluidFlowPDEComponent[vars,<|"ReynoldsNumber"->\[ScriptCapitalR]|>]=={0,0,0},DirichletCondition[{u[x,y]==1,v[x,y]==0},y==1],DirichletCondition[{u[x,y]==0,v[x,y]==0},y<1],DirichletCondition[p[x,y]==0,x==0&&y==0]},{u[x,y],v[x,y]},{x,y}\[Element]Region[BooleanRegion[And[#, Not[#2]]& , {Rectangle[{0, 0}], RegularPolygon[{Rational[1, 2], Rational[1, 2]}, Rational[1, 4], 5]}]],\[ScriptCapitalR],Method -> {"FiniteElement", "InterpolationOrder" -> {u -> 2, v -> 2, p -> 1}}]*)


(* ::Input:: *)
(*StreamPlot[Evaluate[sol[100]],{x,y}\[Element]Region[BooleanRegion[And[#, Not[#2]]& , {Rectangle[{0, 0}], RegularPolygon[{Rational[1, 2], Rational[1, 2]}, Rational[1, 4], 5]}]]]*)


(* ::Input:: *)
(*Parallelize[AnimationVideo[StreamPlot[Evaluate[sol[2^\[Alpha]]],{x,y}\[Element]Region[BooleanRegion[And[#, Not[#2]]& , {Rectangle[{0, 0}], RegularPolygon[{Rational[1, 2], Rational[1, 2]}, Rational[1, 4], 5]}]]],{\[Alpha],0,12}]]*)


(* ::Input:: *)
(*Export*)


(* ::Input:: *)
(*Parallelize[AnimationVideo[StreamPlot[Evaluate[sol[2^\[Alpha]]],{x,y}\[Element]Region[BooleanRegion[And[#, Not[#2]]& , {Rectangle[{0, 0}], RegularPolygon[{Rational[1, 2], Rational[1, 2]}, Rational[1, 4], 5]}]]],{\[Alpha],0,20}]]*)


(* ::Input:: *)
(*eqn=SchrodingerPDEComponent[{\[CapitalPsi][t,x,y],t,{x,y}},<|"ReducedPlanckConstant"->1|>] ==0*)


(* ::Input:: *)
(*\[CapitalOmega]=DiscretizeRegion[Region[Polygon[{{-20., 20.}, {20., 20.}, {20., -20.}, {-20., -20.}} -> {{{1.5, -0.25}, {1.5, 0.25}, {-1.5, 0.25}, {-1.5, -0.25}}}]],MaxCellMeasure->0.3]*)


(* ::Input:: *)
(*solution=NDSolveValue[{eqn,\[CapitalPsi][0,x,y]==E^(-2 I y -1/20 (x^2+(y-10)^2)),DirichletCondition[\[CapitalPsi][t,x,y]==0,True]},\[CapitalPsi],{t,0,10},{x,y}\[Element]\[CapitalOmega]]*)


(* ::Input:: *)
(*AnimationVideo[DensityPlot[Abs[solution[t,x,y]]^2,{x,y}\[Element] \[CapitalOmega],PlotPoints->100,PlotRange->{0,1}],{t,0,10}]*)


(* ::Input:: *)
(*Export["~/Downloads/mathematica.mp4",Out[36]]*)


(* ::Input:: *)
(*Export["~/Downloads/particle-scatter.mp4",Out[42]]*)


(* ::Input:: *)
(*With[{*)
(*\[CapitalOmega]=DiscretizeRegion[Region[Polygon[{{-20., 20.}, {20., 20.}, {20., -20.}, {-20., -20.}} -> {{{1.5, -0.25}, {1.5, 0.25}, {-1.5, 0.25}, {-1.5, -0.25}}}]],MaxCellMeasure->0.3]*)
(*},*)
(*AnimationVideo[*)
(*DensityPlot[*)
(*Abs[*)
(*NDSolveValue[{SchrodingerPDEComponent[{\[CapitalPsi][t,x,y],t,{x,y}},<|"ReducedPlanckConstant"->1|>] ==0,*)
(*\[CapitalPsi][0,x,y]==E^(-2 I y -1/20 (x^2+(y-10)^2)),*)
(*DirichletCondition[\[CapitalPsi][t,x,y]==0,True]},*)
(*\[CapitalPsi]*)
(*,{t,0,10}*)
(*,{x,y}\[Element]\[CapitalOmega]][t,x,y]]^2*)
(*,{x,y}\[Element] \[CapitalOmega]*)
(*,PlotPoints->100*)
(*,PlotRange->{0,1}]*)
(*,{t,0,10}]]*)


(* ::Input:: *)
(*model=SystemModel["DocumentationExamples.Simulation.HybridMotor", True];*)


(* ::Input:: *)
(*SystemModelPlot[model,{"Inertia1.w","Inertia2.w"},{0,20},<|"ParameterValues"->{"Inertia2.J"->2}|>]*)


(* ::Input:: *)
(*SystemModelUncertaintyPlot[model,<|"Outputs"->{"Inertia1.w"},"ParameterValues"->{"Inertia2.J"->NormalDistribution[2,.5]},"SimulationInterval"->{0,20}|>]*)


(* ::Input:: *)
(*Region[Polygon[{{-20., 20.}, {20., 20.}, {20., -20.}, {-20., -20.}} -> {{{1.5, -0.25}, {1.5, 0.25}, {-1.5, 0.25}, {-1.5, -0.25}}}]]//FullForm*)


(* ::Input:: *)
(*\!\( *)
(*TagBox[*)
(*StyleBox[*)
(*RowBox[{"Region", "[", *)
(*RowBox[{"Polygon", "[", *)
(*RowBox[{"Rule", "[", *)
(*RowBox[{*)
(*RowBox[{"List", "[", *)
(*RowBox[{*)
(*RowBox[{"List", "[", *)
(*RowBox[{*)
(*RowBox[{"-", "20.`"}], ",", "20.`"}], "]"}], ",", *)
(*RowBox[{"List", "[", *)
(*RowBox[{"20.`", ",", "20.`"}], "]"}], ",", *)
(*RowBox[{"List", "[", *)
(*RowBox[{"20.`", ",", *)
(*RowBox[{"-", "20.`"}]}], "]"}], ",", *)
(*RowBox[{"List", "[", *)
(*RowBox[{*)
(*RowBox[{"-", "20.`"}], ",", *)
(*RowBox[{"-", "20.`"}]}], "]"}]}], "]"}], ",", *)
(*RowBox[{"List", "[", *)
(*RowBox[{"List", "[", *)
(*RowBox[{*)
(*RowBox[{"List", "[", *)
(*RowBox[{"1.5`", ",", *)
(*RowBox[{"-", "0.25`"}]}], "]"}], ",", *)
(*RowBox[{"List", "[", *)
(*RowBox[{"1.5`", ",", "0.25`"}], "]"}], ",", *)
(*RowBox[{"List", "[", *)
(*RowBox[{*)
(*RowBox[{"-", "1.5`"}], ",", "0.25`"}], "]"}], ",", *)
(*RowBox[{"List", "[", *)
(*RowBox[{*)
(*RowBox[{"-", "1.5`"}], ",", *)
(*RowBox[{"-", "0.25`"}]}], "]"}]}], "]"}], "]"}]}], "]"}], "]"}], "]"}],*)
(*ShowSpecialCharacters->False,*)
(*ShowStringCharacters->True,*)
(*NumberMarks->True],*)
(*FullForm]\)*)


(* ::Input:: *)
(*\!\( *)
(*TagBox[*)
(*StyleBox[*)
(*RowBox[{"Region", "[", *)
(*RowBox[{"Polygon", "[", *)
(*RowBox[{"Rule", "[", *)
(*RowBox[{*)
(*RowBox[{"List", "[", *)
(*RowBox[{*)
(*RowBox[{"List", "[", *)
(*RowBox[{*)
(*RowBox[{"-", "20.`"}], ",", "20.`"}], "]"}], ",", *)
(*RowBox[{"List", "[", *)
(*RowBox[{"20.`", ",", "20.`"}], "]"}], ",", *)
(*RowBox[{"List", "[", *)
(*RowBox[{"20.`", ",", *)
(*RowBox[{"-", "20.`"}]}], "]"}], ",", *)
(*RowBox[{"List", "[", *)
(*RowBox[{*)
(*RowBox[{"-", "20.`"}], ",", *)
(*RowBox[{"-", "20.`"}]}], "]"}]}], "]"}], ",", *)
(*RowBox[{"List", "[", *)
(*RowBox[{"List", "[", *)
(*RowBox[{*)
(*RowBox[{"List", "[", *)
(*RowBox[{"1.5`", ",", *)
(*RowBox[{"-", "0.25`"}]}], "]"}], ",", *)
(*RowBox[{"List", "[", *)
(*RowBox[{"1.5`", ",", "0.25`"}], "]"}], ",", *)
(*RowBox[{"List", "[", *)
(*RowBox[{*)
(*RowBox[{"-", "1.5`"}], ",", "0.25`"}], "]"}], ",", *)
(*RowBox[{"List", "[", *)
(*RowBox[{*)
(*RowBox[{"-", "1.5`"}], ",", *)
(*RowBox[{"-", "0.25`"}]}], "]"}]}], "]"}], "]"}]}], "]"}], "]"}], "]"}],*)
(*ShowSpecialCharacters->False,*)
(*ShowStringCharacters->True,*)
(*NumberMarks->True],*)
(*FullForm]\)*)


(* ::Input:: *)
(*\[CapitalOmega]=DiscretizeRegion[Region[Disk[]],MaxCellMeasure->0.3]*)


(* ::Input:: *)
(*\[CapitalOmega]=DiscretizeRegion[Region[Disk[]],MaxCellMeasure->0.3]*)


(* ::Input:: *)
(*\!\( *)
(*TagBox[*)
(*StyleBox[*)
(*RowBox[{"Region", "[", *)
(*RowBox[{"Polygon", "[", *)
(*RowBox[{"Rule", "[", *)
(*RowBox[{*)
(*RowBox[{"List", "[", *)
(*RowBox[{*)
(*RowBox[{"List", "[", *)
(*RowBox[{*)
(*RowBox[{"-", "20.`"}], ",", "20.`"}], "]"}], ",", *)
(*RowBox[{"List", "[", *)
(*RowBox[{"20.`", ",", "20.`"}], "]"}], ",", *)
(*RowBox[{"List", "[", *)
(*RowBox[{"20.`", ",", *)
(*RowBox[{"-", "20.`"}]}], "]"}], ",", *)
(*RowBox[{"List", "[", *)
(*RowBox[{*)
(*RowBox[{"-", "20.`"}], ",", *)
(*RowBox[{"-", "20.`"}]}], "]"}]}], "]"}], ",", *)
(*RowBox[{"List", "[", *)
(*RowBox[{"List", "[", *)
(*RowBox[{*)
(*RowBox[{"List", "[", *)
(*RowBox[{"1.5`", ",", *)
(*RowBox[{"-", "0.25`"}]}], "]"}], ",", *)
(*RowBox[{"List", "[", *)
(*RowBox[{"1.5`", ",", "0.25`"}], "]"}], ",", *)
(*RowBox[{"List", "[", *)
(*RowBox[{*)
(*RowBox[{"-", "1.5`"}], ",", "0.25`"}], "]"}], ",", *)
(*RowBox[{"List", "[", *)
(*RowBox[{*)
(*RowBox[{"-", "1.5`"}], ",", *)
(*RowBox[{"-", "0.25`"}]}], "]"}]}], "]"}], "]"}]}], "]"}], "]"}], "]"}],*)
(*ShowSpecialCharacters->False,*)
(*ShowStringCharacters->True,*)
(*NumberMarks->True],*)
(*FullForm]\)*)


(* ::Input:: *)
(*\!\( *)
(*TagBox[*)
(*StyleBox[*)
(*RowBox[{"Region", "[", *)
(*RowBox[{"Polygon", "[", *)
(*RowBox[{"Rule", "[", *)
(*RowBox[{*)
(*RowBox[{"List", "[", *)
(*RowBox[{*)
(*RowBox[{"List", "[", *)
(*RowBox[{*)
(*RowBox[{"-", "20.`"}], ",", "20.`"}], "]"}], ",", *)
(*RowBox[{"List", "[", *)
(*RowBox[{"20.`", ",", "20.`"}], "]"}], ",", *)
(*RowBox[{"List", "[", *)
(*RowBox[{"20.`", ",", *)
(*RowBox[{"-", "20.`"}]}], "]"}], ",", *)
(*RowBox[{"List", "[", *)
(*RowBox[{*)
(*RowBox[{"-", "20.`"}], ",", *)
(*RowBox[{"-", "20.`"}]}], "]"}]}], "]"}], ",", *)
(*RowBox[{"List", "[", *)
(*RowBox[{"List", "[", *)
(*RowBox[{*)
(*RowBox[{"List", "[", *)
(*RowBox[{"1.5`", ",", *)
(*RowBox[{"-", "0.25`"}]}], "]"}], ",", *)
(*RowBox[{"List", "[", *)
(*RowBox[{"1.5`", ",", "0.25`"}], "]"}], ",", *)
(*RowBox[{"List", "[", *)
(*RowBox[{*)
(*RowBox[{"-", "1.5`"}], ",", "0.25`"}], "]"}], ",", *)
(*RowBox[{"List", "[", *)
(*RowBox[{*)
(*RowBox[{"-", "1.5`"}], ",", *)
(*RowBox[{"-", "0.25`"}]}], "]"}]}], "]"}], "]"}]}], "]"}], "]"}], "]"}],*)
(*ShowSpecialCharacters->False,*)
(*ShowStringCharacters->True,*)
(*NumberMarks->True],*)
(*FullForm]\)*)


(* ::Input:: *)
(*Region[*)
(*Polygon[{*)
(*{-20,20},*)
(*{20,20},*)
(*{20,-20},*)
(*{-20,-20}*)
(*}->{{{0.5`,-0.25`},{0.5`,0.25`},{-2.5`,0.25`},{-2.5`,-0.25`}},{{2.5`,-0.25`},{2.5`,0.25`},{-0.5`,0.25`},{-0.5`,-0.25`}}}]]*)


(* ::Input:: *)
(*{*)
(*{1.5,-.25},*)
(*{1.5,0.25},*)
(*{-1.5,.25},*)
(*{-1.5,-.25}}-.25*)


(* ::Input:: *)
(*{*)
(*{1.5,-.25},*)
(*{1.5,0.25},*)
(*{-1.5,.25},*)
(*{-1.5,-.25}}+.25*)


(* ::Input:: *)
(*{*)
(*{1.5,-.25},*)
(*{1.5,0.25},*)
(*{-1.5,.25},*)
(*{-1.5,-.25}}-{.5,0}*)


(* ::Input:: *)
(*#-{.5,0}&/@{*)
(*{1.5,-.25},*)
(*{1.5,0.25},*)
(*{-1.5,.25},*)
(*{-1.5,-.25}}*)


(* ::Input:: *)
(*#+{.5,0}&/@{*)
(*{1.5,-.25},*)
(*{1.5,0.25},*)
(*{-1.5,.25},*)
(*{-1.5,-.25}}*)


(* ::Input:: *)
(*#-{1,0}&/@{*)
(*{1.5,-.25},*)
(*{1.5,0.25},*)
(*{-1.5,.25},*)
(*{-1.5,-.25}}*)


(* ::Input:: *)
(*#+{1,0}&/@{*)
(*{1.5,-.25},*)
(*{1.5,0.25},*)
(*{-1.5,.25},*)
(*{-1.5,-.25}}*)


(* ::Input:: *)
(*#-{1.5,0}&/@{*)
(*{1.5,-.25},*)
(*{1.5,0.25},*)
(*{-1.5,.25},*)
(*{-1.5,-.25}}*)


(* ::Input:: *)
(*#+{1.5,0}&/@{*)
(*{1.5,-.25},*)
(*{1.5,0.25},*)
(*{-1.5,.25},*)
(*{-1.5,-.25}}*)


(* ::Input:: *)
(*With[{*)
(*offset=2*)
(*},Region[*)
(*Polygon[{*)
(*{-20,20},*)
(*{20,20},*)
(*{20,-20},*)
(*{-20,-20}*)
(*}->{*)
(*#-{offset,0}&/@{*)
(*{1.5,-.25},*)
(*{1.5,0.25},*)
(*{-1.5,.25},*)
(*{-1.5,-.25}}*)
(*,*)
(*#+{offset,0}&/@{*)
(*{1.5,-.25},*)
(*{1.5,0.25},*)
(*{-1.5,.25},*)
(*{-1.5,-.25}}*)
(*}]]]*)


(* ::Input:: *)
(*\[CapitalOmega]=DiscretizeRegion[Region[Polygon[{{-20., 20.}, {20., 20.}, {20., -20.}, {-20., -20.}} -> {{{1.5, -0.25}, {1.5, 0.25}, {-1.5, 0.25}, {-1.5, -0.25}}}]],MaxCellMeasure->0.3]*)


(* ::Input:: *)
(*\[CapitalOmega]=DiscretizeRegion[With[{*)
(*offset=2*)
(*},Region[*)
(*Polygon[{*)
(*{-20,20},*)
(*{20,20},*)
(*{20,-20},*)
(*{-20,-20}*)
(*}->{*)
(*#-{offset,0}&/@{*)
(*{1.5,-.25},*)
(*{1.5,0.25},*)
(*{-1.5,.25},*)
(*{-1.5,-.25}}*)
(*,*)
(*#+{offset,0}&/@{*)
(*{1.5,-.25},*)
(*{1.5,0.25},*)
(*{-1.5,.25},*)
(*{-1.5,-.25}}*)
(*}]]],MaxCellMeasure->0.3]*)


(* ::Input:: *)
(*solution=NDSolveValue[{eqn,\[CapitalPsi][0,x,y]==E^(-2 I y -1/20 (x^2+(y-10)^2)),DirichletCondition[\[CapitalPsi][t,x,y]==0,True]},\[CapitalPsi],{t,0,10},{x,y}\[Element]\[CapitalOmega]]*)


(* ::Input:: *)
(*AnimationVideo[DensityPlot[Abs[solution[t,x,y]]^2,{x,y}\[Element] \[CapitalOmega],PlotPoints->100,PlotRange->{0,1}],{t,0,10}]*)


(* ::Input:: *)
(*\[CapitalOmega]=DiscretizeRegion[With[{*)
(*offset=4*)
(*},Region[*)
(*Polygon[{*)
(*{-20,20},*)
(*{20,20},*)
(*{20,-20},*)
(*{-20,-20}*)
(*}->{*)
(*#-{offset,0}&/@{*)
(*{1.5,-.25},*)
(*{1.5,0.25},*)
(*{-1.5,.25},*)
(*{-1.5,-.25}}*)
(*,*)
(*#+{offset,0}&/@{*)
(*{1.5,-.25},*)
(*{1.5,0.25},*)
(*{-1.5,.25},*)
(*{-1.5,-.25}}*)
(*}]]],MaxCellMeasure->0.3]*)


(* ::Input:: *)
(*solution=NDSolveValue[{eqn,\[CapitalPsi][0,x,y]==E^(-2 I y -1/20 (x^2+(y-10)^2)),DirichletCondition[\[CapitalPsi][t,x,y]==0,True]},\[CapitalPsi],{t,0,10},{x,y}\[Element]\[CapitalOmega]]*)


(* ::Input:: *)
(*AnimationVideo[DensityPlot[Abs[solution[t,x,y]]^2,{x,y}\[Element] \[CapitalOmega],PlotPoints->100,PlotRange->{0,1}],{t,0,10}]*)


(* ::Input:: *)
(*Export["~/Downloads/two-bars-slit.mp4",Out[82]]*)


(* ::Input:: *)
(*model=SystemModel["DocumentationExamples.Simulation.HybridMotor", True]*)


(* ::Input:: *)
(*SystemModel["DocumentationExamples.Simulation.HybridMotor","Documentation"]*)


(* ::Input:: *)
(*22.83+120.85+26.25+12.03+9.17*)


(* ::Input:: *)
(*Quantity[191.13`,"USDollars"]*)


(* ::Input:: *)
(*Quantity[191.13`,"USDollars"]/2*)


(* ::Input:: *)
(*SystemModelPlot[model,{"Inertia1.w","Inertia2.w"},{0,20},<|"ParameterValues"->{"Inertia2.J"->2}|>]*)


(* ::Input:: *)
(*SystemModelPlot[model,{"SpringDampner1.w"},{0,20},<|"ParameterValues"->{"Inertia2.J"->2}|>]*)


(* ::Input:: *)
(*Failure["NoParse", <|"MessageTemplate" -> "No Wolfram Language translation found.", "MessageParameters" -> <||>, "Query" -> "Extract name of components from a hybrid motor model"|>]*)


(* ::Input:: *)
(*model=SystemsConnectionsModel[{StateSpaceModel[{{{0., 1., 0.}, {0., -0.415, -0.011}, {9.8, -1.43, -0.0198}}, {{0.}, {6.27}, {9.8}}, {{1, 0, 0}}, {{0}}}, SamplingPeriod -> None, SystemsModelLabels -> {\[Delta], \[Theta], {\[Delta], \[Theta], \[Delta]}}], StateSpaceModel[{{{0.8980797727954932, 0.0094707507801128, -5.208397297676823*^-7}, {-0.33045302535996657`, 0.99421053216462, -0.0001096707218675919}, {39.37760947490485, 0.18221144583184076`, 0.9997919989625822}}, {{0.0296882515809778, 10.192020168336002`}, {6.251312631798932, 33.04476514945951}, {10.370213677599473`, -3927.961966695568}}, {{0.009490398863977468, 0.00004735375390056401, -2.604198648809009*^-9}, {-0.0016522651267998332`, 0.0099710526608231, -5.483536093379635*^-7}, {0.19688804737452426`, 0.0009110572291592037, 0.00999895999481291}}, {{0.000148441257904889, 0.05096010084168001}, {0.03125656315899466, 0.16522382574729755`}, {0.05185106838799737, -19.63980983347784}}}, SamplingPeriod -> 0.01, SystemsModelLabels -> {{\[Delta], \[Theta]}, {\[Theta], Derivative[1][\[Theta]], x}, {\[Theta], Derivative[1][\[Theta]], x}}], StateSpaceModel[{{}, {}, {}, {{1.4172001423460385`, 0.6042487212473973, 0.07924086916110415}}}, SamplingPeriod -> 0.01, SystemsModelLabels -> None], StateSpaceModel[{{}, {}, {}, {{1, -1}}}, SamplingPeriod -> 0.01, SystemsModelLabels -> None], SamplerModel[<|"DiscreteVariables" -> {Subscript[\[FormalY], 1][\[FormalT]]}, "InputVariables" -> {Subscript[\[FormalU], 1][\[FormalT]]}, "OutputVariables" -> {Subscript[\[FormalY], 1][\[FormalT]]}, "InitialStateValues" -> {}, "TemporalVariable" -> \[FormalT], "WhenEvent" -> Mod[\[FormalT], 0.01] == 0, "WhenEventAction" -> ({Subscript[\[FormalY], 1][\[FormalT]]} -> {Subscript[\[FormalU], 1][\[FormalT]]}), "StateEquations" -> {}, "OutputExpressions" -> {Subscript[\[FormalY], 1][\[FormalT]]}, "SignalCount" -> 1, "SamplingPeriod" -> 0.01, "Type" -> "Sampler", "PropertyFunction" -> Control`IOModelsDump`samplerProperty, "SummaryItems" -> {"SamplingPeriod", "SignalCount"}, "ParsedProperties" -> {"DiscreteVariables", "InputVariables", "OutputVariables", "InitialStateValues", "TemporalVariable", "WhenEvent", "WhenEventAction", "StateEquations", "OutputExpressions", "SignalCount", "SamplingPeriod", "Type", "PropertyFunction", "SummaryItems"}|>, {"InputVariables", "OutputVariables", "SamplingPeriod", "SignalCount", "TemporalVariable"}], HolderModel[<|"DiscreteVariables" -> {Subscript[\[FormalX], 1][\[FormalT]]}, "InputVariables" -> {Subscript[\[FormalU], 1][\[FormalT]]}, "OutputVariables" -> {Subscript[\[FormalY], 1][\[FormalT]]}, "InitialStateValues" -> {}, "TemporalVariable" -> \[FormalT], "WhenEvent" -> Mod[\[FormalT], 0.01] == 0, "WhenEventAction" -> ({Subscript[\[FormalX], 1][\[FormalT]]} -> {Subscript[\[FormalU], 1][\[FormalT]]}), "StateEquations" -> {}, "OutputExpressions" -> {Subscript[\[FormalX], 1][\[FormalT]]}, "SignalCount" -> 1, "SamplingPeriod" -> 0.01, "Type" -> "Hold", "PropertyFunction" -> Control`IOModelsDump`holdProperty, "Order" -> 0, "SummaryItems" -> {"Order", "SamplingPeriod", "SignalCount"}, "ParsedProperties" -> {"DiscreteVariables", "InputVariables", "OutputVariables", "InitialStateValues", "TemporalVariable", "WhenEvent", "WhenEventAction", "StateEquations", "OutputExpressions", "SignalCount", "SamplingPeriod", "Type", "PropertyFunction", "Order", "SummaryItems"}|>, {"InputVariables", "Order", "OutputVariables", "SamplingPeriod", "SignalCount", "TemporalVariable"}], SamplerModel[<|"DiscreteVariables" -> {Subscript[\[FormalY], 1][\[FormalT]]}, "InputVariables" -> {Subscript[\[FormalU], 1][\[FormalT]]}, "OutputVariables" -> {Subscript[\[FormalY], 1][\[FormalT]]}, "InitialStateValues" -> {}, "TemporalVariable" -> \[FormalT], "WhenEvent" -> Mod[\[FormalT], 0.01] == 0, "WhenEventAction" -> ({Subscript[\[FormalY], 1][\[FormalT]]} -> {Subscript[\[FormalU], 1][\[FormalT]]}), "StateEquations" -> {}, "OutputExpressions" -> {Subscript[\[FormalY], 1][\[FormalT]]}, "SignalCount" -> 1, "SamplingPeriod" -> 0.01, "Type" -> "Sampler", "PropertyFunction" -> Control`IOModelsDump`samplerProperty, "SummaryItems" -> {"SamplingPeriod", "SignalCount"}, "ParsedProperties" -> {"DiscreteVariables", "InputVariables", "OutputVariables", "InitialStateValues", "TemporalVariable", "WhenEvent", "WhenEventAction", "StateEquations", "OutputExpressions", "SignalCount", "SamplingPeriod", "Type", "PropertyFunction", "SummaryItems"}|>, {"InputVariables", "OutputVariables", "SamplingPeriod", "SignalCount", "TemporalVariable"}]}, {{5, 1} -> {4, 1}, {4, 1} -> {6, 1}, {4, 1} -> {2, 1}, {6, 1} -> {1, 1}, {1, 1} -> {7, 1}, {7, 1} -> {2, 2}, {2, 1} -> {3, 1}, {2, 2} -> {3, 2}, {2, 3} -> {3, 3}, {3, 1} -> {4, 2}}, {{5, 1}}, {{1, 1}}]*)


(* ::Input:: *)
(*response=InputOutputResponse[{model,<|1->{1\[Degree],0,0}|>},0,{t,0,10},"Data"]*)


(* ::Input:: *)
(*Plot[response["OutputResponse"],{t,0,10}]*)


(* ::Input:: *)
(*Plot[response[{"SubsystemOutputResponse",6}],{t,0,0.5},PlotPoints->150]*)


(* ::Input:: *)
(*model=SystemModel["DocumentationExamples.Control.CSTR", True]*)


(* ::Input:: *)
(*cs=LQGRegulator[model,{{{}},({*)
(* {1, 0, 0},*)
(* {0, 1, 0},*)
(* {0, 0, 1}*)
(*})},{({*)
(* {1, 0, 0},*)
(* {0, 1, 0},*)
(* {0, 0, 1}*)
(*}),({*)
(* {1}*)
(*})},"ClosedLoopSystem"]*)


(* ::Input:: *)
(*SystemModelPlot[cs,{"sys.x1"},{0,Quantity[10,"Hours"]},<|"InitialValues"->{"sys.x1"->-100}|>]*)
