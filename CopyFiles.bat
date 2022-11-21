rem @echo off

set lib=..\..\bin\Release\4TM
set Bin=..\..\bin\Release\4TM\Bin\
set thirdpart=..\..\..\..\..\thirdparty\
set rvt2016=%lib%\2016\
set rvt2017=%lib%\2017\
set rvt2018=%lib%\2018\
set rvt2019=%lib%\2019\
set rvt2020=%lib%\2020\
set rvt2021=%lib%\2021\
set rvt2022=%lib%\2022\
set rvt2023=%lib%\2023\
set destCef=%Bin%cef
set oda=%Bin%ODAessentialDLL

if exist %destCef% rd %destCef% /s /q
md %destCef%

if exist %oda% rd %oda% /s /q
md %oda%

xcopy %thirdpart%CefSharp\v106_4.5_x64                                              %destCef%                      /s /e /y
xcopy %thirdpart%CefSharp\v106_4.5_x64\icudtl.dat                                   %Bin%                          /s /e /y
xcopy %thirdpart%ODAessentialDLL                                                    %oda%                          /s /e /y
rem CopyCommonFiles

xcopy %thirdpart%DynamicProxyLibrary\Release\4XT\DynamicProxyLibrary4XT.dll 						..\..\bin\Release\CommonRevit\ /s /e /y
xcopy %thirdpart%SmartThreadPool\2.2.6.0\SmartThreadPool.dll 										..\..\bin\Release\CommonRevit\ /s /e /y
xcopy %thirdpart%netDxf\v2.0.3\netDxf.dll 															..\..\bin\Release\CommonRevit\ /s /e /y
xcopy %thirdpart%BouncyCastle\BouncyCastle.Crypto.dll				                                ..\..\bin\Release\CommonRevit\ /s /e /y
xcopy %thirdpart%HWCommonTool\Release\4XT\HWCommonTool4XT.dll 										..\..\bin\Release\CommonRevit\ /s /e /y
xcopy %thirdpart%HWHTTPClient\Release\4XT\HWHTTPClient4XT.dll 										..\..\bin\Release\CommonRevit\ /s /e /y
xcopy %thirdpart%HWRevitServerTool\Release\log4net.dll							    				..\..\bin\Release\CommonRevit\ /s /e /y
xcopy %thirdpart%HWRevitServerTool\Release\log4net.config											..\..\bin\Release\CommonRevit\ /s /e /y
xcopy %thirdpart%log4net\log4net.2.0.6\lib\net45-full\4XT\log4net4XT.dll 							..\..\bin\Release\CommonRevit\ /s /e /y
xcopy %thirdpart%Newtonsoft.Json\HWNewtonsoft.Json.dll 												..\..\bin\Release\CommonRevit\ /s /e /y
xcopy %thirdpart%Newtonsoft.Json\Newtonsoft.Json.dll 												..\..\bin\Release\CommonRevit\ /s /e /y
xcopy %thirdpart%RestSharp\RestSharp.105.2.3\lib\net45\RestSharp.dll 								..\..\bin\Release\CommonRevit\ /s /e /y
xcopy %thirdpart%Microsoft.WindowsAPICodePack\Microsoft.Vbe.Interop.dll 							..\..\bin\Release\CommonRevit\ /s /e /y
xcopy %thirdpart%Microsoft.WindowsAPICodePack\office.dll 											..\..\bin\Release\CommonRevit\ /s /e /y
xcopy %thirdpart%Microsoft.WindowsAPICodePack\stdole.dll 											..\..\bin\Release\CommonRevit\ /s /e /y
xcopy %thirdpart%Microsoft.WindowsAPICodePack\Microsoft.Dism.dll 									..\..\bin\Release\CommonRevit\ /s /e /y
xcopy %thirdpart%Microsoft.WindowsAPICodePack\Microsoft.Web.Administration.dll 						..\..\bin\Release\CommonRevit\ /s /e /y
xcopy %thirdpart%Microsoft.WindowsAPICodePack\Microsoft.Office.Interop.Word.dll 					..\..\bin\Release\CommonRevit\ /s /e /y
xcopy %thirdpart%NetServicePcap\Release\NetServicePcap.dll 											..\..\bin\Release\CommonRevit\ /s /e /y
xcopy %thirdpart%SharpPcap\v4.2.0\*.dll 									        				..\..\bin\Release\CommonRevit\ /s /e /y
xcopy %thirdpart%AsposeWords\Aspose.Words.dll                 										..\..\bin\Release\CommonRevit\ /s /e /y
xcopy %thirdpart%Aliyun\Aliyun.OSS.dll																..\..\bin\Release\CommonRevit\ /s /e /y
xcopy %thirdpart%SmartThreadPool\2.2.6.0\SmartThreadPool.dll 										..\..\bin\Release\CommonRevit\ /s /e /y
xcopy %thirdpart%CommandLineParser\CommandLine.dll 													..\..\bin\Release\CommonRevit\ /s /e /y
xcopy %thirdpart%NCode.ReparsePoints\NCode.ReparsePoints.dll 										..\..\bin\Release\CommonRevit\ /s /e /y
xcopy %thirdpart%HWCultureInfo\Release\4XT\HWCultureInfo4XT.dll                     				..\..\bin\Release\CommonRevit\ /s /e /y
xcopy %thirdpart%HW.SFS.net\NetVer4.5\*.dll															..\..\bin\Release\CommonRevit\ /s /e /y
xcopy %thirdpart%ODAReadWriteDWG\ODAessentialDLL\TD_SwigCoreMgd.dll									..\..\bin\Release\CommonRevit\ /s /e /y
xcopy %thirdpart%NetMQ\net45\*.dll 																	..\..\bin\Release\CommonRevit\ /s /e /y
xcopy %thirdpart%ODAReadWriteDWG\ODAessentialDLL\TD_SwigDbMgd.dll									..\..\bin\Release\CommonRevit\ /s /e /y
xcopy %thirdpart%SQLite\netFx45-2012-1.0.105.2\*.dll												..\..\bin\Release\CommonRevit\ /s /e /y
xcopy %thirdpart%HWGeneralTechnicalSupport\4XT\*.dll		                        				..\..\bin\Release\CommonRevit\ /s /e /y
xcopy %thirdpart%Revit.Async\net45\*.dll		                        				            ..\..\bin\Release\CommonRevit\ /s /e /y
xcopy %thirdpart%HWGeometryAlgorithm\Release\4XT\*.dll	                        				    ..\..\bin\Release\CommonRevit\ /s /e /y

