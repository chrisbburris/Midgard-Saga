/*
 * README
 * 
 * The following code is for a video game called Midgard Saga, 
 * which was made by a student team at The Guildhall of Southern Methodist University.
 * 
 * This code's purpose is for the portfolio website of Chris Burris, one of the students
 * who worked on the game.
 * 
 * You can visit Chris Burris' website at: chrisbburris.com
 * 
 */

class BS_GFxHUD_PauseMenu extends GFxMoviePlayer;

struct PauseMenuMovieClips
{
	var GFxObject PauseMenuMC;
	var GFxObject PauseMC;
	var GFxObject ControlsMC;
	var GFxObject OptionsMC;
	var GFxObject QuitMC;
	var GFxObject PauseTextTF;
	var GFxObject LevelNameTF;
	var GFxObject LevelObjectiveTF;
	var GFxObject ResumeButtonMC;
	var GFxObject MainMenuButtonMC;
	var GFxObject BackToMainMenuTextTF;
	var GFxObject AreYouSureTextTF;
	var GFxObject YesButtonMC;
	var GFxObject NoButtonMC;
	var GFxObject ControlsButtonMC;
	var GFxObject ControlsTextTF;
	var GFxObject BackButtonMC;
	var GFxObject OptionsButtonMC;
	var GFxObject OptionsBackButtonMC;
	var GFxObject RestartButtonMC;
	var GFxObject MouseCursorMC;
	var GFxObject ClickButtonsTextTF;
	var GFxObject DeselectUnitTextTF;
	var GFxObject EndTurnTextTF;
	var GFxObject KeyboardTextTF;
	var GFxObject LeftMouseTextTF;
	var GFxObject MouseEdgeOfScreenTextTF;
	var GFxObject MouseTextTF;
	var GFxObject MoveAndAttackTextTF;
	var GFxObject MoveCameraKeyboardTextTF;
	var GFxObject MoveCameraMouseTextTF;
	var GFxObject MovePreviewTextTF;
	var GFxObject PauseF9TextTF;
	var GFxObject ProgressDialougeTextTF;
	var GFxObject RightMouseTextTF;
	var GFxObject ScrollWheelTextTF;
	var GFxObject SelectPlayerUnitsTextTF;
	var GFxObject SelectUnitsTextTF;
	var GFxObject SkipCutscenesTextTF;
	var GFxObject ToggleHealthBarsTextTF;
	var GFxObject UseActiveAbilitiesKeyboardTextTF;
	var GFxObject UseActiveAbilitiesMouseTextTF;
	var GFxObject ZoomCameraTextTF;

	var GFxObject LeftClickMouseControlsMC;
	var GFxObject RightClickMouseControlsMC;
	var GFxObject LeftClickOptionButtonMC;
	var GFxObject RightClickOptionButtonMC;
	var GFxObject LeftClickOptionButtonTF;
	var GFxObject RightClickOptionButtonTF;
	var GFxObject ClickButtonsTextRightClickTF;
	var GFxObject SelectUnitsTextRightClicktTF;
	var GFxObject ZoomCameraTextRightClickTF;
	var GFxObject MoveAndAttackTextRightClickTF;
	var GFxObject UseActiveAbilitiesMouseTextRightClickTF;
	var GFxObject MoveCameraMouseTextRightClickTF;
};

var PauseMenuMovieClips PauseMenu;

var BS_TurnManager TurnManager;
var BS_GFxHUDMoviePlayer HUD;

var BS_Localization TheLocalizer;

var bool GoToMainMenu;

var SoundCue MenuClickSound;

var localized string ResumeLevelButtonName;
var localized string MainMenuButtonName;
var localized string YesToMainMenuButtonName;
var localized string NoToMainMenuButtonName;
var localized string PauseText;
var localized string BackToMainMenuText;
var localized string AreYouSureText;
var localized string ControlsButtonName;
var localized string BackButtonName;
var localized string ControlsText;
var localized string RestartThisLevelText;
var localized string OptionsButtonName;
var localized string RestartButtonName;
var localized string ClickButtonsText;
var localized string DeselectUnitText;
var localized string EndTurnText;
var localized string KeyboardText;
var localized string LeftMouseText;
var localized string MouseEdgeOfScreenText;
var localized string MouseText;
var localized string MoveAndAttackText;
var localized string MoveCameraKeyboardText;
var localized string MoveCameraMouseText;
var localized string MovePreviewText;
var localized string PauseF9Text;
var localized string ProgressDialougeText;
var localized string RightMouseText;
var localized string ScrollWheelText;
var localized string SelectPlayerUnitsText;
var localized string SelectUnitsText;
var localized string SkipCutscenesText;
var localized string ToggleHealthBarsText;
var localized string UseActiveAbilitiesKeyboardText;
var localized string UseActiveAbilitiesMouseText;
var localized string ZoomCameraText;
var localized string Level1Name;
var localized string Level1Objective;
var localized string Level2Name;
var localized string Level2Objective;
var localized string Level3Name;
var localized string Level3Objective;
var localized string Level4Name;
var localized string Level4Objective;
var localized string Level5Name;
var localized string Level5Objective;
var localized string NormalText;
var localized string ComplexText;

