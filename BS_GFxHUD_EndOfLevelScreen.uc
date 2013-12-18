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

class BS_GFxHUD_EndOfLevelScreen extends GFxMoviePlayer;

struct EndOfLevelScreenMovieClips
{
	var GFxObject EndOfLevelScreenMC;
	var GFxObject VictoryTextTF;
	var GFxObject LevelNameTF;
	var GFxObject TurnsLabelTF;
	var GFxObject TurnNumberTF;
	var GFxObject UnitsLostLabelTF;
	var GFxObject UnitsLostNumberTF;
	var GFxObject EnemiesDefeatedLabelTF;
	var GFxObject EnemiesDefeatedNumberTF;
	var GFxObject APSpentLabelTF;
	var GFxObject APSpentNumberTF;
	var GFxObject BjornPictureMC;
	var GFxObject DagPictureMC;
	var GFxObject FreyaPictureMC;
	var GFxObject IlianaPictureMC;
	var GFxObject MouseCursorMC;
	var GFxObject MainMenuButtonMC;
	var GFxObject NextLevelButtonMC;
	var GFxObject MainMenuButtonTF;
	var GFxObject NextLevelButtonTF;
};

var EndOfLevelScreenMovieClips EndOfLevelScreen;

var BS_TurnManager TurnManager;
var BS_PlayerController PC;
var BS_GFxHUDMoviePlayer HUD;

var BS_Localization TheLocalizer;

var localized string VictoryText;
var localized string TurnsLabel;
var localized string UnitsLostLabel;
var localized string EnemiesDefeatedLabel;
var localized string APSpentLabel;
var localized string MainMenuButtonName;
var localized string NextLevelButtonName;
var localized string Level1Name;
var localized string Level2Name;
var localized string Level3Name;
var localized string Level4Name;
var localized string Level5Name;
var localized string ContinueName;