rem 2016
xcopy  %thirdpart%HWCommonFunction\Release\4XT\2016\HWCommonFunction4XT.dll			                    %rvt2016% /s /e /y
xcopy  %thirdpart%HWTransCommon\Release\4XT\2016\HWTransCommon4XT.dll 				                    %rvt2016% /s /e /y
xcopy  %thirdpart%HW.NetHeight\Release\4XT\2016\HW.NetHeight4XT.dll 				                    %rvt2016% /s /e /y
xcopy  %thirdpart%Revit\2016\RevitAddInUtility.dll 									                    %rvt2016% /y
xcopy  %thirdpart%Revit\2016\AdWindows.dll 											                    %rvt2016% /y
xcopy  %thirdpart%Revit\2016\RS.Enterprise.Common.ClientServer.DataContract.dll 	                    %rvt2016% /y
xcopy  %thirdpart%Revit\2016\RS.Enterprise.Common.ClientServer.Helper.dll 			                    %rvt2016% /y
xcopy  %thirdpart%BIMangle\2016\*.dll																	%rvt2016% /s /e /y
xcopy  %thirdpart%HWSetRevitData\2016\HWSetRevitData.exe                                                %rvt2016% /s /e /y

rem 2017
xcopy  %thirdpart%HWCommonFunction\Release\4XT\2017\HWCommonFunction4XT.dll			                    %rvt2017% /s /e /y
xcopy  %thirdpart%HWTransCommon\Release\4XT\2017\HWTransCommon4XT.dll 				                    %rvt2017% /s /e /y
xcopy  %thirdpart%HW.NetHeight\Release\4XT\2017\HW.NetHeight4XT.dll 				                    %rvt2017% /s /e /y
xcopy  %thirdpart%Revit\2017\RevitAddInUtility.dll 									                    %rvt2017% /y
xcopy  %thirdpart%Revit\2017\AdWindows.dll 											                    %rvt2017% /y
xcopy  %thirdpart%Revit\2017\RS.Enterprise.Common.ClientServer.DataContract.dll 	                    %rvt2017% /y
xcopy  %thirdpart%Revit\2017\RS.Enterprise.Common.ClientServer.Helper.dll 			                    %rvt2017% /y
xcopy  %thirdpart%BIMangle\2017\*.dll																	%rvt2017% /s /e /y
xcopy  %thirdpart%HWSetRevitData\2017\HWSetRevitData.exe                                                %rvt2017% /s /e /y