var bool bPauseMenuShowing;


function Init( optional LocalPlayer LocPlay )
{
	local BS_GameInfo BSGI;
	BSGI = BS_GameInfo( class'WorldInfo'.static.GetWorldInfo().Game );
	TheLocalizer = BSGI.TheLocalizer;
	Start();
	Advance( 0.0f );

	PauseMenu.PauseMenuMC                             = GetVariableObject( "_root.PauseMenu" );
	PauseMenu.PauseMC                                 = GetVariableObject( "_root.PauseMenu.Pause" );
	PauseMenu.ControlsMC                              = GetVariableObject( "_root.PauseMenu.Controls" );
	PauseMenu.OptionsMC                               = GetVariableObject( "_root.PauseMenu.Options" );
	PauseMenu.QuitMC                                  = GetVariableObject( "_root.PauseMenu.Quit" );
	PauseMenu.PauseTextTF                             = GetVariableObject( "_root.PauseMenu.Pause.PauseText.textField" );
	PauseMenu.LevelNameTF                             = GetVariableObject( "_root.PauseMenu.Pause.LevelName.textField" );
	PauseMenu.LevelObjectiveTF                        = GetVariableObject( "_root.PauseMenu.Pause.LevelObjective.textField" );
	PauseMenu.ResumeButtonMC                          = GetVariableObject( "_root.PauseMenu.Pause.ResumeLevelButton" );
	PauseMenu.MainMenuButtonMC                        = GetVariableObject( "_root.PauseMenu.Pause.MainMenuButton" );
	PauseMenu.BackToMainMenuTextTF                    = GetVariableObject( "_root.PauseMenu.Quit.BackToMainMenuText.textField" );
	PauseMenu.AreYouSureTextTF                        = GetVariableObject( "_root.PauseMenu.Quit.AreYouSureText.textField" );
	PauseMenu.YesButtonMC                             = GetVariableObject( "_root.PauseMenu.Quit.YesToMainMenuButton" );
	PauseMenu.NoButtonMC                              = GetVariableObject( "_root.PauseMenu.Quit.NoToMainMenuButton" );
	PauseMenu.ControlsButtonMC                        = GetVariableObject( "_root.PauseMenu.Pause.ControlsButton" );
	PauseMenu.ControlsTextTF                          = GetVariableObject( "_root.PauseMenu.Controls.ControlsText.textField" );
	PauseMenu.BackButtonMC                            = GetVariableObject( "_root.PauseMenu.Controls.BackButton" );
	PauseMenu.OptionsButtonMC                         = GetVariableObject( "_root.PauseMenu.Pause.OptionsButton" );
	PauseMenu.OptionsBackButtonMC                     = GetVariableObject( "_root.PauseMenu.Options.OptionsBackButton");
	PauseMenu.RestartButtonMC                         = GetVariableObject( "_root.PauseMenu.Pause.RestartButton" );
	PauseMenu.MouseCursorMC                           = GetVariableObject( "_root.mCursor" );
	PauseMenu.ClickButtonsTextTF                      = GetVariableObject( "_root.PauseMenu.Controls.LeftClickMouseControls.ClickButtonsText.textField" );
	PauseMenu.DeselectUnitTextTF                      = GetVariableObject( "_root.PauseMenu.Controls.DeselectUnitText.textField" );
	PauseMenu.EndTurnTextTF                           = GetVariableObject( "_root.PauseMenu.Controls.EndTurnText.textField" );
	PauseMenu.KeyboardTextTF                          = GetVariableObject( "_root.PauseMenu.Controls.KeyboardText.textField" );
	PauseMenu.LeftMouseTextTF                         = GetVariableObject( "_root.PauseMenu.Controls.LeftMouseText.textField" );
	PauseMenu.MouseEdgeOfScreenTextTF                 = GetVariableObject( "_root.PauseMenu.Controls.MouseEdgeOfScreenText.textField" );
	PauseMenu.MouseTextTF                             = GetVariableObject( "_root.PauseMenu.Controls.MouseText.textField" );
	PauseMenu.MoveAndAttackTextTF                     = GetVariableObject( "_root.PauseMenu.Controls.LeftClickMouseControls.MoveAndAttackText.textField" );
	PauseMenu.MoveCameraKeyboardTextTF                = GetVariableObject( "_root.PauseMenu.Controls.MoveCameraKeyboardText.textField" );
	PauseMenu.MoveCameraMouseTextTF                   = GetVariableObject( "_root.PauseMenu.Controls.LeftClickMouseControls.MoveCameraMouseText.textField" );
	PauseMenu.MovePreviewTextTF                       = GetVariableObject( "_root.PauseMenu.Controls.MovePreviewText.textField" );
	PauseMenu.PauseF9TextTF                           = GetVariableObject( "_root.PauseMenu.Controls.PauseF9Text.textField" );
	PauseMenu.ProgressDialougeTextTF                  = GetVariableObject( "_root.PauseMenu.Controls.ProgressDialogueText.textField" );
	PauseMenu.RightMouseTextTF                        = GetVariableObject( "_root.PauseMenu.Controls.RightMouseText.textField" );
	PauseMenu.ScrollWheelTextTF                       = GetVariableObject( "_root.PauseMenu.Controls.ScrollWheelText.textField" );
	PauseMenu.SelectPlayerUnitsTextTF                 = GetVariableObject( "_root.PauseMenu.Controls.SelectPlayerUnitsText.textField" );
	PauseMenu.SelectUnitsTextTF				          = GetVariableObject( "_root.PauseMenu.Controls.LeftClickMouseControls.SelectUnitsText.textField" );
	PauseMenu.SkipCutscenesTextTF			          = GetVariableObject( "_root.PauseMenu.Controls.SkipCutscenesText.textField" );
	PauseMenu.ToggleHealthBarsTextTF		          = GetVariableObject( "_root.PauseMenu.Controls.ToggleHealthBarsText.textField" );
	PauseMenu.UseActiveAbilitiesKeyboardTextTF        = GetVariableObject( "_root.PauseMenu.Controls.UseActiveAbilitiesKeyboardText.textField" );
	PauseMenu.UseActiveAbilitiesMouseTextTF	          = GetVariableObject( "_root.PauseMenu.Controls.LeftClickMouseControls.UseActiveAbilitiesMouseText.textField" );
	PauseMenu.ZoomCameraTextTF                        = GetVariableObject( "_root.PauseMenu.Controls.LeftClickMouseControls.ZoomCameraText.textField" );

	PauseMenu.LeftClickMouseControlsMC                = GetVariableObject( "_root.PauseMenu.Controls.LeftClickMouseControls" );
	PauseMenu.RightClickMouseControlsMC               = GetVariableObject( "_root.PauseMenu.Controls.RightClickMouseControls" );
	PauseMenu.LeftClickOptionButtonMC 				  = GetVariableObject( "_root.PauseMenu.Controls.LeftClickOptionButton" );
	PauseMenu.RightClickOptionButtonMC 			      = GetVariableObject( "_root.PauseMenu.Controls.RightClickOptionButton" );
	PauseMenu.LeftClickOptionButtonTF 				  = GetVariableObject( "_root.PauseMenu.Controls.LeftClickOptionButton.textField" );
	PauseMenu.RightClickOptionButtonTF 			      = GetVariableObject( "_root.PauseMenu.Controls.RightClickOptionButton.textField" );
	
	PauseMenu.ClickButtonsTextRightClickTF 			  = GetVariableObject( "_root.PauseMenu.Controls.RightClickMouseControls.ClickButtonsText.textField" );
	PauseMenu.SelectUnitsTextRightClicktTF			  = GetVariableObject( "_root.PauseMenu.Controls.RightClickMouseControls.SelectUnitsText.textField" );
	PauseMenu.ZoomCameraTextRightClickTF			  = GetVariableObject( "_root.PauseMenu.Controls.RightClickMouseControls.ZoomCameraText.textField" );
	PauseMenu.MoveAndAttackTextRightClickTF 		  = GetVariableObject( "_root.PauseMenu.Controls.RightClickMouseControls.MoveAndAttackText.textField" );
	PauseMenu.UseActiveAbilitiesMouseTextRightClickTF = GetVariableObject( "_root.PauseMenu.Controls.RightClickMouseControls.UseActiveAbilitiesMouseText.textField" );
	PauseMenu.MoveCameraMouseTextRightClickTF 		  = GetVariableObject( "_root.PauseMenu.Controls.RightClickMouseControls.MoveCameraMouseText.textField" );

	AutosizeTextFont( PauseMenu.PauseTextTF, TheLocalizer.GetLocalizedString( PauseText ) );
	AutosizeTextFont( PauseMenu.BackToMainMenuTextTF, TheLocalizer.GetLocalizedString( BackToMainMenuText ) );
	AutosizeTextFont( PauseMenu.AreYouSureTextTF, TheLocalizer.GetLocalizedString( AreYouSureText ) );
	AutosizeTextFont( PauseMenu.PauseTextTF, TheLocalizer.GetLocalizedString( PauseText ) );
	AutosizeTextFont( PauseMenu.BackToMainMenuTextTF, TheLocalizer.GetLocalizedString( BackToMainMenuText ) );
	AutosizeTextFont( PauseMenu.AreYouSureTextTF, TheLocalizer.GetLocalizedString( AreYouSureText ) );
	AutosizeTextFont( PauseMenu.PauseTextTF, TheLocalizer.GetLocalizedString( PauseText ) );
	AutosizeTextFont( PauseMenu.BackToMainMenuTextTF, TheLocalizer.GetLocalizedString( BackToMainMenuText ) );
	AutosizeTextFont( PauseMenu.AreYouSureTextTF, TheLocalizer.GetLocalizedString( AreYouSureText ) );
	AutosizeTextFont( PauseMenu.ControlsTextTF, TheLocalizer.GetLocalizedString( ControlsText ) );
	AutosizeTextFont( PauseMenu.ClickButtonsTextTF, TheLocalizer.GetLocalizedString( ClickButtonsText ) );              
	AutosizeTextFont( PauseMenu.DeselectUnitTextTF, TheLocalizer.GetLocalizedString( DeselectUnitText ) );               
	AutosizeTextFont( PauseMenu.EndTurnTextTF, TheLocalizer.GetLocalizedString( EndTurnText ) );                   
	AutosizeTextFont( PauseMenu.KeyboardTextTF, TheLocalizer.GetLocalizedString( KeyboardText ) );                         
	AutosizeTextFont( PauseMenu.MouseTextTF, TheLocalizer.GetLocalizedString( MouseText ) );                      
	AutosizeTextFont( PauseMenu.MoveAndAttackTextTF, TheLocalizer.GetLocalizedString( MoveAndAttackText ) );              
	AutosizeTextFont( PauseMenu.MoveCameraKeyboardTextTF, TheLocalizer.GetLocalizedString( MoveCameraKeyboardText ) );         
	AutosizeTextFont( PauseMenu.MoveCameraMouseTextTF, TheLocalizer.GetLocalizedString( MoveCameraMouseText ) );            
	AutosizeTextFont( PauseMenu.PauseF9TextTF, TheLocalizer.GetLocalizedString( PauseF9Text ), 2 );                    
	AutosizeTextFont( PauseMenu.ProgressDialougeTextTF, TheLocalizer.GetLocalizedString( ProgressDialougeText ) );           
	AutosizeTextFont( PauseMenu.SelectPlayerUnitsTextTF, TheLocalizer.GetLocalizedString( SelectPlayerUnitsText ) );          
	AutosizeTextFont( PauseMenu.SelectUnitsTextTF, TheLocalizer.GetLocalizedString( SelectUnitsText ) ); 			
	AutosizeTextFont( PauseMenu.SkipCutscenesTextTF, TheLocalizer.GetLocalizedString( SkipCutscenesText ) ); 				
	AutosizeTextFont( PauseMenu.ToggleHealthBarsTextTF, TheLocalizer.GetLocalizedString( ToggleHealthBarsText ) ); 			
	AutosizeTextFont( PauseMenu.UseActiveAbilitiesKeyboardTextTF, TheLocalizer.GetLocalizedString( UseActiveAbilitiesKeyboardText ) ); 
	AutosizeTextFont( PauseMenu.UseActiveAbilitiesMouseTextTF, TheLocalizer.GetLocalizedString( UseActiveAbilitiesMouseText ) ); 	
	AutosizeTextFont( PauseMenu.ZoomCameraTextTF, TheLocalizer.GetLocalizedString( ZoomCameraText ) );

	AutosizeTextFont( PauseMenu.ClickButtonsTextRightClickTF , TheLocalizer.GetLocalizedString( ClickButtonsText ) );
	AutosizeTextFont( PauseMenu.SelectUnitsTextRightClicktTF, TheLocalizer.GetLocalizedString( SelectUnitsText ) );
	AutosizeTextFont( PauseMenu.ZoomCameraTextRightClickTF, TheLocalizer.GetLocalizedString( ZoomCameraText ) );
	AutosizeTextFont( PauseMenu.MoveAndAttackTextRightClickTF, TheLocalizer.GetLocalizedString( MoveAndAttackText ) );
	AutosizeTextFont( PauseMenu.UseActiveAbilitiesMouseTextRightClickTF, TheLocalizer.GetLocalizedString( UseActiveAbilitiesMouseText ) );
	AutosizeTextFont( PauseMenu.MoveCameraMouseTextRightClickTF, TheLocalizer.GetLocalizedString( MoveCameraMouseText ) );

	AutosizeTextFont( PauseMenu.LeftClickOptionButtonTF, TheLocalizer.GetLocalizedString( ComplexText ) );
	AutosizeTextFont( PauseMenu.RightClickOptionButtonTF, TheLocalizer.GetLocalizedString( NormalText ) );

	SetLevelNameAndObjective();
	
	if( !BSGI.SaveSettings.bTheRightWay )
	{
		DisableButton( PauseMenu.RightClickOptionButtonMC );
		PauseMenu.LeftClickMouseControlsMC.SetVisible( false );
	}
	else
	{
		DisableButton( PauseMenu.LeftClickOptionButtonMC );
		PauseMenu.RightClickMouseControlsMC.SetVisible( false );
	}

	PauseMenu.ControlsMC.SetVisible( false );
	PauseMenu.OptionsMC.SetVisible( false );
	PauseMenu.QuitMC.SetVisible( false );
	PauseMenu.MouseCursorMC.SetVisible( false );
	PauseMenu.OptionsButtonMC.SetVisible( false );
	PauseMenu.PauseMenuMC.SetVisible( false );
	bPauseMenuShowing = false;

	super.Init( LocPlay );
}