function Init( optional LocalPlayer LocPlay )
{
	local BS_GameInfo BSGI;
	BSGI = BS_GameInfo( class'WorldInfo'.static.GetWorldInfo().Game );
	TheLocalizer = BSGI.TheLocalizer;

	Start();
	Advance( 0.0f );

	PC = BS_PlayerController(TurnManager.GetController(0));

	EndOfLevelScreen.EndOfLevelScreenMC      = GetVariableObject( "_root.EndOfLevelScreen" );
    EndOfLevelScreen.VictoryTextTF           = GetVariableObject( "_root.EndOfLevelScreen.VictoryText.textField" );
	EndOfLevelScreen.LevelNameTF             = GetVariableObject( "_root.EndOfLevelScreen.LevelName.textField" );
	EndOfLevelScreen.TurnsLabelTF            = GetVariableObject( "_root.EndOfLevelScreen.TurnsLabel.textField" );
	EndOfLevelScreen.TurnNumberTF            = GetVariableObject( "_root.EndOfLevelScreen.TurnNumber.textField" );
	EndOfLevelScreen.UnitsLostLabelTF        = GetVariableObject( "_root.EndOfLevelScreen.UnitsLostLabel.textField" );
	EndOfLevelScreen.UnitsLostNumberTF       = GetVariableObject( "_root.EndOfLevelScreen.UnitsLostNumber.textField" );
	EndOfLevelScreen.EnemiesDefeatedLabelTF  = GetVariableObject( "_root.EndOfLevelScreen.EnemiesDefeatedLabel.textField" );
	EndOfLevelScreen.EnemiesDefeatedNumberTF = GetVariableObject( "_root.EndOfLevelScreen.EnemiesDefeatedNumber.textField" );
	EndOfLevelScreen.APSpentLabelTF          = GetVariableObject( "_root.EndOfLevelScreen.APSpentLabel.textField" );
	EndOfLevelScreen.APSpentNumberTF         = GetVariableObject( "_root.EndOfLevelScreen.APSpentNumber.textField" );
	EndOfLevelScreen.BjornPictureMC          = GetVariableObject( "_root.EndOfLevelScreen.BjornPicture" );
	EndOfLevelScreen.DagPictureMC            = GetVariableObject( "_root.EndOfLevelScreen.DagPicture" );
	EndOfLevelScreen.FreyaPictureMC          = GetVariableObject( "_root.EndOfLevelScreen.FreyaPicture" );
	EndOfLevelScreen.IlianaPictureMC         = GetVariableObject( "_root.EndOfLevelScreen.IlianaPicture" );
	EndOfLevelScreen.MouseCursorMC           = GetVariableObject( "_root.mCursor" );
	EndOfLevelScreen.MainMenuButtonMC        = GetVariableObject( "_root.EndOfLevelScreen.MainMenuButton" );
	EndOfLevelScreen.NextLevelButtonMC       = GetVariableObject( "_root.EndOfLevelScreen.NextLevelButton" );
	EndOfLevelScreen.MainMenuButtonTF        = GetVariableObject( "_root.EndOfLevelScreen.MainMenuButton.textField" );
	EndOfLevelScreen.NextLevelButtonTF       = GetVariableObject( "_root.EndOfLevelScreen.NextLevelButton.textField" );

	AutosizeTextFont( EndOfLevelScreen.VictoryTextTF, TheLocalizer.GetLocalizedString( VictoryText ) );     
	AutosizeTextFont( EndOfLevelScreen.TurnsLabelTF, TheLocalizer.GetLocalizedString( TurnsLabel ) );
	AutosizeTextFont( EndOfLevelScreen.UnitsLostLabelTF, TheLocalizer.GetLocalizedString( UnitsLostLabel ) );
	AutosizeTextFont( EndOfLevelScreen.EnemiesDefeatedLabelTF, TheLocalizer.GetLocalizedString( EnemiesDefeatedLabel ) );  
	AutosizeTextFont( EndOfLevelScreen.APSpentLabelTF, TheLocalizer.GetLocalizedString( APSpentLabel ) );

	SetMenuButtonText();
	AutosizeTextFont( EndOfLevelScreen.NextLevelButtonTF, TheLocalizer.GetLocalizedString( NextLevelButtonName ) );

	EndOfLevelScreen.MouseCursorMC.SetVisible( false );
	EndOfLevelScreen.EndOfLevelScreenMC.SetVisible( false );

	super.Init( LocPlay );
}


event bool WidgetInitialized( name WidgetName, name WidgetPath, GFxObject Widget )
{
	local GFxCLIKWidget tempCLIKWidget;
	local bool bWasHandled;
	bWasHandled = false;
	
	switch( WidgetName )
	{
		case( 'MainMenuButton' ):
			Widget.SetString( "label", TheLocalizer.GetLocalizedString( MainMenuButtonName ) );
			tempCLIKWidget = GFxCLIKWidget( Widget );
			tempCLIKWidget.AddEventListener( 'CLIK_buttonPress', MainMenuButtonClicked );
			bWasHandled = true;
			break;
		case( 'NextLevelButton' ):
			Widget.SetString( "label", TheLocalizer.GetLocalizedString( NextLevelButtonName ) );
			tempCLIKWidget = GFxCLIKWidget( Widget );
			tempCLIKWidget.AddEventListener( 'CLIK_buttonPress', NextLevelButtonClicked );
			bWasHandled = true;
			break;
	}
	
	if( !bWasHandled )
		bWasHandled = super.WidgetInitialized( WidgetName, WidgetPath, Widget );

	return bWasHandled;
}


function MainMenuButtonClicked( GFxCLIKWidget.EventData params )
{
	SaveGame();
	ConsoleCommand( "open UDKFrontEndMap" );
	`log( "Main Menu Button clicked" );
}


function NextLevelButtonClicked( GFxCLIKWidget.EventData params )
{
	SaveGame();
	ConsoleCommand( "open "$GetNextLevel() );
	`log( "Next Level Button clicked" );
}