rem 2018                    
xcopy  %thirdpart%HWCommonFunction\Release\4XT\2018\HWCommonFunction4XT.dll			                    %rvt2018% /s /e /y
xcopy  %thirdpart%HWTransCommon\Release\4XT\2018\HWTransCommon4XT.dll 				                    %rvt2018% /s /e /y
xcopy  %thirdpart%HW.NetHeight\Release\4XT\2018\HW.NetHeight4XT.dll 				                    %rvt2018% /s /e /y
xcopy  %thirdpart%Revit\2018\RevitAddInUtility.dll 									                    %rvt2018% /y
xcopy  %thirdpart%Revit\2018\AdWindows.dll 											                    %rvt2018% /y
xcopy  %thirdpart%Revit\2018\RS.Enterprise.Common.ClientServer.DataContract.dll 	                    %rvt2018% /y
xcopy  %thirdpart%Revit\2018\RS.Enterprise.Common.ClientServer.Helper.dll 			                    %rvt2018% /y
xcopy  %thirdpart%BIMangle\2018\*.dll																	%rvt2018% /s /e /y
xcopy  %thirdpart%HWSetRevitData\2018\HWSetRevitData.exe                                                %rvt2018% /s /e /y

rem 2019                    
xcopy  %thirdpart%HWCommonFunction\Release\4XT\2019\HWCommonFunction4XT.dll			                    %rvt2019% /s /e /y
xcopy  %thirdpart%HWTransCommon\Release\4XT\2019\HWTransCommon4XT.dll 				                    %rvt2019% /s /e /y
xcopy  %thirdpart%HW.NetHeight\Release\4XT\2019\HW.NetHeight4XT.dll 				                    %rvt2019% /s /e /y
xcopy  %thirdpart%Revit\2019\RevitAddInUtility.dll 									                    %rvt2019% /y
xcopy  %thirdpart%Revit\2019\AdWindows.dll 											                    %rvt2019% /y
xcopy  %thirdpart%Revit\2019\RS.Enterprise.Common.ClientServer.DataContract.dll 	                    %rvt2019% /y
xcopy  %thirdpart%Revit\2019\RS.Enterprise.Common.ClientServer.Helper.dll 			                    %rvt2019% /y
xcopy  %thirdpart%BIMangle\2019\*.dll																	%rvt2019% /s /e /y
xcopy  %thirdpart%HWSetRevitData\2019\HWSetRevitData.exe                                                %rvt2019% /s /e /y

rem 2020                    
xcopy  %thirdpart%HWCommonFunction\Release\4XT\2020\HWCommonFunction4XT.dll			                    %rvt2020% /s /e /y
xcopy  %thirdpart%HWTransCommon\Release\4XT\2020\HWTransCommon4XT.dll 				                    %rvt2020% /s /e /y
xcopy  %thirdpart%HW.NetHeight\Release\4XT\2020\HW.NetHeight4XT.dll 				                    %rvt2020% /s /e /y
xcopy  %thirdpart%Revit\2020\RevitAddInUtility.dll 									                    %rvt2020% /y
xcopy  %thirdpart%Revit\2020\AdWindows.dll 											                    %rvt2020% /y
xcopy  %thirdpart%Revit\2020\RS.Enterprise.Common.ClientServer.DataContract.dll 	                    %rvt2020% /y
xcopy  %thirdpart%Revit\2020\RS.Enterprise.Common.ClientServer.Helper.dll 			                    %rvt2020% /y
xcopy  %thirdpart%BIMangle\2020\*.dll																	%rvt2020% /s /e /y
xcopy  %thirdpart%HWSetRevitData\2020\HWSetRevitData.exe                                                %rvt2020% /s /e /y

rem 2021                    
xcopy  %thirdpart%HWCommonFunction\Release\4XT\2021\HWCommonFunction4XT.dll			                    %rvt2021% /s /e /y
xcopy  %thirdpart%HWTransCommon\Release\4XT\2021\HWTransCommon4XT.dll 				                    %rvt2021% /s /e /y
xcopy  %thirdpart%HW.NetHeight\Release\4XT\2021\HW.NetHeight4XT.dll 				                    %rvt2021% /s /e /y
xcopy  %thirdpart%Revit\2021\RevitAddInUtility.dll 									                    %rvt2021% /y
xcopy  %thirdpart%Revit\2021\AdWindows.dll 											                    %rvt2021% /y
xcopy  %thirdpart%Revit\2021\RS.Enterprise.Common.ClientServer.DataContract.dll 	                    %rvt2021% /y
xcopy  %thirdpart%Revit\2021\RS.Enterprise.Common.ClientServer.Helper.dll 			                    %rvt2021% /y
xcopy  %thirdpart%BIMangle\2021\*.dll																	%rvt2021% /s /e /y
xcopy  %thirdpart%HWSetRevitData\2021\HWSetRevitData.exe                                                %rvt2021% /s /e /y