event bool WidgetInitialized( name WidgetName, name WidgetPath, GFxObject Widget )
{
	local GFxCLIKWidget tempCLIKWidget;
	local bool bWasHandled;
	bWasHandled = false;
	
	switch( WidgetName )
	{
		case( 'ResumeLevelButton' ):
			Widget.SetString( "label", TheLocalizer.GetLocalizedString( ResumeLevelButtonName ) );
			tempCLIKWidget = GFxCLIKWidget( Widget );
			tempCLIKWidget.AddEventListener( 'CLIK_buttonPress', ResumeLevelButtonClicked );
			bWasHandled = true;
			break;
		case( 'MainMenuButton' ):
			Widget.SetString( "label", TheLocalizer.GetLocalizedString( MainMenuButtonName ) );
			tempCLIKWidget = GFxCLIKWidget( Widget );
			tempCLIKWidget.AddEventListener( 'CLIK_buttonPress', MainMenuButtonClicked );
			bWasHandled = true;
			break;
		case( 'YesToMainMenuButton' ):
			Widget.SetString( "label", TheLocalizer.GetLocalizedString( YesToMainMenuButtonName ) );
			tempCLIKWidget = GFxCLIKWidget( Widget );
			tempCLIKWidget.AddEventListener( 'CLIK_buttonPress', YesButtonClicked );
			bWasHandled = true;
			break;
		case( 'NoToMainMenuButton' ):
			Widget.SetString( "label", TheLocalizer.GetLocalizedString( NoToMainMenuButtonName ) );
			tempCLIKWidget = GFxCLIKWidget( Widget );
			tempCLIKWidget.AddEventListener( 'CLIK_buttonPress', NoButtonClicked );
			bWasHandled = true;
			break;
		case( 'ControlsButton' ):
			Widget.SetString( "label", TheLocalizer.GetLocalizedString( ControlsButtonName ) );
			tempCLIKWidget = GFxCLIKWidget( Widget );
			tempCLIKWidget.AddEventListener( 'CLIK_buttonPress', ControlsButtonClicked );
			bWasHandled = true;
			break;
		case( 'BackButton' ):
			Widget.SetString( "label", TheLocalizer.GetLocalizedString( BackButtonName ) );
			tempCLIKWidget = GFxCLIKWidget( Widget );
			tempCLIKWidget.AddEventListener( 'CLIK_buttonPress', BackButtonClicked );
			bWasHandled = true;
			break;
		case( 'OptionsButton' ):
			Widget.SetString( "label", TheLocalizer.GetLocalizedString( OptionsButtonName ) );
			tempCLIKWidget = GFxCLIKWidget( Widget );
			tempCLIKWidget.AddEventListener( 'CLIK_buttonPress', OptionsButtonClicked );
			bWasHandled = true;
			break;
		case( 'OptionsBackButton' ):
			Widget.SetString( "label", TheLocalizer.GetLocalizedString( BackButtonName ) );
			tempCLIKWidget = GFxCLIKWidget( Widget );
			tempCLIKWidget.AddEventListener( 'CLIK_buttonPress', OptionsBackButtonClicked );
			bWasHandled = true;
			break;
		case( 'RestartButton' ):
			Widget.SetString( "label", TheLocalizer.GetLocalizedString( RestartButtonName ) );
			tempCLIKWidget = GFxCLIKWidget( Widget );
			tempCLIKWidget.AddEventListener( 'CLIK_buttonPress', RestartButtonClicked );
			bWasHandled = true;
			break;
		case( 'LeftClickOptionButton' ):
			Widget.SetString( "label", TheLocalizer.GetLocalizedString( ComplexText ) );
			tempCLIKWidget = GFxCLIKWidget( Widget );
			tempCLIKWidget.AddEventListener( 'CLIK_buttonPress', LeftClickOptionButtonClicked );
			bWasHandled = true;
			break;
		case( 'RightClickOptionButton' ):
			Widget.SetString( "label", TheLocalizer.GetLocalizedString( NormalText ) );
			tempCLIKWidget = GFxCLIKWidget( Widget );
			tempCLIKWidget.AddEventListener( 'CLIK_buttonPress', RightClickOptionButtonClicked );
			bWasHandled = true;
			break;
	}
	
	if( !bWasHandled )
		bWasHandled = super.WidgetInitialized( WidgetName, WidgetPath, Widget );

	return bWasHandled;
}