function SaveGame()
{
	local BS_GameInfo BSGI;
	BSGI = BS_GameInfo( class'WorldInfo'.static.GetWorldInfo().Game );
	BSGI.SaveGameUtils.SaveGameState( BSGI.SaveGameState, BSGI.SaveGameStateFileName );
}


function SetLevelName()
{
	local string MapName;
	
	MapName = class'WorldInfo'.static.GetWorldInfo().GetMapName( false );
	
	if( MapName == "uedpiebs_tavern" || MapName == "bs_tavern" )
	{
		AutosizeTextFont( EndOfLevelScreen.LevelNameTF, TheLocalizer.GetLocalizedString( Level1Name ) );
	}																								   
	else if( MapName == "uedpiebs_level02" || MapName == "bs_level02" )								   
	{																								   
		AutosizeTextFont( EndOfLevelScreen.LevelNameTF, TheLocalizer.GetLocalizedString( Level2Name ) );
	}																								   
	else if( MapName == "uedpiebs_level03" || MapName == "bs_level03" )								   
	{																								   
		AutosizeTextFont( EndOfLevelScreen.LevelNameTF, TheLocalizer.GetLocalizedString( Level3Name ) );
	}																								   
	else if( MapName == "uedpiebs_level04" || MapName == "bs_level04" )								   
	{																								   
		AutosizeTextFont( EndOfLevelScreen.LevelNameTF, TheLocalizer.GetLocalizedString( Level4Name ) );
	}																								   
	else if( MapName == "uedpiebs_level05" || MapName == "bs_level05" )								   
	{																								   
		AutosizeTextFont( EndOfLevelScreen.LevelNameTF, TheLocalizer.GetLocalizedString( Level5Name ) );
	}
}


function SetMenuButtonText()
{
	local string MapName;
	
	MapName = class'WorldInfo'.static.GetWorldInfo().GetMapName( false );
																							   
	if( MapName == "uedpiebs_level05" || MapName == "bs_level05" )								   																								   
		EndOfLevelScreen.MainMenuButtonMC.SetString( "label", TheLocalizer.GetLocalizedString( ContinueName ) );
	else
		EndOfLevelScreen.MainMenuButtonMC.SetString( "label", TheLocalizer.GetLocalizedString( MainMenuButtonName ) );
}