rem 2022                    
xcopy  %thirdpart%HWCommonFunction\Release\4XT\2022\HWCommonFunction4XT.dll			                    %rvt2022% /s /e /y
xcopy  %thirdpart%HWTransCommon\Release\4XT\2022\HWTransCommon4XT.dll 				                    %rvt2022% /s /e /y
xcopy  %thirdpart%HW.NetHeight\Release\4XT\2022\HW.NetHeight4XT.dll 				                    %rvt2022% /s /e /y
xcopy  %thirdpart%Revit\2022\RevitAddInUtility.dll 									                    %rvt2022% /y
xcopy  %thirdpart%Revit\2022\AdWindows.dll 											                    %rvt2022% /y
xcopy  %thirdpart%Revit\2022\RS.Enterprise.Common.ClientServer.DataContract.dll 	                    %rvt2022% /y
xcopy  %thirdpart%Revit\2022\RS.Enterprise.Common.ClientServer.Helper.dll 			                    %rvt2022% /y
xcopy  %thirdpart%BIMangle\2022\*.dll																	%rvt2022% /s /e /y
xcopy  %thirdpart%HWSetRevitData\2022\HWSetRevitData.exe                                                %rvt2022% /s /e /y

rem 2023                    
xcopy  %thirdpart%HWCommonFunction\Release\4XT\2023\HWCommonFunction4XT.dll			                    %rvt2023% /s /e /y
xcopy  %thirdpart%HWTransCommon\Release\4XT\2023\HWTransCommon4XT.dll 				                    %rvt2023% /s /e /y
xcopy  %thirdpart%HW.NetHeight\Release\4XT\2023\HW.NetHeight4XT.dll 				                    %rvt2023% /s /e /y
xcopy  %thirdpart%Revit\2023\RevitAddInUtility.dll 									                    %rvt2023% /y
xcopy  %thirdpart%Revit\2023\AdWindows.dll 											                    %rvt2023% /y
xcopy  %thirdpart%Revit\2023\RS.Enterprise.Common.ClientServer.DataContract.dll 	                    %rvt2023% /y
xcopy  %thirdpart%Revit\2023\RS.Enterprise.Common.ClientServer.Helper.dll 			                    %rvt2023% /y
xcopy  %thirdpart%BIMangle\2023\*.dll																	%rvt2023% /s /e /y
xcopy  %thirdpart%HWSetRevitData\2023\HWSetRevitData.exe                                                %rvt2023% /s /e /y