function ResumeLevelButtonClicked( GFxCLIKWidget.EventData params )
{
	PauseMenu.ResumeButtonMC.SetBool( "focused", false );
	TogglePauseMenu();
	TurnManager.UnpauseGame();
	TurnManager.PlaySound( MenuClickSound );
	`log( "Resume Level Button clicked" );
}


function MainMenuButtonClicked( GFxCLIKWidget.EventData params )
{
	PauseMenu.MainMenuButtonMC.SetBool( "focused", false );
	PauseMenu.PauseMC.SetVisible( false );
	PauseMenu.QuitMC.SetVisible( true );
	AutosizeTextFont( PauseMenu.BackToMainMenuTextTF, TheLocalizer.GetLocalizedString( BackToMainMenuText ) );
	GoToMainMenu = true;
	TurnManager.PlaySound( MenuClickSound );
	`log( "Main Menu Button clicked" );
}


function YesButtonClicked( GFxCLIKWidget.EventData params )
{
	TurnManager.PlaySound( MenuClickSound );

	BS_GameInfo( class'WorldInfo'.static.GetWorldInfo().Game ).SaveGame();
	if( GoToMainMenu )
		ConsoleCommand( "open UDKFrontEndMap" );
	else
		ConsoleCommand( "open "$GetCurrentLevel() );

	`log( "Yes Button clicked" );
}


function NoButtonClicked( GFxCLIKWidget.EventData params )
{
	PauseMenu.NoButtonMC.SetBool( "focused", false );
	PauseMenu.QuitMC.SetVisible( false );
	PauseMenu.PauseMC.SetVisible( true );
	TurnManager.PlaySound( MenuClickSound );
	`log( "No Button clicked" );
}


