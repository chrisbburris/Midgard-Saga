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

class BS_GFxHUD_GameOverScreen extends GFxMoviePlayer;

struct GameOverScreenMovieClips
{
	var GFxObject GameOverScreenMC;
	var GFxObject GameOverTextTF;
	var GFxObject RetryButtonTF;
	var GFxObject MainMenuButtonTF;
	var GFxObject MouseCursorMC;
};

var GameOverScreenMovieClips GameOverScreen;

var BS_Localization TheLocalizer;

var localized string GameOverText;
var localized string RetryButtonName;
var localized string MainMenuButtonName;


function Init( optional LocalPlayer LocPlay )
{
	TheLocalizer = BS_GameInfo( class'WorldInfo'.static.GetWorldInfo().Game ).TheLocalizer;
	Start();
	Advance( 0.0f );

	GameOverScreen.GameOverScreenMC = GetVariableObject( "_root.GameOverScreen" );
	GameOverScreen.GameOverTextTF   = GetVariableObject( "_root.GameOverScreen.GameOverText.textField" );
	GameOverScreen.RetryButtonTF    = GetVariableObject( "_root.GameOverScreen.RetryButton.textField" );
	GameOverScreen.MainMenuButtonTF = GetVariableObject( "_root.GameOverScreen.MainMenuButton.textField" );
	GameOverScreen.MouseCursorMC    = GetVariableObject( "_root.mCursor" );

	AutosizeTextFont( GameOverScreen.GameOverTextTF, TheLocalizer.GetLocalizedString( GameOverText ), 2 ); 

	AutosizeTextFont( GameOverScreen.RetryButtonTF, TheLocalizer.GetLocalizedString(  RetryButtonName ) );
	AutosizeTextFont( GameOverScreen.MainMenuButtonTF, TheLocalizer.GetLocalizedString(  MainMenuButtonName ) );

	GameOverScreen.MouseCursorMC.SetVisible( false );
	GameOverScreen.GameOverScreenMC.SetVisible( false );

	super.Init( LocPlay );
}


event bool WidgetInitialized( name WidgetName, name WidgetPath, GFxObject Widget )
{
	local GFxCLIKWidget tempCLIKWidget;
	local bool bWasHandled;
	bWasHandled = false;
	
	switch( WidgetName )
	{
		case( 'RetryButton' ):
			Widget.SetString( "label", TheLocalizer.GetLocalizedString(  RetryButtonName ) );
			tempCLIKWidget = GFxCLIKWidget( Widget );
			tempCLIKWidget.AddEventListener( 'CLIK_buttonPress', RetryButtonClicked );
			bWasHandled = true;
			break;
		case( 'MainMenuButton' ):
			Widget.SetString( "label", TheLocalizer.GetLocalizedString( MainMenuButtonName ) );
			tempCLIKWidget = GFxCLIKWidget( Widget );
			tempCLIKWidget.AddEventListener( 'CLIK_buttonPress', MainMenuButtonClicked );
			bWasHandled = true;
			break;
	}
	
	if( !bWasHandled )
		bWasHandled = super.WidgetInitialized( WidgetName, WidgetPath, Widget );

	return bWasHandled;
}


function RetryButtonClicked( GFxCLIKWidget.EventData params )
{
	ConsoleCommand( "open "$GetCurrentLevel() );
	`log( "Retry Button clicked" );
}


function MainMenuButtonClicked( GFxCLIKWidget.EventData params )
{
	ConsoleCommand( "open UDKFrontEndMap" );
	`log( "Main Menu Button clicked" );
}


function string GetCurrentLevel()
{
	local string MapName;
	local string currentLevel;
	
	MapName = class'WorldInfo'.static.GetWorldInfo().GetMapName( false );
	
	if( MapName == "uedpiebs_tavern" || MapName == "bs_tavern" || MapName == "BS_Tavern" )
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


function Display()
{
	GameOverScreen.MouseCursorMC.SetVisible( true );
	GameOverScreen.GameOverScreenMC.SetVisible( true );
}


function Hide()
{
	GameOverScreen.MouseCursorMC.SetVisible( false );
	GameOverScreen.GameOverScreenMC.SetVisible( false );
}


function AutosizeTextFont( GFxObject obj, string txt, int numOfLines = 1 )
{
	ActionScriptVoid("_root.Autosize");
}


DefaultProperties
{
	bDisplayWithHudOff=true
	MovieInfo=SwfMovie'bs_GameOverScreen.bs_GameOverScreen'
	Priority=120
	WidgetBindings.Add( ( WidgetName="RetryButton", WidgetClass=class'GFxCLIKWidget' ) )
	WidgetBindings.Add( ( WidgetName="MainMenuButton", WidgetClass=class'GFxCLIKWidget' ) )
}