rem Bin   
xcopy  %thirdpart%DevExpress\*.dll										                                %Bin% /s /e /y              
xcopy  %thirdpart%HW.SFS.net\NetVer4.5\*.dll										                    %Bin% /s /e /y
xcopy  %thirdpart%HW.SFS.Service\NetVer4.5\HW.SFS.Service.exe						                    %Bin% /s /e /y
xcopy  %thirdpart%Microsoft.Deployment\Microsoft.Deployment.WindowsInstaller.dll	                    %Bin% /s /e /y
rem xcopy  %thirdpart%dokan\dokan1.dll													                    %Bin% /s /e /y
xcopy  %thirdpart%NCode.ReparsePoints\NCode.ReparsePoints.dll						                    %Bin% /s /e /y
xcopy  %thirdpart%BouncyCastle\BouncyCastle.Crypto.dll				                                    %Bin% /s /e /y
xcopy  %thirdpart%HWCultureInfo\Release\4XT\HWCultureInfo4XT.dll                                        %Bin% /s /e /y
xcopy  %thirdpart%HWCommonTool\Release\4XT\HWCommonTool4XT.dll 						                    %Bin% /s /e /y
xcopy  %thirdpart%HWHTTPClient\Release\4XT\HWHTTPClient4XT.dll 						                    %Bin% /s /e /y
xcopy  %thirdpart%HWInstallProcess\Release\4XT\HWInstallProcess4XT.dll 				                    %Bin% /s /e /y
xcopy  %thirdpart%RestSharp\RestSharp.105.2.3\lib\net45\RestSharp.dll 				                    %Bin% /s /e /y
xcopy  %thirdpart%log4net\log4net.2.0.6\lib\net45-full\4XT\log4net4XT.dll 			                    %Bin% /s /e /y
xcopy  %thirdpart%NamedPipeWrapper\Release\4XT\NamedPipeWrapper4XT.dll 				                    %Bin% /s /e /y
xcopy  %thirdpart%Microsoft.WindowsAPICodePack\Microsoft.Dism.dll 					                    %Bin% /s /e /y
xcopy  %thirdpart%Microsoft.WindowsAPICodePack\Microsoft.Web.Administration.dll 	                    %Bin% /s /e /y
xcopy  %thirdpart%NetServicePcap\Release\NetServicePcap.dll 						                    %Bin% /s /e /y
xcopy  %thirdpart%SharpPcap\v4.2.0\*.dll 								                                %Bin% /s /e /y
xcopy  %thirdpart%Newtonsoft.Json\HWNewtonsoft.Json.dll 							                    %Bin% /s /e /y
xcopy  %thirdpart%SmartThreadPool\2.2.6.0\SmartThreadPool.dll 						                    %Bin% /s /e /y
xcopy  %thirdpart%Aliyun\Aliyun.OSS.dll												                    %Bin% /s /e /y
xcopy  %thirdpart%HWRevitServerTool\Release\log4net.dll							                        %Bin% /s /e /y
xcopy  %thirdpart%HWRevitServerTool\Release\log4net.config                                              %Bin% /s /e /y
xcopy  %thirdpart%Castle.Core\lib\net45\Castle.Core.dll                                                 %Bin% /s /e /y
xcopy  %thirdpart%CommandLineParser\CommandLine.dll 								                    %Bin% /s /e /y
xcopy  %thirdpart%NCode.ReparsePoints\NCode.ReparsePoints.dll 						                    %Bin% /s /e /y
xcopy  %thirdpart%NetMQ\net45\*.dll 												                    %Bin% /s /e /y
xcopy  %thirdpart%NetMQ\net45\*.config												                    %Bin% /s /e /y
xcopy  %thirdpart%HtmlAgilityPack.1.11.36\lib\Net45\*.dll							                    %Bin% /s /e /y
xcopy  %thirdpart%NPOI.2.5.4\lib\net45\*dll 										                    %Bin% /s /e /y
xcopy  %thirdpart%SharpZipLib.1.3.1\lib\net45\*.dll 								                    %Bin% /s /e /y
xcopy  %thirdpart%FreeImage\*.dll 								                                        %Bin% /s /e /y
xcopy  %thirdpart%WpfAnimatedGif\lib\net40\*.dll                                                        %Bin% /s /e /y
xcopy  %thirdpart%HWDWGLight\Release\*.dll 											                    %Bin% /s /e /y
xcopy  %thirdpart%HWDWGLight\Release\*.exe 											                    %Bin% /s /e /y
xcopy  %thirdpart%HWDWGLight\Release\*.config 										                    %Bin% /s /e /y
xcopy  %thirdpart%HWDWGLight\Release\Fonts\*.*										                    %Bin%\Fonts\ /s /e /y

rem CopyCommon
xcopy ..\..\bin\Release\CommonRevit\*.*  ..\..\bin\Release\4TM\2016\ /s /e /y
xcopy ..\..\bin\Release\CommonRevit\*.*  ..\..\bin\Release\4TM\2017\ /s /e /y
xcopy ..\..\bin\Release\CommonRevit\*.*  ..\..\bin\Release\4TM\2018\ /s /e /y
xcopy ..\..\bin\Release\CommonRevit\*.*  ..\..\bin\Release\4TM\2019\ /s /e /y
xcopy ..\..\bin\Release\CommonRevit\*.*  ..\..\bin\Release\4TM\2020\ /s /e /y
xcopy ..\..\bin\Release\CommonRevit\*.*  ..\..\bin\Release\4TM\2021\ /s /e /y
xcopy ..\..\bin\Release\CommonRevit\*.*  ..\..\bin\Release\4TM\2022\ /s /e /y
xcopy ..\..\bin\Release\CommonRevit\*.*  ..\..\bin\Release\4TM\2023\ /s /e /y
rem pause

rem ????Common
rmdir /s /q  ..\..\bin\Release\CommonRevit

rem Copy2Root
xcopy ..\..\..\..\..\thirdparty\HWClientInstall\Update\PC\Release\HWUpdate.exe  ..\..\bin\Release\4TM\ /s /e /y
xcopy ..\..\..\..\..\thirdparty\HWProgressBar\Release\HWProgressBar.exe     ..\..\bin\Release\4TM\ /s /e /y