function ControlsButtonClicked( GFxCLIKWidget.EventData params )
{
	PauseMenu.ControlsButtonMC.SetBool( "focused", false );
	PauseMenu.ControlsMC.SetVisible( true );
	PauseMenu.QuitMC.SetVisible( false );
	PauseMenu.PauseMC.SetVisible( false );
	TurnManager.PlaySound( MenuClickSound );
	`log( "Controls Button clicked" );
}


function BackButtonClicked( GFxCLIKWidget.EventData params )
{
	PauseMenu.BackButtonMC.SetBool( "focused", false );
	PauseMenu.PauseMC.SetVisible( true );
	PauseMenu.QuitMC.SetVisible( false );
	PauseMenu.ControlsMC.SetVisible( false );
	TurnManager.PlaySound( MenuClickSound );
	`log( "Back Button clicked" );
}


function OptionsButtonClicked( GFxCLIKWidget.EventData params )
{
	PauseMenu.OptionsMC.SetVisible( true );
	PauseMenu.QuitMC.SetVisible( false );
	PauseMenu.PauseMC.SetVisible( false );
	PauseMenu.ControlsMC.SetVisible( false );
	TurnManager.PlaySound( MenuClickSound );
	`log( "Options Button clicked" );
}


function OptionsBackButtonClicked( GFxCLIKWidget.EventData params )
{
	PauseMenu.PauseMC.SetVisible( true );
	PauseMenu.OptionsMC.SetVisible( false );
	PauseMenu.QuitMC.SetVisible( false );
	PauseMenu.ControlsMC.SetVisible( false );
	TurnManager.PlaySound( MenuClickSound );
	`log( "Options Back Button clicked" );
}