function string GetNextLevel()
{
	local string MapName;
	local string nextLevel;
	
	MapName = class'WorldInfo'.static.GetWorldInfo().GetMapName( false );

	if( MapName == "uedpiebs_tavern" || MapName == "bs_tavern" || MapName == "BS_Tavern" )
		nextLevel = "BS_Level02";

	else if( MapName == "uedpiebs_level02" || MapName == "bs_level02" || MapName == "BS_Level02" )
		nextLevel = "BS_Level03";

	else if( MapName == "uedpiebs_level03" || MapName == "bs_level03" || MapName == "BS_Level03" )
		nextLevel = "BS_Level04";

	else if( MapName == "uedpiebs_level04" || MapName == "bs_level04" || MapName == "BS_Level04" )
		nextLevel = "BS_Level05";
		
	else
		nextLevel = "UDKFrontEndMap";

	`log( "Current map name: " $ MapName );
	return nextLevel;
}


function int GetLevelIdx()
{
	local string MapName;
	local int levelIdx;
	local BS_GameInfo BSGI;

	BSGI = BS_GameInfo( class'WorldInfo'.static.GetWorldInfo().Game );

	levelIdx = 0;
	MapName = class'WorldInfo'.static.GetWorldInfo().GetMapName( false );

	if( MapName == "uedpiebs_tavern" || MapName == "bs_tavern" )
		levelIdx = 0;

	else if( MapName == "uedpiebs_level02" || MapName == "bs_level02" )
		levelIdx = 1;

	else if( MapName == "uedpiebs_level03" || MapName == "bs_level03" )
		levelIdx = 2;

	else if( MapName == "uedpiebs_level04" || MapName == "bs_level04" )
		levelIdx = 3;
		
	else if( MapName == "uedpiebs_level05" || MapName == "bs_level05" )
	{
		BSGI.SaveGameState.bComingFromBeatingFinalLevel = true;
		SaveGame();
		levelIdx = 4;
	}

	return levelIdx;
}


function DetermineIfFinalLevel()
{
	local string MapName;

	MapName = class'WorldInfo'.static.GetWorldInfo().GetMapName( false );

	if( MapName == "uedpiebs_level05" || MapName == "bs_level05" )
	{
		EndOfLevelScreen.NextLevelButtonMC.SetVisible( false );
		CenterMainMenuButton();
	}
}


function string GetTurnNumber()
{
	local int TurnNumber;

	TurnNumber = TurnManager.GetCurrentTurnNumber() + 1;

	return ( ( TurnNumber <= 9 ) ? "0"$HUD.GetCorrectTurnNumber( TurnNumber ) : ""$HUD.GetCorrectTurnNumber( TurnNumber ) );
}


function UpdateUnitsLost()
{
	// Bjorn
	if( HUD.BjornUnit.Health > 0 )
		EndOfLevelScreen.BjornPictureMC.GotoAndStopI(1);
	else
		EndOfLevelScreen.BjornPictureMC.GotoAndStopI(2);

    // Dag
	if( HUD.DagUnit.Health > 0 )
		EndOfLevelScreen.DagPictureMC.GotoAndStopI(1);
	else
		EndOfLevelScreen.DagPictureMC.GotoAndStopI(2);

	// Freya
	if( HUD.FreyaUnit.Health > 0 )
		EndOfLevelScreen.FreyaPictureMC.GotoAndStopI(1);
	else
		EndOfLevelScreen.FreyaPictureMC.GotoAndStopI(2);

	// Iliana
	if( HUD.IlianaUnit.Health > 0 )
		EndOfLevelScreen.IlianaPictureMC.GotoAndStopI(1);
	else
		EndOfLevelScreen.IlianaPictureMC.GotoAndStopI(2);
}


function CenterMainMenuButton()
{
	ActionScriptVoid("_root.CenterMainMenuButton");
}


function Display()
{
	local BS_GameInfo BSGI;
	BSGI = BS_GameInfo( class'WorldInfo'.static.GetWorldInfo().Game );

	EndOfLevelScreen.MouseCursorMC.SetVisible( true );
	EndOfLevelScreen.EndOfLevelScreenMC.SetVisible( true );
	EndOfLevelScreen.TurnNumberTF.SetString( "text", GetTurnNumber() );
	EndOfLevelScreen.UnitsLostNumberTF.SetString( "text", ""$PC.NumHerosDied );
	EndOfLevelScreen.EnemiesDefeatedNumberTF.SetString( "text", ""$PC.NumEnemiesKilled );
	EndOfLevelScreen.APSpentNumberTF.SetString( "text", ""$PC.TotalAPSpent );
	UpdateUnitsLost();
	SetLevelName();
	DetermineIfFinalLevel();

	BSGI.SaveGameState.SetLevelStatus( clamp( GetLevelIdx() + 1, 0, 4 ), true );
	SaveGame();
}


function Hide()
{
	EndOfLevelScreen.MouseCursorMC.SetVisible( false );
	EndOfLevelScreen.EndOfLevelScreenMC.SetVisible( false );
}


function AutosizeTextFont( GFxObject obj, string txt, int numOfLines = 1 )
{
	ActionScriptVoid("_root.Autosize");
}


DefaultProperties
{
	bDisplayWithHudOff=true
	MovieInfo=SwfMovie'bs_EndOfLevelScreen.bs_EndOfLevelScreen'
	Priority=120
	WidgetBindings.Add( ( WidgetName="MainMenuButton", WidgetClass=class'GFxCLIKWidget' ) )
	WidgetBindings.Add( ( WidgetName="NextLevelButton", WidgetClass=class'GFxCLIKWidget' ) )
}