function RestartButtonClicked( GFxCLIKWidget.EventData params )
{
	PauseMenu.RestartButtonMC.SetBool( "focused", false );
	PauseMenu.PauseMC.SetVisible( false );
	PauseMenu.QuitMC.SetVisible( true );
	AutosizeTextFont( PauseMenu.BackToMainMenuTextTF, TheLocalizer.GetLocalizedString( RestartThisLevelText ) );
	GoToMainMenu = false;
	TurnManager.PlaySound( MenuClickSound );
	`log( "Restart Button clicked" );
}


function LeftClickOptionButtonClicked( GFxCLIKWidget.EventData params )
{
	DisableButton( PauseMenu.LeftClickOptionButtonMC );
	EnableButton( PauseMenu.RightClickOptionButtonMC );
	PauseMenu.LeftClickMouseControlsMC.SetVisible( true );
	PauseMenu.RightClickMouseControlsMC.SetVisible( false );
	ConsoleCommand( "TheRightWay" );
	TurnManager.PlaySound( MenuClickSound );
	`log( "Left Click Option Button clicked" );
}


function RightClickOptionButtonClicked( GFxCLIKWidget.EventData params )
{
	DisableButton( PauseMenu.RightClickOptionButtonMC );
	EnableButton( PauseMenu.LeftClickOptionButtonMC );
	PauseMenu.RightClickMouseControlsMC.SetVisible( true );
	PauseMenu.LeftClickMouseControlsMC.SetVisible( false );
	ConsoleCommand( "TheWrongWay" );
	TurnManager.PlaySound( MenuClickSound );
	`log( "Right Click Option Button clicked" );
}


function SetLevelNameAndObjective()
{
	local string MapName;
	
	MapName = class'WorldInfo'.static.GetWorldInfo().GetMapName( false );
	
	if( MapName == "uedpiebs_tavern" || MapName == "bs_tavern" )
	{
		AutosizeTextFont( PauseMenu.LevelNameTF, TheLocalizer.GetLocalizedString( Level1Name ) );
	    AutosizeTextFont( PauseMenu.LevelObjectiveTF, TheLocalizer.GetLocalizedString( Level1Objective ) );
	}
	else if( MapName == "uedpiebs_level02" || MapName == "bs_level02" || MapName == "BS_Level02" )
	{
		AutosizeTextFont( PauseMenu.LevelNameTF, TheLocalizer.GetLocalizedString( Level2Name ) );
	    AutosizeTextFont( PauseMenu.LevelObjectiveTF, TheLocalizer.GetLocalizedString( Level2Objective ) );
	}
	else if( MapName == "uedpiebs_level03" || MapName == "bs_level03" || MapName == "BS_Level03" )
	{
		AutosizeTextFont( PauseMenu.LevelNameTF, TheLocalizer.GetLocalizedString( Level3Name ) );
	    AutosizeTextFont( PauseMenu.LevelObjectiveTF, TheLocalizer.GetLocalizedString( Level3Objective ) );
	}
	else if( MapName == "uedpiebs_level04" || MapName == "bs_level04" || MapName == "BS_Level04" )
	{
		AutosizeTextFont( PauseMenu.LevelNameTF, TheLocalizer.GetLocalizedString( Level4Name ) );
	    AutosizeTextFont( PauseMenu.LevelObjectiveTF, TheLocalizer.GetLocalizedString( Level4Objective ) );
	}
	else if( MapName == "uedpiebs_level05" || MapName == "bs_level05" || MapName == "BS_Level05" )
	{
		AutosizeTextFont( PauseMenu.LevelNameTF, TheLocalizer.GetLocalizedString( Level5Name ) );
	    AutosizeTextFont( PauseMenu.LevelObjectiveTF, TheLocalizer.GetLocalizedString( Level5Objective ) );
	}
}


function string GetCurrentLevel()
{
	local string MapName;
	local string currentLevel;
	
	MapName = class'WorldInfo'.static.GetWorldInfo().GetMapName( false );
	
	if( MapName == "uedpiebs_tavern" || MapName == "bs_tavern" )
		currentLevel = "BS_Tavern";

	else if( MapName == "uedpiebs_level02" || MapName == "bs_level02" || MapName == "BS_Level02" )
		currentLevel = "BS_Level02";

	else if( MapName == "uedpiebs_level03" || MapName == "bs_level03" || MapName == "BS_Level03" )
		currentLevel = "BS_Level03";

	else if( MapName == "uedpiebs_level04" || MapName == "bs_level04" || MapName == "BS_Level04" )
		currentLevel = "BS_Level04";

	else if( MapName == "uedpiebs_level05" || MapName == "bs_level05" || MapName == "BS_Level05" )
		currentLevel = "BS_Level05";

	return currentLevel;
}


function TogglePauseMenu()
{	
	if( bPauseMenuShowing )
	{
		if( !TurnManager.IsInState( 'WaitingToStart' ) )
		{
			HUD.EnablePlayerHUD();
			HUD.bIsCapturingMouseInput = false;
		}

		PauseMenu.PauseMC.SetVisible( true );
		PauseMenu.QuitMC.SetVisible( false );
		PauseMenu.ControlsMC.SetVisible( false );
		PauseMenu.MouseCursorMC.SetVisible( false );
		PauseMenu.PauseMenuMC.SetVisible( false );
		bPauseMenuShowing = false;
	}
	else
	{
		HUD.DisablePlayerHUD();
		HUD.bIsCapturingMouseInput = true;

		PauseMenu.MouseCursorMC.SetVisible( true );
		PauseMenu.PauseMenuMC.SetVisible( true );
		bPauseMenuShowing = true;
	}
}


function AutosizeTextFont( GFxObject obj, string txt, int numOfLines = 1 )
{
	ActionScriptVoid("_root.Autosize");
}


function EnableButton(GFxObject obj)
{
	ActionScriptVoid("_root.EnableButton");
}


function DisableButton(GFxObject obj)
{
	ActionScriptVoid("_root.DisableButton");
}


DefaultProperties
{
	bDisplayWithHudOff=true
	MovieInfo=SwfMovie'bs_PauseMenu.bs_PauseMenu'
	Priority=110
	WidgetBindings.Add( ( WidgetName="ResumeLevelButton", WidgetClass=class'GFxCLIKWidget' ) )
	WidgetBindings.Add( ( WidgetName="MainMenuButton", WidgetClass=class'GFxCLIKWidget' ) )
	WidgetBindings.Add( ( WidgetName="YesToMainMenuButton", WidgetClass=class'GFxCLIKWidget' ) )
	WidgetBindings.Add( ( WidgetName="NoToMainMenuButton", WidgetClass=class'GFxCLIKWidget' ) )
	WidgetBindings.Add( ( WidgetName="ControlsButton", WidgetClass=class'GFxCLIKWidget' ) )
	WidgetBindings.Add( ( WidgetName="BackButton", WidgetClass=class'GFxCLIKWidget' ) )
	WidgetBindings.Add( ( WidgetName="OptionsButton", WidgetClass=class'GFxCLIKWidget' ) )
	WidgetBindings.Add( ( WidgetName="OptionsBackButton", WidgetClass=class'GFxCLIKWidget' ) )
	WidgetBindings.Add( ( WidgetName="RestartButton", WidgetClass=class'GFxCLIKWidget' ) )
	WidgetBindings.Add( ( WidgetName="LeftClickOptionButton", WidgetClass=class'GFxCLIKWidget' ) )
	WidgetBindings.Add( ( WidgetName="RightClickOptionButton", WidgetClass=class'GFxCLIKWidget' ) )

	MenuClickSound = SoundCue'bs_HudUi.SFX.BS_SFX_MenuClick_CUE'
}
