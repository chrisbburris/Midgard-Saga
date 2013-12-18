/*
 * README
 * 
 * The following code is for a video game called Midgard Saga, 
 * which was made by a student team at The Guildhall of Southern Methodist University.
 * 
 * This code's purpose is for the portfolio website of Chris Burris, one of the students
 * who worked on the game.
 * 
 * Chris Burris wrote this code in collaboration with another teammate, Preston Hulcy.
 * There are comments below that specify which parts of the code were written by whom.
 * 
 * You can visit Chris Burris' website at: chrisbburris.com
 * 
 */

class BS_GFxFrontEnd extends GFxMoviePlayer
	config(MidgardSaga);

var config array<string> Levels;

var BS_Localization TheLocalizer;

var localized array<string> LevelNames;
var int levelToOpen;

var string DefaultLanguage;

var SoundCue MenuClickSound;

var localized string MainTitle;
var localized string LevelSelect;
var localized string Controls;
var localized string Options;
var localized string Credits;
var localized string Play;
var localized string Back;
var localized string Hide;
var localized string Quit;
var localized string Music;
var localized string SFX;
var localized string Ambient;
var localized string Resolution;
var localized string Fullscreen;
var localized string Language;
var localized string ApplyButton;
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
var localized string DevelopedByText;
var localized string ProductionText;
var localized string TrevorHilzText;
var localized string ProducerText;
var localized string NavinSupphapholsiriText;
var localized string PublishingProducerText;
var localized string GameDesignerText;
var localized string RaulSiqueiraText;
var localized string DesignText;
var localized string ChrisMarshallText;
var localized string LeadLevelDesignerText;
var localized string ChrisBurrisText;
var localized string UIDesignerText;
var localized string EastonMundineText;
var localized string LevelDesignerText;
var localized string GameplayDesignerText;
var localized string TraddThompsonText;
var localized string SystemsDesignerText;
var localized string SoundDesignerText;
var localized string ErikVaughnText;
var localized string WorldBuilderText;
var localized string ArtText;
var localized string AshleyHaynieText;
var localized string LeadArtistText;
var localized string CharacterArtistText;
var localized string HammedAlTamimiText;
var localized string EnvironmentArtistText;
var localized string StephaniePitcherText;
var localized string TaylorSauerText;
var localized string UIArtistText;
var localized string TaylorWrightText;
var localized string TechnicalArtistText;
var localized string ProgrammingText;
var localized string PrestonHulcyText;
var localized string LeadProgrammerText;
var localized string UIProgrammerText;
var localized string ScottBoykinText;
var localized string GameplayProgrammerText;
var localized string AndrewNguyenText;
var localized string AIProgrammerText;
var localized string WritingText;
var localized string AbigailManuelText;
var localized string DialogueAndStoryWriterText;
var localized string BrunoName;
var localized string SpanishTranslationText;
var localized string frostmothText;
var localized string MothproofScriptText;
var localized string FontsquirrelText;
var localized string MusicAndSoundText;
var localized string VictorSiqueiraText;
var localized string ComposerText;
var localized string AaronRoseText;
var localized string SoundEffectsText;
var localized string MusicPerformedByText;
var localized string SMUMeadowsStudentOrchestraText;
var localized string ComposersText;
var localized string GuidoArcelaText;
var localized string OrquestratorsText;
var localized string JesusMartinezText;
var localized string CopyistText;
var localized string RecordingEngineerText;
var localized string BrandonWrightText;
var localized string Violin1Text;
var localized string MaiKeOlegText;
var localized string PaytonText;
var localized string Violin2Text;
var localized string JiahAllisonText;
var localized string ScottText;
var localized string ViolaText;
var localized string SamanthaText;
var localized string TiffanayText;
var localized string CelloText;
var localized string TrentText;
var localized string XavierText;
var localized string DoubleBassText;
var localized string GregorioText;
var localized string TroyText;
var localized string HarpText;
var localized string SarahText;
var localized string FluteText;
var localized string SamiText;
var localized string EmilyZText;
var localized string ErinDoyleText;
var localized string OboeText;
var localized string HannahText;
var localized string ClarinetText;
var localized string RickyText;
var localized string JoshuaText;
var localized string LibbieText;
var localized string BassonText;
var localized string BrittanyHText;
var localized string AlecSalehText;
var localized string HornText;
var localized string DanielTText;
var localized string VinceGText;
var localized string ScottLText;
var localized string MichaelCText;
var localized string TrumpetText;
var localized string DylanText;
var localized string AaronText;
var localized string BryceText;
var localized string TromboneText;
var localized string TrevorMText;
var localized string BrettWText;
var localized string SurajText;
var localized string TubaText;
var localized string BrandonText;
var localized string PercussionText;
var localized string EdwinStreckText;
var localized string AlejandroSalazarText;
var localized string GuitarText;
var localized string JuanPabloGonzalezText;
var localized string SpecialThanksText;
var localized string MattStreitText;
var localized string MarkNaushaText;
var localized string GaryBrubakerText;
var localized string SquirrelEiserlohText;
var localized string BorisFisherText;
var localized string NickHeitzmanText;
var localized string JonSkinnerText;
var localized string JoelFarrellText;      
var localized string CarlosGutierrezText;  
var localized string MattLangerText;       
var localized string MickMancusoText;      
var localized string MyqueOuelletteText;   
var localized string ElizabethStringerText;
var localized string ThanksToText;
var localized string EndingText;
var localized string NormalText;
var localized string ComplexText;
var localized string ConductorText;
var localized string AndrewCorbittName;

var GFxObject Root;
var GFxObject MusicSlider;
var GFxObject SFXSlider;
var GFxObject AmbientSlider;
var GFxObject ResolutionSelector;
var GFxObject FullscreenChecbox;
var GFxObject LanguageSelector;
var GFxObject MainMenuFadeInContainerMC;
var GFxObject SubMenuFadeInContainerMC;
var GFxObject ScrollingCreditsContainerMC;
var GFxObject LevelSelectMC;
var GFxObject ControlsMC;
var GFxObject OptionsMC;
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
var GFxObject DevelopedByTextTF;
var GFxObject ProductionTextTF;
var GFxObject TrevorHilzTextTF;
var GFxObject ProducerTextTF;
var GFxObject NavinSupphapholsiriTextTF;
var GFxObject PublishingProducerTextTF;
var GFxObject GameDesignerTextTF;
var GFxObject RaulSiqueiraTextTF;
var GFxObject DesignTextTF;
var GFxObject ChrisMarshallTextTF;
var GFxObject LeadLevelDesignerTextTF;
var GFxObject ChrisBurrisTextTF;
var GFxObject UIDesignerTextTF;
var GFxObject EastonMundineTextTF;
var GFxObject LevelDesignerTextTF;
var GFxObject LevelDesignerText2TF;
var GFxObject LevelDesignerText3TF;
var GFxObject GameplayDesignerTextTF;
var GFxObject TraddThompsonTextTF;
var GFxObject SystemsDesignerTextTF;
var GFxObject SoundDesignerTextTF;
var GFxObject ErikVaughnTextTF;
var GFxObject WorldBuilderTextTF;
var GFxObject ArtTextTF;
var GFxObject AshleyHaynieTextTF;
var GFxObject LeadArtistTextTF;
var GFxObject CharacterArtistTextTF;
var GFxObject HammedAlTamimiTextTF;
var GFxObject EnvironmentArtistTextTF;
var GFxObject EnvironmentArtistText2TF;
var GFxObject EnvironmentArtistText3TF;
var GFxObject StephaniePitcherTextTF;
var GFxObject TaylorSauerTextTF;
var GFxObject UIArtistTextTF;
var GFxObject TaylorWrightTextTF;
var GFxObject TechnicalArtistTextTF;
var GFxObject ProgrammingTextTF;
var GFxObject PrestonHulcyTextTF;
var GFxObject LeadProgrammerTextTF;
var GFxObject UIProgrammerTextTF;
var GFxObject ScottBoykinTextTF;
var GFxObject GameplayProgrammerTextTF;
var GFxObject AndrewNguyenTextTF;
var GFxObject AIProgrammerTextTF;
var GFxObject WritingTextTF;
var GFxObject AbigailManuelTextTF;
var GFxObject DialogueAndStoryWriterTextTF;
var GFxObject BrunoBertachiniDAngeloTextTF;
var GFxObject SpanishTranslationTextTF;
var GFxObject frostmothTextTF;
var GFxObject MothproofScriptTextTF;
var GFxObject FontsquirrelTextTF;
var GFxObject MusicAndSoundTextTF;
var GFxObject VictorSiqueiraTextTF;
var GFxObject ComposerTextTF;
var GFxObject AaronRoseTextTF;
var GFxObject SoundEffectsTextTF;
var GFxObject MusicPerformedByTextTF;
var GFxObject SMUMeadowsStudentOrchestraTextTF;
var GFxObject ComposersTextTF;
var GFxObject GuidoArcelaTextTF;
var GFxObject GuidoArcela2TextTF;
var GFxObject GuidoArcela3TextTF;
var GFxObject GuidoArcela4TextTF;
var GFxObject OrquestratorsTextTF;
var GFxObject ConductorTextTF;
var GFxObject JesusMartinezTextTF;
var GFxObject CopyistTextTF;
var GFxObject RecordingEngineerTextTF;
var GFxObject BrandonWrightTextTF;
var GFxObject AndrewCorbittTextTF;
var GFxObject Violin1TextTF;
var GFxObject MaiKeOlegTextTF;
var GFxObject PaytonTextTF;
var GFxObject Violin2TextTF;
var GFxObject JiahAllisonTextTF;
var GFxObject ScottTextTF;
var GFxObject ViolaTextTF;
var GFxObject SamanthaTextTF;
var GFxObject TiffanayTextTF;
var GFxObject CelloTextTF;
var GFxObject TrentTextTF;
var GFxObject XavierTextTF;
var GFxObject DoubleBassTextTF;
var GFxObject GregorioTextTF;
var GFxObject TroyTextTF;
var GFxObject HarpTextTF;
var GFxObject SarahTextTF;
var GFxObject FluteTextTF;
var GFxObject SamiTextTF;
var GFxObject EmilyZTextTF;
var GFxObject ErinDoyleTextTF;
var GFxObject OboeTextTF;
var GFxObject HannahTextTF;
var GFxObject ClarinetTextTF;
var GFxObject RickyTextTF;
var GFxObject JoshuaTextTF;
var GFxObject LibbieTextTF;
var GFxObject BassonTextTF;
var GFxObject BrittanyHTextTF;
var GFxObject AlecSalehTextTF;
var GFxObject HornTextTF;
var GFxObject DanielTTextTF;
var GFxObject VinceGTextTF;
var GFxObject ScottLTextTF;
var GFxObject MichaelCTextTF;
var GFxObject TrumpetTextTF;
var GFxObject DylanTextTF;
var GFxObject AaronTextTF;
var GFxObject BryceTextTF;
var GFxObject TromboneTextTF;
var GFxObject TrevorMTextTF;
var GFxObject BrettWTextTF;
var GFxObject SurajTextTF;
var GFxObject TubaTextTF;
var GFxObject BrandonTextTF;
var GFxObject PercussionTextTF;
var GFxObject EdwinStreckTextTF;
var GFxObject AlejandroSalazarTextTF;
var GFxObject GuitarTextTF;
var GFxObject JuanPabloGonzalezTextTF;
var GFxObject SpecialThanksTextTF;
var GFxObject MattStreitTextTF;
var GFxObject MarkNaushaTextTF;
var GFxObject GaryBrubakerTextTF;
var GFxObject SquirrelEiserlohTextTF;
var GFxObject BorisFisherTextTF;
var GFxObject NickHeitzmanTextTF;
var GFxObject JonSkinnerTextTF;
var GFxObject JoelFarrellTextTF;
var GFxObject CarlosGutierrezTextTF;
var GFxObject MattLangerTextTF;
var GFxObject MickMancusoTextTF;
var GFxObject MyqueOuelletteTextTF;
var GFxObject ElizabethStringerTextTF;
var GFxObject ThanksToTextTF;
var GFxObject EndingTextTF;

var GFxObject PlayButton;
var GFxObject ControlsButton;
var GFxObject OptionsButton;
var GFxObject CreditsButton;
var GFxObject QuitMC;
var GFxObject Level1;
var GFxObject Level2;
var GFxObject Level3;
var GFxObject Level4;
var GFxObject Level5;
var GFxObject LevelSelectBackButton;
var GFxObject ControlsBackButton;
var GFxObject LevelSelectTitleTF;
var GFxObject OptionsTitleTF;
var GFxObject MusicLabelTF;
var GFxObject AmbientLabelTF;
var GFxObject SFXLabelTF;
var GFxObject ResolutionLabelTF;
var GFxObject FullscreenLabelTF;
var GFxObject LanguageLabelTF;
var GFxObject OptionsBackButton;
var GFxObject ApplyScreenResolutionButton;
var GFxObject ApplyLanguageChangeButton;
var GFxObject CreditsBackButton;

var GFxObject PlayButtonTF;            
var GFxObject ControlsButtonTF;		
var GFxObject OptionsButtonTF;				 
var GFxObject CreditsButtonTF;				 
var GFxObject QuitButtonTF;		
var GFxObject Level1ButtonTF;				 
var GFxObject Level2ButtonTF;				 
var GFxObject Level3ButtonTF;				 
var GFxObject Level4ButtonTF;				 
var GFxObject Level5ButtonTF;				 
var GFxObject LevelSelectBackButtonTF;	 
var GFxObject ControlsBackButtonTF;
var GFxObject OptionsBackButtonTF;			
var GFxObject ApplyScreenResolutionButtonTF;
var GFxObject ApplyLanguageChangeButtonTF;  
var GFxObject CreditsBackButtonTF;

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

var GFxObject MusicSliderThumbMC;
var GFxObject AmbientSliderThumbMC;
var GFxObject SFXSliderThumbMC;
var GFxObject ResolutionSelectorPrevButtonMC;
var GFxObject ResolutionSelectorNextButtonMC;
var GFxObject LanguageSelectorPrevButtonMC;
var GFxObject LanguageSelectorNextButtonMC;

var bool bSubMenuShowing;

var GameInfo TheGameInfo;

var bool bIsFullscreenSelected;
var bool bResolutionNeedsToChange;

var BS_SaveGameState SaveGameState;
var BS_SaveSettings SaveSettings;

var string DefaultScreenRes;

var bool bMusicSliderInitialized;
var bool bSFXSliderInitialized;
var bool bAmbientSliderInitialized;

var BS_SaveGameUtils SaveGameUtils;

var bool bIsCreditsShowing;

// Preston Hulcy
function Init( optional LocalPlayer LocPlay )
{
	SaveGameUtils = new class'BS_SaveGameUtils';

	if( TheLocalizer == none )
		TheLocalizer = new class'BS_Localization';
	SaveGameState = new class'BS_SaveGameState';
	SaveSettings = new class'BS_SaveSettings';
	if( !SaveGameUtils.LoadSaveGameState( SaveGameState, SaveGameUtils.SaveGameStateFileName ) )
	{
		SaveGameState.SetLevelStatus( 0, true );
	}
	
	if( SaveGameUtils.LoadSaveSettings( SaveSettings, SaveGameUtils.SaveSettingsFileName ) )
	{		
		TheLocalizer.CurrentLanguage = SaveSettings.CurrentLanguageCode;	
	}
	else
	{
		TheLocalizer.SetCurrentLanguageFromString( DefaultLanguage );
	}
	SaveSettings.SetAudioVolumes( GetPC() );
	UpdateUnlockedLevels();
}


// Written by Chris Burris & Preston Hulcy
function bool Start( optional bool StarPaused )
{	
	local bool success;
	local GFxClikWidget.EventData params;	

	success = super.Start();
	
	if( success )
	{
		Advance( 0.0f );

		Root                             = GetVariableObject( "_root.RootContainerMC" );
		MainMenuFadeInContainerMC        = GetVariableObject( "_root.RootContainerMC.MainMenuFadeInContainer" );
		SubMenuFadeInContainerMC         = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer" );
		ScrollingCreditsContainerMC      = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer" );
        LevelSelectMC                    = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.LevelSelect" );
        ControlsMC                       = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.ControlsScreen" );
        OptionsMC                        = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.OptionsScreen" );
		ClickButtonsTextTF               = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.ControlsScreen.MouseControls.LeftClickMouseControls.ClickButtonsText.textField" );
		DeselectUnitTextTF               = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.ControlsScreen.KeyboardControls.DeselectUnitText.textField" );
		EndTurnTextTF                    = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.ControlsScreen.KeyboardControls.EndTurnText.textField" );
		KeyboardTextTF                   = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.ControlsScreen.KeyboardControls.KeyboardText.textField" );
		LeftMouseTextTF                  = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.ControlsScreen.MouseControls.LeftMouseText.textField" );
		MouseEdgeOfScreenTextTF          = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.ControlsScreen.MouseControls.MouseEdgeOfScreenText.textField" );
		MouseTextTF                      = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.ControlsScreen.MouseControls.MouseText.textField" );
		MoveAndAttackTextTF              = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.ControlsScreen.MouseControls.LeftClickMouseControls.MoveAndAttackText.textField" );
		MoveCameraKeyboardTextTF         = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.ControlsScreen.KeyboardControls.MoveCameraKeyboardText.textField" );
		MoveCameraMouseTextTF            = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.ControlsScreen.MouseControls.MoveCameraMouseText.textField" );
		MovePreviewTextTF                = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.ControlsScreen.KeyboardControls.MovePreviewText.textField" );
		PauseF9TextTF                    = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.ControlsScreen.KeyboardControls.PauseF9Text.textField" );
		ProgressDialougeTextTF           = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.ControlsScreen.KeyboardControls.ProgressDialogueText.textField" );
		RightMouseTextTF                 = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.ControlsScreen.MouseControls.RightMouseText.textField" );
		ScrollWheelTextTF                = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.ControlsScreen.MouseControls.ScrollWheelText.textField" );
		SelectPlayerUnitsTextTF          = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.ControlsScreen.KeyboardControls.SelectPlayerUnitsText.textField" );
		SelectUnitsTextTF				 = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.ControlsScreen.MouseControls.LeftClickMouseControls.SelectUnitsText.textField" );
		SkipCutscenesTextTF			     = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.ControlsScreen.KeyboardControls.SkipCutscenesText.textField" );
		ToggleHealthBarsTextTF		     = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.ControlsScreen.KeyboardControls.ToggleHealthBarsText.textField" );
		UseActiveAbilitiesKeyboardTextTF = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.ControlsScreen.KeyboardControls.UseActiveAbilitiesKeyboardText.textField" );
		UseActiveAbilitiesMouseTextTF	 = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.ControlsScreen.MouseControls.LeftClickMouseControls.UseActiveAbilitiesMouseText.textField" );
		ZoomCameraTextTF                 = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.ControlsScreen.MouseControls.LeftClickMouseControls.ZoomCameraText.textField" );
		DevelopedByTextTF                = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.DevelopedByText.textField" );                 
		ProductionTextTF                 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.ProductionText.textField" );
		TrevorHilzTextTF			     = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.TrevorHilzText.textField" );
		ProducerTextTF					 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.ProducerText.textField" );
		NavinSupphapholsiriTextTF		 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.NavinSupphapholsiriText.textField" );
		PublishingProducerTextTF		 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.PublishingProducerText.textField" );
		GameDesignerTextTF		     	 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.GameDesignerText.textField" );
		RaulSiqueiraTextTF				 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.RaulSiqueiraText.textField" );
		DesignTextTF					 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.DesignText.textField" );
		ChrisMarshallTextTF				 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.ChrisMarshallText.textField" );
		LeadLevelDesignerTextTF			 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.LeadLevelDesignerText.textField" );
		ChrisBurrisTextTF				 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.ChrisBurrisText.textField" );
		UIDesignerTextTF				 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.UIDesignerText.textField" );
		EastonMundineTextTF				 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.EastonMundineText.textField" );
		LevelDesignerTextTF				 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.LevelDesigner1Text.textField" );
		LevelDesignerText2TF		     = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.LevelDesigner2Text.textField" );
		LevelDesignerText3TF			 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.LevelDesigner3Text.textField" );
		GameplayDesignerTextTF			 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.GameplayDesignerText.textField" );
		TraddThompsonTextTF				 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.TraddThompsonText.textField" );
		SystemsDesignerTextTF			 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.SystemsDesignerText.textField" );
		SoundDesignerTextTF              = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.SoundDesignerText.textField" );
		ErikVaughnTextTF				 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.ErikVaughnText.textField" );
		WorldBuilderTextTF				 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.WorldBuilderText.textField" );
		ArtTextTF						 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.ArtText.textField" );
		AshleyHaynieTextTF				 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.AshleyHaynieText.textField" );
		LeadArtistTextTF				 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.LeadArtistText.textField" );
		CharacterArtistTextTF			 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.CharacterArtistText.textField" );
		HammedAlTamimiTextTF			 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.HammedAlTamimiText.textField" );
		EnvironmentArtistTextTF			 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.EnvironmentArtist1Text.textField" );
		EnvironmentArtistText2TF		 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.EnvironmentArtist2Text.textField" );
		EnvironmentArtistText3TF		 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.EnvironmentArtist3Text.textField" );
		StephaniePitcherTextTF			 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.StephaniePitcherText.textField" );
		TaylorSauerTextTF				 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.TaylorSauerText.textField" );
		UIArtistTextTF					 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.UIArtistText.textField" );
		TaylorWrightTextTF				 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.TaylorWrightText.textField" );
		TechnicalArtistTextTF			 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.TechnicalArtistText.textField" );
		ProgrammingTextTF				 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.ProgrammingText.textField" );
		PrestonHulcyTextTF				 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.PrestonHulcyText.textField" );
		LeadProgrammerTextTF			 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.LeadProgrammerText.textField" );
		UIProgrammerTextTF				 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.UIProgrammerText.textField" );
		ScottBoykinTextTF				 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.ScottBoykinText.textField" );
		GameplayProgrammerTextTF		 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.GameplayProgrammerText.textField" );
		AndrewNguyenTextTF				 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.AndrewNguyenText.textField" );
		AIProgrammerTextTF				 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.AIProgrammerText.textField" );
		WritingTextTF					 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.WritingText.textField" );
		AbigailManuelTextTF				 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.AbigailManuelText.textField" );
		DialogueAndStoryWriterTextTF	 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.DialogueAndStoryWriterText.textField" );
		BrunoBertachiniDAngeloTextTF     = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.BrunoText.textField" );
		SpanishTranslationTextTF         = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.SpanishTranslationText.textField" );
		frostmothTextTF					 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.frostmothText.textField" );
		MothproofScriptTextTF			 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.MothproofScriptText.textField" );
		FontsquirrelTextTF				 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.FontsquirrelText.textField" );
		MusicAndSoundTextTF				 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.MusicAndSoundText.textField" );
		VictorSiqueiraTextTF			 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.VictorSiqueiraText.textField" );
		ComposerTextTF					 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.ComposerText.textField" );
		AaronRoseTextTF					 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.AaronRoseText.textField" );
		SoundEffectsTextTF				 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.SoundEffectsText.textField" );
		MusicPerformedByTextTF			 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.MusicPerformedByText.textField" );
		SMUMeadowsStudentOrchestraTextTF = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.SMUMeadowsStudentOrchestraText.textField" );
		ComposersTextTF					 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.ComposersText.textField" );
		GuidoArcelaTextTF				 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.GuidoArcela1Text.textField" );
		GuidoArcela2TextTF               = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.GuidoArcela2Text.textField" );
		GuidoArcela3TextTF               = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.GuidoArcela3Text.textField" );
		GuidoArcela4TextTF               = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.GuidoArcela4Text.textField" );
		OrquestratorsTextTF				 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.OrquestratorsText.textField" );
		ConductorTextTF                  = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.ConductorText.textField" );
		JesusMartinezTextTF				 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.JesusMartinezText.textField" );
		CopyistTextTF					 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.CopyistText.textField" );
		RecordingEngineerTextTF			 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.RecordingEngineerText.textField" );
		BrandonWrightTextTF				 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.BrandonWrightText.textField" );
		AndrewCorbittTextTF              = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.AndrewCorbittText.textField" );
		Violin1TextTF					 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.Violin1Text.textField" );
		MaiKeOlegTextTF					 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.MaiKeOlegText.textField" );
		PaytonTextTF					 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.PaytonText.textField" );
		Violin2TextTF					 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.Violin2Text.textField" );
		JiahAllisonTextTF				 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.JiahAllisonText.textField" );
		ScottTextTF						 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.ScottText.textField" );
		ViolaTextTF						 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.ViolaText.textField" );
		SamanthaTextTF					 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.SamanthaText.textField" );
		TiffanayTextTF					 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.TiffanayText.textField" );
		CelloTextTF						 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.CelloText.textField" );
		TrentTextTF						 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.TrentText.textField" );
		XavierTextTF					 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.XavierText.textField" );
		DoubleBassTextTF				 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.DoubleBassText.textField" );
		GregorioTextTF					 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.GregorioText.textField" );
		TroyTextTF						 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.TroyText.textField" );
		HarpTextTF						 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.HarpText.textField" );
		SarahTextTF						 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.SarahText.textField" );
		FluteTextTF						 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.FluteText.textField" );
		SamiTextTF						 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.SamiText.textField" );
		EmilyZTextTF					 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.EmilyZText.textField" );
		ErinDoyleTextTF					 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.ErinDoyleText.textField" );
		OboeTextTF						 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.OboeText.textField" );
		HannahTextTF					 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.HannahText.textField" );
		ClarinetTextTF					 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.ClarinetText.textField" );
		RickyTextTF						 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.RickyText.textField" );
		JoshuaTextTF					 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.JoshuaText.textField" );
		LibbieTextTF					 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.LibbieText.textField" );
		BassonTextTF                     = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.BassonText.textField" );
		BrittanyHTextTF                  = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.BrittanyHText.textField" );
		AlecSalehTextTF                  = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.AlecSalehText.textField" );
		HornTextTF						 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.HornText.textField" );
		DanielTTextTF					 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.DanielTText.textField" );
		VinceGTextTF					 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.VinceGText.textField" );
		ScottLTextTF					 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.ScottLText.textField" );
		MichaelCTextTF					 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.MichaelCText.textField" );
		TrumpetTextTF					 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.TrumpetText.textField" );
		DylanTextTF						 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.DylanText.textField" );
		AaronTextTF						 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.AaronText.textField" );
		BryceTextTF						 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.BryceText.textField" );
		TromboneTextTF					 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.TromboneText.textField" );
		TrevorMTextTF					 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.TrevorMText.textField" );
		BrettWTextTF					 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.BrettWText.textField" );
		SurajTextTF						 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.SurajText.textField" );
		TubaTextTF						 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.TubaText.textField" );
		BrandonTextTF					 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.BrandonText.textField" );
		PercussionTextTF				 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.PercussionText.textField" );
		EdwinStreckTextTF				 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.EdwinStreckText.textField" );
		AlejandroSalazarTextTF			 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.AlejandroSalazarText.textField" );
		GuitarTextTF					 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.GuitarText.textField" );
		JuanPabloGonzalezTextTF			 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.JuanPabloGonzalezText.textField" );
		SpecialThanksTextTF				 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.SpecialThanksText.textField" );
		MattStreitTextTF				 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.MattStreitText.textField" );
		MarkNaushaTextTF				 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.MarkNaushaText.textField" );
		GaryBrubakerTextTF				 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.GaryBrubakerText.textField" );
		SquirrelEiserlohTextTF			 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.SquirrelEiserlohText.textField" );
		BorisFisherTextTF				 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.BorisFisherText.textField" );
		NickHeitzmanTextTF				 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.NickHeitzmanText.textField" );
		JonSkinnerTextTF			     = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.JonSkinnerText.textField" );
		JoelFarrellTextTF                = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.JoelFarrellText.textField" );
		CarlosGutierrezTextTF            = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.CarlosGutierrezText.textField" );
		MattLangerTextTF                 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.MattLangerText.textField" );
		MickMancusoTextTF                = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.MickMancusoText.textField" );
		MyqueOuelletteTextTF             = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.MyqueOuelletteText.textField" );
		ElizabethStringerTextTF          = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.ElizabethStringerText.textField" );
		ThanksToTextTF					 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.ThanksToText.textField" );
		EndingTextTF					 = GetVariableObject( "_root.RootContainerMC.ScrollingCreditsContainer.ScrollingCredits.EndingText.textField" );
	
		PlayButton                       = GetVariableObject( "_root.RootContainerMC.MainMenuFadeInContainer.MainMenu.PlayButton" );
        ControlsButton				     = GetVariableObject( "_root.RootContainerMC.MainMenuFadeInContainer.MainMenu.ControlsButton" );
        OptionsButton			         = GetVariableObject( "_root.RootContainerMC.MainMenuFadeInContainer.MainMenu.OptionsButton" );
        CreditsButton				     = GetVariableObject( "_root.RootContainerMC.MainMenuFadeInContainer.MainMenu.CreditsButton" );
        QuitMC							 = GetVariableObject( "_root.RootContainerMC.MainMenuFadeInContainer.MainMenu.Quit" );
        Level1					         = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.LevelSelect.Level1" );
        Level2					         = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.LevelSelect.Level2" );
        Level3					         = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.LevelSelect.Level3" );
        Level4					         = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.LevelSelect.Level4" );
        Level5					         = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.LevelSelect.Level5" );
        LevelSelectTitleTF				 = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.LevelSelect.LevelSelectTitle.textField" );
        OptionsTitleTF					 = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.OptionsScreen.OptionsTitle.textField" );
        MusicLabelTF					 = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.OptionsScreen.MusicLabel.textField" );
        AmbientLabelTF					 = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.OptionsScreen.AmbientLabel.textField" );
        SFXLabelTF						 = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.OptionsScreen.SFXLabel.textField" );
        ResolutionLabelTF				 = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.OptionsScreen.ResolutionLabel.textField" );
        FullscreenLabelTF				 = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.OptionsScreen.FullscreenLabel.textField" );
        LanguageLabelTF				     = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.OptionsScreen.LanguageLabel.textField" );
        ApplyScreenResolutionButton      = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.OptionsScreen.ApplyScreenResolutionButton" );
        ApplyLanguageChangeButton        = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.OptionsScreen.ApplyLanguageChangeButton" );
        CreditsBackButton                = GetVariableObject( "_root.RootContainerMC.CreditsBackButton" );

		PlayButtonTF                     = GetVariableObject( "_root.RootContainerMC.MainMenuFadeInContainer.MainMenu.PlayButton.textField" );
		ControlsButtonTF				 = GetVariableObject( "_root.RootContainerMC.MainMenuFadeInContainer.MainMenu.ControlsButton.textField" );
		OptionsButtonTF					 = GetVariableObject( "_root.RootContainerMC.MainMenuFadeInContainer.MainMenu.OptionsButton.textField" );
		CreditsButtonTF					 = GetVariableObject( "_root.RootContainerMC.MainMenuFadeInContainer.MainMenu.CreditsButton.textField" );
		QuitButtonTF					 = GetVariableObject( "_root.RootContainerMC.MainMenuFadeInContainer.MainMenu.Quit.textField" );
		Level1ButtonTF					 = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.LevelSelect.Level1.textField" );
		Level2ButtonTF					 = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.LevelSelect.Level2.textField" );
		Level3ButtonTF					 = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.LevelSelect.Level3.textField" );
		Level4ButtonTF					 = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.LevelSelect.Level4.textField" );
		Level5ButtonTF					 = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.LevelSelect.Level5.textField" );
		ApplyScreenResolutionButtonTF	 = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.OptionsScreen.ApplyScreenResolutionButton.textField" );
		ApplyLanguageChangeButtonTF  	 = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.OptionsScreen.ApplyLanguageChangeButton.textField" );
		CreditsBackButtonTF          	 = GetVariableObject( "_root.RootContainerMC.CreditsBackButton.textField" );

		LeftClickMouseControlsMC                = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.ControlsScreen.MouseControls.LeftClickMouseControls" );
	    RightClickMouseControlsMC               = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.ControlsScreen.MouseControls.RightClickMouseControls" );
	    LeftClickOptionButtonMC 		    	= GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.ControlsScreen.MouseControls.LeftClickControlsButton" );
	    RightClickOptionButtonMC 			    = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.ControlsScreen.MouseControls.RightClickControlsButton" );
	    LeftClickOptionButtonTF 			    = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.ControlsScreen.MouseControls.LeftClickControlsButton.textField" );
	    RightClickOptionButtonTF 			    = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.ControlsScreen.MouseControls.RightClickControlsButton.textField" );
	    
	    ClickButtonsTextRightClickTF 			= GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.ControlsScreen.MouseControls.RightClickMouseControls.ClickButtonsText.textField" );
	    SelectUnitsTextRightClicktTF		    = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.ControlsScreen.MouseControls.RightClickMouseControls.SelectUnitsText.textField" );
	    ZoomCameraTextRightClickTF			    = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.ControlsScreen.MouseControls.RightClickMouseControls.ZoomCameraText.textField" );
	    MoveAndAttackTextRightClickTF 		    = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.ControlsScreen.MouseControls.RightClickMouseControls.MoveAndAttackText.textField" );
	    UseActiveAbilitiesMouseTextRightClickTF = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.ControlsScreen.MouseControls.RightClickMouseControls.UseActiveAbilitiesMouseText.textField" );

		MusicSliderThumbMC             = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.OptionsScreen.MusicSlider.thumb" );        
		AmbientSliderThumbMC           = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.OptionsScreen.AmbientSlider.thumb" );
		SFXSliderThumbMC               = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.OptionsScreen.SFXSlider.thumb" );
		ResolutionSelectorPrevButtonMC = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.OptionsScreen.ResolutionSelector.prevBtn" );
		ResolutionSelectorNextButtonMC = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.OptionsScreen.ResolutionSelector.nextBtn" );
		LanguageSelectorPrevButtonMC   = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.OptionsScreen.LanguageSelector.prevBtn" );
		LanguageSelectorNextButtonMC   = GetVariableObject( "_root.RootContainerMC.SubMenuFadeInContainer.SubMenu.OptionsScreen.LanguageSelector.nextBtn" );
	}

	TheGameInfo = class'WorldInfo'.static.GetWorldInfo().Game;

	SetAllText();

	LevelSelectMC.SetVisible( false );
	ControlsMC.SetVisible( false );   
	OptionsMC.SetVisible( false );

	DisableButton( CreditsBackButton );

	MainMenuFadeInContainerMC.GotoAndStopI(11);

	if( !SaveSettings.bTheRightWay )
	{
		DisableButton( RightClickOptionButtonMC );
		LeftClickMouseControlsMC.SetVisible( false );
	}
	else
	{
		DisableButton( LeftClickOptionButtonMC );
		RightClickMouseControlsMC.SetVisible( false );
		
	}

	bSubMenuShowing = false;

	if( SaveGameState.bComingFromBeatingFinalLevel )
	{
		SaveGameState.bComingFromBeatingFinalLevel = false;
		GoToCredits( params );		
		SaveGame();
	}

	return success;
}


// Written by Chris Burris & Preston Hulcy
event bool WidgetInitialized( name WidgetName, name WidgetPath, GFxObject Widget )
{
	local bool bWasHandled;
	local GFxCLIKWidget tempWidget;
	bWasHandled = false;

	switch( WidgetName )
	{
		case( 'LevelSelectTitle' ):
			Widget.SetText( TheLocalizer.GetLocalizedString( LevelSelect ) );
			break;
		case( 'OptionsTitle' ):
			Widget.SetText( TheLocalizer.GetLocalizedString( Options ) );
			break;
		case( 'CreditsTitle' ):
			Widget.SetText( TheLocalizer.GetLocalizedString( Credits ) );
			break;
		case( 'PlayButton' ):
			Widget.SetString( "label", TheLocalizer.GetLocalizedString( Play ) );
			tempWidget = GFxCLIKWidget( Widget );
			tempWidget.AddEventListener( 'CLIK_buttonPress', GoToLevelSelect );
			break;
		case( 'ControlsButton' ):
			Widget.SetString( "label", TheLocalizer.GetLocalizedString( Controls ) );
			tempWidget = GFxCLIKWidget( Widget );
			tempWidget.AddEventListener( 'CLIK_buttonPress', GoToControls );
			break;
		case( 'OptionsButton' ):
			Widget.SetString( "label", TheLocalizer.GetLocalizedString( Options ) );
			tempWidget = GFxCLIKWidget( Widget );
			tempWidget.AddEventListener( 'CLIK_buttonPress', GoToOptions );
			break;
		case( 'CreditsButton' ):
			Widget.SetString( "label", TheLocalizer.GetLocalizedString( Credits ) );
			tempWidget = GFxCLIKWidget( Widget );
			tempWidget.AddEventListener( 'CLIK_buttonPress', GoToCredits );
			break;
		case( 'CreditsBackButton' ):
			Widget.SetString( "label", TheLocalizer.GetLocalizedString( Back ) );
			tempWidget = GFxCLIKWidget( Widget );
			tempWidget.AddEventListener( 'CLIK_buttonPress', GoBackToMainMenuFromCredits );		
			break;
		case( 'Level1' ):
			InitWidgetForLevel( 0, Widget );
			bWasHandled = true;
			break;
		case( 'Level2' ):
			InitWidgetForLevel( 1, Widget ); 
			bWasHandled = true;
			break;
		case( 'Level3' ):
			InitWidgetForLevel( 2, Widget );
			bWasHandled = true;
			break;
		case( 'Level4' ):
			InitWidgetForLevel( 3, Widget );
			bWasHandled = true;
			break;
		case( 'Level5' ):
			InitWidgetForLevel( 4, Widget );
			bWasHandled = true;
			break;
		case( 'Quit' ):
			Widget.SetString( "label", TheLocalizer.GetLocalizedString( Quit ) );
			tempWidget = GFxCLIKWidget( Widget );
			tempWidget.AddEventListener( 'CLIK_buttonPress', QuitGame );
			bWasHandled = true;
			break;
		case( 'MusicLabel' ):
			Widget.SetText( TheLocalizer.GetLocalizedString( Music ) );
			break;
		case( 'MusicSlider' ):
			InitMusicSlider( Widget );
			break;
		case( 'SFXLabel' ):
			Widget.SetText( TheLocalizer.GetLocalizedString( SFX ) );
			break;
		case( 'SFXSlider' ):
			InitSFXSlider( Widget );
			break;
		case( 'AmbientLabel' ):
			Widget.SetText( TheLocalizer.GetLocalizedString( Ambient ) );
			break;
		case( 'AmbientSlider' ):
			InitAmbientSlider( Widget );
			break;
		case( 'ResolutionLabel' ):
			Widget.SetText( TheLocalizer.GetLocalizedString( Resolution ) );
			break;
		case( 'FullscreenLabel' ):
			Widget.SetText( TheLocalizer.GetLocalizedString( Fullscreen ) );
			break;
		case( 'Fullscreen' ):
			InitFullscreenCheckbox( Widget );
			break;
		case( 'LanguageLabel' ):
			Widget.SetText( TheLocalizer.GetLocalizedString( Language ) );
			break;
		case( 'LanguageSelector' ):
			InitLanguageSelector( Widget );
			break;
		case( 'ResolutionSelector' ):
			InitResolutionSelector( Widget );
			break;
		case( 'ApplyScreenResolutionButton' ):
			Widget.SetString( "label", TheLocalizer.GetLocalizedString( ApplyButton ) );
			tempWidget = GFxCLIKWidget( Widget );
			tempWidget.AddEventListener( 'CLIK_buttonPress', ResolutionChanged );		
			break;
		case( 'ApplyLanguageChangeButton' ):
			Widget.SetString( "label", TheLocalizer.GetLocalizedString( ApplyButton ) );
			tempWidget = GFxCLIKWidget( Widget );
			tempWidget.AddEventListener( 'CLIK_buttonPress', LangauageChanged );
			break;
		case( 'LeftClickControlsButton' ):
			Widget.SetString( "label", TheLocalizer.GetLocalizedString( LeftMouseText ) );
			tempWidget = GFxCLIKWidget( Widget );
			tempWidget.AddEventListener( 'CLIK_buttonPress', LeftClickOptionButtonClicked );
			bWasHandled = true;
			break;
		case( 'RightClickControlsButton' ):
			Widget.SetString( "label", TheLocalizer.GetLocalizedString( RightMouseText ) );
			tempWidget = GFxCLIKWidget( Widget );
			tempWidget.AddEventListener( 'CLIK_buttonPress', RightClickOptionButtonClicked );
			bWasHandled = true;
			break;
	}

	if( !bWasHandled )
		bWasHandled = super.WidgetInitialized( WidgetName, WidgetPath, Widget );

	return bWasHandled;
}


// Written by Preston Hulcy
function OpenLevel()
{
	SaveGame();
	if( levelToOpen >= 0 && Levels.Length > levelToOpen )
		ConsoleCommand( "open "$ Levels[ levelToOpen ] );
}


// Written by Preston Hulcy
function InitWidgetForLevel( int levelIndex, GFxObject Widget )
{
	local GFxCLIKWidget tempCLIKWidget;
	if( levelIndex < levels.Length )
	{
		Widget.SetString( "label", TheLocalizer.GetLocalizedString( LevelNames[ levelIndex ] ) );
		tempCLIKWidget = GFxCLIKWidget( Widget );
	
		
		switch( levelIndex )
		{
		case 0:
			if( SaveGameState.GetLevelStatus( 0 ) )
				tempCLIKWidget.AddEventListener( 'CLIK_buttonPress', OpenLevel1 );
			else
				tempCLIKWidget.SetVisible( false );
			break;
		case 1:
			if( SaveGameState.GetLevelStatus( 1 ) )
				tempCLIKWidget.AddEventListener( 'CLIK_buttonPress', OpenLevel2 );
			else
				tempCLIKWidget.SetVisible( false );
			break;
		case 2:
			if( SaveGameState.GetLevelStatus( 2 ) )
				tempCLIKWidget.AddEventListener( 'CLIK_buttonPress', OpenLevel3 );
			else
				tempCLIKWidget.SetVisible( false );
			break;
		case 3:
			if( SaveGameState.GetLevelStatus( 3 ) )
				tempCLIKWidget.AddEventListener( 'CLIK_buttonPress', OpenLevel4 );
			else
				tempCLIKWidget.SetVisible( false );
			break;
		case 4:
			if( SaveGameState.GetLevelStatus( 4 ) )
				tempCLIKWidget.AddEventListener( 'CLIK_buttonPress', OpenLevel5 );
			else
				tempCLIKWidget.SetVisible( false );
			break;
		}
	}
}


// Written by Preston Hulcy
function ResizeText( GFxClikWidget.EventData params )
{
	local string text;
	local GFxObject this;
	this = params._this;
	text = this.GetString( "label" );
	AutosizeTextFont( this.GetObject( "textField" ), text, 1 );
}


// Written by Preston Hulcy
function OpenLevel1( GFxCLIKWidget.EventData params )
{
	levelToOpen = 0;
	OpenLevel();
}


// Written by Preston Hulcy
function OpenLevel2( GFxCLIKWidget.EventData params )
{
	levelToOpen = 1;
	OpenLevel();
}


// Written by Preston Hulcy
function OpenLevel3( GFxCLIKWidget.EventData params )
{
	levelToOpen = 2;
	OpenLevel();
}


// Written by Preston Hulcy
function OpenLevel4( GFxCLIKWidget.EventData params )
{
	levelToOpen = 3;
	OpenLevel();
}


// Written by Preston Hulcy
function OpenLevel5( GFxCLIKWidget.EventData params )
{
	levelToOpen = 4;
	OpenLevel();
}


// Written by Chris Burris
function GoToLevelSelect( GFxCLIKWidget.EventData params )
{
	TheGameInfo.PlaySound( MenuClickSound );
	PlayButton.SetBool( "focused", false );
	
	if( bSubMenuShowing )
	{
		ControlsMC.SetVisible( false );
		OptionsMC.SetVisible( false );
		LevelSelectMC.SetVisible( true );
	}
	else
	{
		ControlsMC.SetVisible( false );
		OptionsMC.SetVisible( false );
		LevelSelectMC.SetVisible( true );
		SubMenuFadeInContainerMC.GotoAndStopI(1);
		SubMenuFadeInContainerMC.GotoAndPlayI(1);
		bSubMenuShowing = true;
	}
}


// Written by Chris Burris
function GoToControls( GFxCLIKWidget.EventData params )
{
	TheGameInfo.PlaySound( MenuClickSound );
	ControlsButton.SetBool( "focused", false );
	
	if( bSubMenuShowing )
	{
		LevelSelectMC.SetVisible( false );
		OptionsMC.SetVisible( false );
		ControlsMC.SetVisible( true );
	}
	else
	{
		LevelSelectMC.SetVisible( false );
		OptionsMC.SetVisible( false );
		ControlsMC.SetVisible( true );
		SubMenuFadeInContainerMC.GotoAndStopI(1);
		SubMenuFadeInContainerMC.GotoAndPlayI(1);
		bSubMenuShowing = true;
	}
}


// Written by Chris Burris
function GoToOptions( GFxCLIKWidget.EventData params )
{
	TheGameInfo.PlaySound( MenuClickSound );
	OptionsButton.SetBool( "focused", false );

	if( bSubMenuShowing )
	{
		ControlsMC.SetVisible( false );
		LevelSelectMC.SetVisible( false );
		OptionsMC.SetVisible( true );
	}
	else
	{
		ControlsMC.SetVisible( false );
		LevelSelectMC.SetVisible( false );
		OptionsMC.SetVisible( true );
		SubMenuFadeInContainerMC.GotoAndStopI(1);
		SubMenuFadeInContainerMC.GotoAndPlayI(1);
		bSubMenuShowing = true;
	}
}


// Written by Chris Burris
function GoToCredits( GFxCLIKWidget.EventData params )
{
	TheGameInfo.PlaySound( MenuClickSound );
	CreditsButton.SetBool( "focused", false );

	if( bSubMenuShowing )
	{
		bSubMenuShowing = false;
		SubMenuFadeInContainerMC.GotoAndStopI(11);
		SubMenuFadeInContainerMC.GotoAndPlayI(11);
		MainMenuFadeInContainerMC.GotoAndStopI(11);
		MainMenuFadeInContainerMC.GotoAndPlayI(11);
	}
	else
	{
		bSubMenuShowing = false;
		SubMenuFadeInContainerMC.GotoAndStopI(1);
		MainMenuFadeInContainerMC.GotoAndStopI(11);
		MainMenuFadeInContainerMC.GotoAndPlayI(11);
	}

	ScrollingCreditsContainerMC.GotoAndStopI(1);
	ScrollingCreditsContainerMC.GotoAndPlayI(1);

	EnableButton( CreditsBackButton );
}


// Written by Preston Hulcy
function GoBackToMainMenu( GFxCLIKWidget.EventData params )
{
	bSubMenuShowing = false;
	TheGameInfo.PlaySound( MenuClickSound );
	SubMenuFadeInContainerMC.GotoAndPlayI(11);
	SaveGameUtils.SaveGameSettings( SaveSettings, SaveGameUtils.SaveSettingsFileName );
	bIsCreditsShowing = false;
}


// Written by Chris Burris
function GoBackToMainMenuFromCredits( GFxCLIKWidget.EventData params )
{
	TheGameInfo.PlaySound( MenuClickSound );
	Root.GotoAndPlay( "MainMenu" );
	ScrollingCreditsContainerMC.GotoAndStopI(1);
	MainMenuFadeInContainerMC.GotoAndStopI(1);
	MainMenuFadeInContainerMC.GotoAndPlayI(1);
	DisableButton( CreditsBackButton );
	SaveGameUtils.SaveGameSettings( SaveSettings, SaveGameUtils.SaveSettingsFileName );
	bIsCreditsShowing = false;
}


// Written by Preston Hulcy
function QuitGame( GFxCLIKWidget.EventData params )
{
	ConsoleCommand( "quit" );
}


// Written by Preston Hulcy
function InitMusicSlider( GFxObject obj )
{
	MusicSlider = obj;
	MusicSlider.SetInt( "maximum", 100 );
	MusicSlider.SetInt( "value", SaveSettings.MusicVolume * 100 );
	bMusicSliderInitialized = true;
}


// Written by Preston Hulcy
function InitSFXSlider( GFxObject obj )
{
	SFXSlider = obj;
	SFXSlider.SetInt( "maximum", 100 );
	SFXSlider.SetInt( "value", SaveSettings.SFXVolume * 100 );
	bSFXSliderInitialized = true;
}


// Written by Preston Hulcy
function InitAmbientSlider( GFxObject obj )
{
	AmbientSlider = obj;
	AmbientSlider.SetInt( "maximum", 100 );
	AmbientSlider.SetInt( "value", SaveSettings.AmbientVolume * 100 );
	bAmbientSliderInitialized = true;
}


// Written by Preston Hulcy
function MusicSliderBarChanged( int value )
{
	local float vol;

	MusicSliderThumbMC.SetBool( "focused", false );

	if( bMusicSliderInitialized )
	{
		vol = float( value ) / 100.0f;
		ConsoleCommand( "SetAudioGroupVolume Music " $vol );
		SaveSettings.MusicVolume = vol;
	}
}


// Written by Preston Hulcy
function SFXSliderBarChanged( int value )
{
	local float vol;

	SFXSliderThumbMC.SetBool( "focused", false );

	if( bSFXSliderInitialized )
	{
		vol = float( value ) / 100.0f;
		ConsoleCommand( "SetAudioGroupVolume SFX " $vol );
		SaveSettings.SFXVolume = vol;
	}
}


// Written by Preston Hulcy
function AmbientSliderBarChanged( int value )
{
	local float vol;

	AmbientSliderThumbMC.SetBool( "focused", false );

	if( bAmbientSliderInitialized )
	{
		vol = float( value ) / 100.0f;
		ConsoleCommand( "SetAudioGroupVolume Ambient " $vol );
		SaveSettings.AmbientVolume = vol;
	}
}


// Written by Preston Hulcy
function InitFullscreenCheckbox( GFxObject obj )
{
	local GFxCLIKWidget clikWidget;
	FullscreenChecbox = obj;
	clikWidget = GFxCLIKWidget( FullscreenChecbox );
	if( clikWidget != none )
	{
		clikWidget.AddEventListener( 'CLIK_buttonPress', FullscreenClicked );
	}
	FullscreenChecbox.SetBool( "selected", bIsFullscreenSelected );
}


// Written by Preston Hulcy
function InitLanguageSelector( GFxObject obj )
{
	local GFxObject dataProvider;
	local int i;
	LanguageSelector = obj;
	
	dataProvider = LanguageSelector.GetObject( "dataProvider" );
	for( i = 0; i < TheLocalizer.Languages.Length; ++i )
	{
		dataProvider.SetElementString( i, TheLocalizer.Languages[i] );
	}
	LanguageSelector.SetInt( "selectedIndex", TheLocalizer.GetSelectedIndx() );
}


// Written by Preston Hulcy
function InitResolutionSelector( GFxObject obj )
{
	local GFxObject dataProvider;
	ResolutionSelector = obj;
	
	dataProvider = ResolutionSelector.GetObject( "dataProvider" );
	dataProvider.SetElementString( 0, "800x600" );
	dataProvider.SetElementString( 1, "1024x768" );
	dataProvider.SetElementString( 2, "1400x1050" );
	dataProvider.SetElementString( 3, "1280x720" );
	dataProvider.SetElementString( 4, "1600x900" );
	dataProvider.SetElementString( 5, "1920x1080" );
	ResolutionSelector.SetInt( "selectedIndex", 4 );
}


// Written by Preston Hulcy
function LangauageChanged( GFxCLIKWidget.EventData params )
{
	local string lngStr;

	LanguageSelectorPrevButtonMC.SetBool( "focused", false );
	LanguageSelectorNextButtonMC.SetBool( "focused", false );

	lngStr = LanguageSelector.GetObject( "textField" ).GetText();
	TheLocalizer.SetCurrentLanguageFromString( lngStr );

	SaveSettings.SetCurrentLanguage( TheLocalizer.CurrentLanguage );	
	SaveGameUtils.SaveGameSettings( SaveSettings, SaveGameUtils.SaveSettingsFileName );

	SetAllText();

	TheGameInfo.PlaySound( MenuClickSound );
}


// Written by Preston Hulcy
function ResolutionChanged( GFxCLIKWidget.EventData params )
{
	local string resStr;

	ResolutionSelectorPrevButtonMC.SetBool( "focused", false );
	ResolutionSelectorNextButtonMC.SetBool( "focused", false );

	resStr = ResolutionSelector.GetObject( "textField" ).GetText();
	
	if( bIsFullscreenSelected )
		resStr $= "f";
	else
		resStr $= "w";

	ConsoleCommand( "SETRES" @ resStr );

	TheGameInfo.PlaySound( MenuClickSound );
}


// Written by Preston Hulcy
function FullscreenClicked( GFxCLIKWidget.EventData params )
{
	local string resStr;
	bIsFullscreenSelected = !FullscreenChecbox.GetBool( "selected" );
	resStr = ResolutionSelector.GetObject( "textField" ).GetText();
	if( bIsFullscreenSelected )
		resStr $= "f";
	else
		resStr $= "w";
	ConsoleCommand( "SETRES" @ resStr );
	FullscreenChecbox.SetBool( "selected", bIsFullscreenSelected );
	FullscreenChecbox.SetBool( "focused", false );
}


// Written by Preston Hulcy
function LeftClickOptionButtonClicked( GFxCLIKWidget.EventData params )
{
	DisableButton( LeftClickOptionButtonMC );
	EnableButton( RightClickOptionButtonMC );
	LeftClickMouseControlsMC.SetVisible( true );
	RightClickMouseControlsMC.SetVisible( false );
	SaveSettings.bTheRightWay = true;
	TheGameInfo.PlaySound( MenuClickSound );
	SaveGame();
	`log( "Left Click Option Button clicked" );
}


// Written by Preston Hulcy
function RightClickOptionButtonClicked( GFxCLIKWidget.EventData params )
{
	DisableButton( RightClickOptionButtonMC );
	EnableButton( LeftClickOptionButtonMC );
	RightClickMouseControlsMC.SetVisible( true );
	LeftClickMouseControlsMC.SetVisible( false );
	SaveSettings.bTheRightWay = false;
	SaveGame();
	TheGameInfo.PlaySound( MenuClickSound );
	`log( "Right Click Option Button clicked" );
}


// Written by Preston Hulcy
function SaveGame()
{
	SaveGameUtils.SaveGameState( SaveGameState,  SaveGameUtils.SaveGameStateFileName );
	SaveGameUtils.SaveGameSettings( SaveSettings, SaveGameUtils.SaveSettingsFileName );
}


// Written by Chris Burris
function SetAllText()
{
	AutosizeTextFont( ClickButtonsTextTF, TheLocalizer.GetLocalizedString( ClickButtonsText ) );              
	AutosizeTextFont( DeselectUnitTextTF, TheLocalizer.GetLocalizedString( DeselectUnitText ) );               
	AutosizeTextFont( EndTurnTextTF, TheLocalizer.GetLocalizedString( EndTurnText ) );                   
	AutosizeTextFont( KeyboardTextTF, TheLocalizer.GetLocalizedString( KeyboardText ) );                         
	AutosizeTextFont( MouseTextTF, TheLocalizer.GetLocalizedString( MouseText ) );                      
	AutosizeTextFont( MoveAndAttackTextTF, TheLocalizer.GetLocalizedString( MoveAndAttackText ) );              
	AutosizeTextFont( MoveCameraKeyboardTextTF, TheLocalizer.GetLocalizedString( MoveCameraKeyboardText ) );         
	AutosizeTextFont( MoveCameraMouseTextTF, TheLocalizer.GetLocalizedString( MoveCameraMouseText ) );                         
	AutosizeTextFont( PauseF9TextTF, TheLocalizer.GetLocalizedString( PauseF9Text ), 2 );                    
	AutosizeTextFont( ProgressDialougeTextTF, TheLocalizer.GetLocalizedString( ProgressDialougeText ) );           
	AutosizeTextFont( SelectPlayerUnitsTextTF, TheLocalizer.GetLocalizedString( SelectPlayerUnitsText ) );          
	AutosizeTextFont( SelectUnitsTextTF, TheLocalizer.GetLocalizedString( SelectUnitsText ) ); 			
	AutosizeTextFont( SkipCutscenesTextTF, TheLocalizer.GetLocalizedString( SkipCutscenesText ) ); 				
	AutosizeTextFont( ToggleHealthBarsTextTF, TheLocalizer.GetLocalizedString( ToggleHealthBarsText ) ); 			
	AutosizeTextFont( UseActiveAbilitiesKeyboardTextTF, TheLocalizer.GetLocalizedString( UseActiveAbilitiesKeyboardText ) ); 
	AutosizeTextFont( UseActiveAbilitiesMouseTextTF, TheLocalizer.GetLocalizedString( UseActiveAbilitiesMouseText ) ); 	
	AutosizeTextFont( ZoomCameraTextTF, TheLocalizer.GetLocalizedString( ZoomCameraText ) );
	AutosizeTextFont( DevelopedByTextTF, TheLocalizer.GetLocalizedString( DevelopedByText ) );
	AutosizeTextFont( ProductionTextTF, TheLocalizer.GetLocalizedString( ProductionText ) );
	AutosizeTextFont( TrevorHilzTextTF, TheLocalizer.GetLocalizedString( TrevorHilzText ) );
	AutosizeTextFont( ProducerTextTF, TheLocalizer.GetLocalizedString( ProducerText ) );
	AutosizeTextFont( NavinSupphapholsiriTextTF, TheLocalizer.GetLocalizedString( NavinSupphapholsiriText ) );
	AutosizeTextFont( PublishingProducerTextTF, TheLocalizer.GetLocalizedString( PublishingProducerText ) );
	AutosizeTextFont( GameDesignerTextTF, TheLocalizer.GetLocalizedString( GameDesignerText ) );
	AutosizeTextFont( RaulSiqueiraTextTF, TheLocalizer.GetLocalizedString( RaulSiqueiraText ) );
	AutosizeTextFont( DesignTextTF, TheLocalizer.GetLocalizedString( DesignText ) );
	AutosizeTextFont( ChrisMarshallTextTF, TheLocalizer.GetLocalizedString( ChrisMarshallText ) );
	AutosizeTextFont( LeadLevelDesignerTextTF, TheLocalizer.GetLocalizedString( LeadLevelDesignerText ) );
	AutosizeTextFont( ChrisBurrisTextTF, TheLocalizer.GetLocalizedString( ChrisBurrisText ) );
	AutosizeTextFont( UIDesignerTextTF, TheLocalizer.GetLocalizedString( UIDesignerText ) );
	AutosizeTextFont( EastonMundineTextTF, TheLocalizer.GetLocalizedString( EastonMundineText ) );
	AutosizeTextFont( LevelDesignerTextTF, TheLocalizer.GetLocalizedString( LevelDesignerText ) );
	AutosizeTextFont( LevelDesignerText2TF, TheLocalizer.GetLocalizedString( LevelDesignerText ) );
	AutosizeTextFont( LevelDesignerText3TF, TheLocalizer.GetLocalizedString( LevelDesignerText ) );
	AutosizeTextFont( GameplayDesignerTextTF, TheLocalizer.GetLocalizedString( GameplayDesignerText ) );
	AutosizeTextFont( TraddThompsonTextTF, TheLocalizer.GetLocalizedString( TraddThompsonText ) );
	AutosizeTextFont( SystemsDesignerTextTF, TheLocalizer.GetLocalizedString( SystemsDesignerText ) );
	AutosizeTextFont( SoundDesignerTextTF, TheLocalizer.GetLocalizedString( SoundDesignerText ) );
	AutosizeTextFont( ErikVaughnTextTF, TheLocalizer.GetLocalizedString( ErikVaughnText ) );
	AutosizeTextFont( WorldBuilderTextTF, TheLocalizer.GetLocalizedString( WorldBuilderText ) );
	AutosizeTextFont( ArtTextTF, TheLocalizer.GetLocalizedString( ArtText ) );
	AutosizeTextFont( AshleyHaynieTextTF, TheLocalizer.GetLocalizedString( AshleyHaynieText ) );
	AutosizeTextFont( LeadArtistTextTF, TheLocalizer.GetLocalizedString( LeadArtistText ) );
	AutosizeTextFont( CharacterArtistTextTF, TheLocalizer.GetLocalizedString( CharacterArtistText ) );
	AutosizeTextFont( HammedAlTamimiTextTF, TheLocalizer.GetLocalizedString( HammedAlTamimiText ) );
	AutosizeTextFont( EnvironmentArtistTextTF, TheLocalizer.GetLocalizedString( EnvironmentArtistText ) );
	AutosizeTextFont( EnvironmentArtistText2TF, TheLocalizer.GetLocalizedString( EnvironmentArtistText ) );
	AutosizeTextFont( EnvironmentArtistText3TF, TheLocalizer.GetLocalizedString( EnvironmentArtistText ) );
	AutosizeTextFont( StephaniePitcherTextTF, TheLocalizer.GetLocalizedString( StephaniePitcherText ) );
	AutosizeTextFont( TaylorSauerTextTF, TheLocalizer.GetLocalizedString( TaylorSauerText ) );
	AutosizeTextFont( UIArtistTextTF, TheLocalizer.GetLocalizedString( UIArtistText ) );
	AutosizeTextFont( TaylorWrightTextTF, TheLocalizer.GetLocalizedString( TaylorWrightText ) );
	AutosizeTextFont( TechnicalArtistTextTF, TheLocalizer.GetLocalizedString( TechnicalArtistText ) );
	AutosizeTextFont( ProgrammingTextTF, TheLocalizer.GetLocalizedString( ProgrammingText ) );
	AutosizeTextFont( PrestonHulcyTextTF, TheLocalizer.GetLocalizedString( PrestonHulcyText ) );
	AutosizeTextFont( LeadProgrammerTextTF, TheLocalizer.GetLocalizedString( LeadProgrammerText ) );
	AutosizeTextFont( UIProgrammerTextTF, TheLocalizer.GetLocalizedString( UIProgrammerText ) );
	AutosizeTextFont( ScottBoykinTextTF, TheLocalizer.GetLocalizedString( ScottBoykinText ) );
	AutosizeTextFont( GameplayProgrammerTextTF, TheLocalizer.GetLocalizedString( GameplayProgrammerText ) );
	AutosizeTextFont( AndrewNguyenTextTF, TheLocalizer.GetLocalizedString( AndrewNguyenText ) );
	AutosizeTextFont( AIProgrammerTextTF, TheLocalizer.GetLocalizedString( AIProgrammerText ) );
	AutosizeTextFont( WritingTextTF, TheLocalizer.GetLocalizedString( WritingText ) );
	AutosizeTextFont( AbigailManuelTextTF, TheLocalizer.GetLocalizedString( AbigailManuelText ) );
	AutosizeTextFont( DialogueAndStoryWriterTextTF, TheLocalizer.GetLocalizedString( DialogueAndStoryWriterText ) );
	AutosizeTextFont( BrunoBertachiniDAngeloTextTF, TheLocalizer.GetLocalizedString( BrunoName ) );
	AutosizeTextFont( SpanishTranslationTextTF, TheLocalizer.GetLocalizedString( SpanishTranslationText ) );
	AutosizeTextFont( frostmothTextTF, TheLocalizer.GetLocalizedString( frostmothText ) );
	AutosizeTextFont( MothproofScriptTextTF, TheLocalizer.GetLocalizedString( MothproofScriptText ) );
	AutosizeTextFont( FontsquirrelTextTF, TheLocalizer.GetLocalizedString( FontsquirrelText ) );
	AutosizeTextFont( MusicAndSoundTextTF, TheLocalizer.GetLocalizedString( MusicAndSoundText ) );
	AutosizeTextFont( VictorSiqueiraTextTF, TheLocalizer.GetLocalizedString( VictorSiqueiraText ) );
	AutosizeTextFont( ComposerTextTF, TheLocalizer.GetLocalizedString( ComposerText ) );
	AutosizeTextFont( AaronRoseTextTF, TheLocalizer.GetLocalizedString( AaronRoseText ) );
	AutosizeTextFont( SoundEffectsTextTF, TheLocalizer.GetLocalizedString( SoundEffectsText ) );
	AutosizeTextFont( MusicPerformedByTextTF, TheLocalizer.GetLocalizedString( MusicPerformedByText ) );
	AutosizeTextFont( SMUMeadowsStudentOrchestraTextTF, TheLocalizer.GetLocalizedString( SMUMeadowsStudentOrchestraText ) );
	AutosizeTextFont( ComposersTextTF, TheLocalizer.GetLocalizedString( ComposersText ) );
	AutosizeTextFont( GuidoArcelaTextTF, TheLocalizer.GetLocalizedString( GuidoArcelaText ) );
	AutosizeTextFont( GuidoArcela2TextTF, TheLocalizer.GetLocalizedString( GuidoArcelaText ) );
	AutosizeTextFont( GuidoArcela3TextTF, TheLocalizer.GetLocalizedString( GuidoArcelaText ) );
	AutosizeTextFont( GuidoArcela4TextTF, TheLocalizer.GetLocalizedString( GuidoArcelaText ) );
	AutosizeTextFont( OrquestratorsTextTF, TheLocalizer.GetLocalizedString( OrquestratorsText ) );
	AutosizeTextFont( ConductorTextTF, TheLocalizer.GetLocalizedString( ConductorText ) );
	AutosizeTextFont( JesusMartinezTextTF, TheLocalizer.GetLocalizedString( JesusMartinezText ) );
	AutosizeTextFont( CopyistTextTF, TheLocalizer.GetLocalizedString( CopyistText ) );
	AutosizeTextFont( RecordingEngineerTextTF, TheLocalizer.GetLocalizedString( RecordingEngineerText ) );
	AutosizeTextFont( BrandonWrightTextTF, TheLocalizer.GetLocalizedString( BrandonWrightText ) );
	AutosizeTextFont( AndrewCorbittTextTF, TheLocalizer.GetLocalizedString( AndrewCorbittName ) );
	AutosizeTextFont( Violin1TextTF, TheLocalizer.GetLocalizedString( Violin1Text ) );
	AutosizeTextFont( MaiKeOlegTextTF, TheLocalizer.GetLocalizedString( MaiKeOlegText ) );
	AutosizeTextFont( PaytonTextTF, TheLocalizer.GetLocalizedString( PaytonText ) );
	AutosizeTextFont( Violin2TextTF, TheLocalizer.GetLocalizedString( Violin2Text ) );
	AutosizeTextFont( JiahAllisonTextTF, TheLocalizer.GetLocalizedString( JiahAllisonText ) );
	AutosizeTextFont( ScottTextTF, TheLocalizer.GetLocalizedString( ScottText ) );
	AutosizeTextFont( ViolaTextTF, TheLocalizer.GetLocalizedString( ViolaText ) );
	AutosizeTextFont( SamanthaTextTF, TheLocalizer.GetLocalizedString( SamanthaText ) );
	AutosizeTextFont( TiffanayTextTF, TheLocalizer.GetLocalizedString( TiffanayText ) );
	AutosizeTextFont( CelloTextTF, TheLocalizer.GetLocalizedString( CelloText ) );
	AutosizeTextFont( TrentTextTF, TheLocalizer.GetLocalizedString( TrentText ) );
	AutosizeTextFont( XavierTextTF, TheLocalizer.GetLocalizedString( XavierText ) );
	AutosizeTextFont( DoubleBassTextTF, TheLocalizer.GetLocalizedString( DoubleBassText ) );
	AutosizeTextFont( GregorioTextTF, TheLocalizer.GetLocalizedString( GregorioText ) );
	AutosizeTextFont( TroyTextTF, TheLocalizer.GetLocalizedString( TroyText ) );
	AutosizeTextFont( HarpTextTF, TheLocalizer.GetLocalizedString( HarpText ) );
	AutosizeTextFont( SarahTextTF, TheLocalizer.GetLocalizedString( SarahText ) );
	AutosizeTextFont( FluteTextTF, TheLocalizer.GetLocalizedString( FluteText ) );
	AutosizeTextFont( SamiTextTF, TheLocalizer.GetLocalizedString( SamiText ) );
	AutosizeTextFont( EmilyZTextTF, TheLocalizer.GetLocalizedString( EmilyZText ) );
	AutosizeTextFont( ErinDoyleTextTF, TheLocalizer.GetLocalizedString( ErinDoyleText ) );
	AutosizeTextFont( OboeTextTF, TheLocalizer.GetLocalizedString( OboeText ) );
	AutosizeTextFont( HannahTextTF, TheLocalizer.GetLocalizedString( HannahText ) );
	AutosizeTextFont( ClarinetTextTF, TheLocalizer.GetLocalizedString( ClarinetText ) );
	AutosizeTextFont( RickyTextTF, TheLocalizer.GetLocalizedString( RickyText ) );
	AutosizeTextFont( JoshuaTextTF, TheLocalizer.GetLocalizedString( JoshuaText ) );
	AutosizeTextFont( LibbieTextTF, TheLocalizer.GetLocalizedString( LibbieText ) );
	AutosizeTextFont( BassonTextTF, TheLocalizer.GetLocalizedString( BassonText ) );   
	AutosizeTextFont( BrittanyHTextTF, TheLocalizer.GetLocalizedString( BrittanyHText ) );
	AutosizeTextFont( AlecSalehTextTF, TheLocalizer.GetLocalizedString( AlecSalehText ) );
	AutosizeTextFont( HornTextTF, TheLocalizer.GetLocalizedString( HornText ) );
	AutosizeTextFont( DanielTTextTF, TheLocalizer.GetLocalizedString( DanielTText ) );
	AutosizeTextFont( VinceGTextTF, TheLocalizer.GetLocalizedString( VinceGText ) );
	AutosizeTextFont( ScottLTextTF, TheLocalizer.GetLocalizedString( ScottLText ) );
	AutosizeTextFont( MichaelCTextTF, TheLocalizer.GetLocalizedString( MichaelCText ) );
	AutosizeTextFont( TrumpetTextTF, TheLocalizer.GetLocalizedString( TrumpetText ) );
	AutosizeTextFont( DylanTextTF, TheLocalizer.GetLocalizedString( DylanText ) );
	AutosizeTextFont( AaronTextTF, TheLocalizer.GetLocalizedString( AaronText ) );
	AutosizeTextFont( BryceTextTF, TheLocalizer.GetLocalizedString( BryceText ) );
	AutosizeTextFont( TromboneTextTF, TheLocalizer.GetLocalizedString( TromboneText ) );
	AutosizeTextFont( TrevorMTextTF, TheLocalizer.GetLocalizedString( TrevorMText ) );
	AutosizeTextFont( BrettWTextTF, TheLocalizer.GetLocalizedString( BrettWText ) );
	AutosizeTextFont( SurajTextTF, TheLocalizer.GetLocalizedString( SurajText ) );
	AutosizeTextFont( TubaTextTF, TheLocalizer.GetLocalizedString( TubaText ) );
	AutosizeTextFont( BrandonTextTF, TheLocalizer.GetLocalizedString( BrandonText ) );
	AutosizeTextFont( PercussionTextTF, TheLocalizer.GetLocalizedString( PercussionText ) );
	AutosizeTextFont( EdwinStreckTextTF, TheLocalizer.GetLocalizedString( EdwinStreckText ) );
	AutosizeTextFont( AlejandroSalazarTextTF, TheLocalizer.GetLocalizedString( AlejandroSalazarText ) );
	AutosizeTextFont( GuitarTextTF, TheLocalizer.GetLocalizedString( GuitarText ) );
	AutosizeTextFont( JuanPabloGonzalezTextTF, TheLocalizer.GetLocalizedString( JuanPabloGonzalezText ) );
	AutosizeTextFont( SpecialThanksTextTF, TheLocalizer.GetLocalizedString( SpecialThanksText ) );
	AutosizeTextFont( MattStreitTextTF, TheLocalizer.GetLocalizedString( MattStreitText ) );
	AutosizeTextFont( MarkNaushaTextTF, TheLocalizer.GetLocalizedString( MarkNaushaText ) );
	AutosizeTextFont( GaryBrubakerTextTF, TheLocalizer.GetLocalizedString( GaryBrubakerText ) );
	AutosizeTextFont( SquirrelEiserlohTextTF, TheLocalizer.GetLocalizedString( SquirrelEiserlohText ) );
	AutosizeTextFont( BorisFisherTextTF, TheLocalizer.GetLocalizedString( BorisFisherText ) );
	AutosizeTextFont( NickHeitzmanTextTF, TheLocalizer.GetLocalizedString( NickHeitzmanText ) );
	AutosizeTextFont( JonSkinnerTextTF, TheLocalizer.GetLocalizedString( JonSkinnerText ) );
	AutosizeTextFont( JoelFarrellTextTF, TheLocalizer.GetLocalizedString( JoelFarrellText ) );      
	AutosizeTextFont( CarlosGutierrezTextTF, TheLocalizer.GetLocalizedString( CarlosGutierrezText ) );  
	AutosizeTextFont( MattLangerTextTF, TheLocalizer.GetLocalizedString( MattLangerText ) );       
	AutosizeTextFont( MickMancusoTextTF, TheLocalizer.GetLocalizedString( MickMancusoText ) );      
	AutosizeTextFont( MyqueOuelletteTextTF, TheLocalizer.GetLocalizedString( MyqueOuelletteText ) );   
	AutosizeTextFont( ElizabethStringerTextTF, TheLocalizer.GetLocalizedString( ElizabethStringerText ) );
	AutosizeTextFont( ThanksToTextTF, TheLocalizer.GetLocalizedString( ThanksToText ) );
	AutosizeTextFont( EndingTextTF, TheLocalizer.GetLocalizedString( EndingText ), 2 );

	PlayButton.SetString( "label", TheLocalizer.GetLocalizedString( Play ) );               
	ControlsButton.SetString( "label", TheLocalizer.GetLocalizedString( Controls ) );			
	OptionsButton.SetString( "label", TheLocalizer.GetLocalizedString( Options ) );				 
	CreditsButton.SetString( "label", TheLocalizer.GetLocalizedString( Credits ) );				 
	QuitMC.SetString( "label", TheLocalizer.GetLocalizedString( Quit ) );						
	Level1.SetString( "label", TheLocalizer.GetLocalizedString( LevelNames[ 0 ] ) );					 
	Level2.SetString( "label", TheLocalizer.GetLocalizedString( LevelNames[ 1 ] ) );					 
	Level3.SetString( "label", TheLocalizer.GetLocalizedString( LevelNames[ 2 ] ) );					 
	Level4.SetString( "label", TheLocalizer.GetLocalizedString( LevelNames[ 3 ] ) );					 
	Level5.SetString( "label", TheLocalizer.GetLocalizedString( LevelNames[ 4 ] ) );					 
	AutosizeTextFont( LevelSelectTitleTF, TheLocalizer.GetLocalizedString( LevelSelect ) );			
	AutosizeTextFont( OptionsTitleTF, TheLocalizer.GetLocalizedString( Options ) );				
	AutosizeTextFont( MusicLabelTF, TheLocalizer.GetLocalizedString( Music ) );				
	AutosizeTextFont( AmbientLabelTF, TheLocalizer.GetLocalizedString( Ambient ) );				
	AutosizeTextFont( SFXLabelTF, TheLocalizer.GetLocalizedString( SFX ) );					
	AutosizeTextFont( ResolutionLabelTF, TheLocalizer.GetLocalizedString( Resolution ) );			
	AutosizeTextFont( FullscreenLabelTF, TheLocalizer.GetLocalizedString( Fullscreen ) );			
	AutosizeTextFont( LanguageLabelTF, TheLocalizer.GetLocalizedString( Language ) );				  
	ApplyScreenResolutionButton.SetString( "label", TheLocalizer.GetLocalizedString( ApplyButton ) );
	ApplyLanguageChangeButton.SetString( "label", TheLocalizer.GetLocalizedString( ApplyButton ) );  
	CreditsBackButton.SetString( "label", TheLocalizer.GetLocalizedString( Back ) );

	AutosizeTextFont( ClickButtonsTextRightClickTF , TheLocalizer.GetLocalizedString( ClickButtonsText ) );
	AutosizeTextFont( SelectUnitsTextRightClicktTF, TheLocalizer.GetLocalizedString( SelectUnitsText ) );
	AutosizeTextFont( ZoomCameraTextRightClickTF, TheLocalizer.GetLocalizedString( ZoomCameraText ) );
	AutosizeTextFont( MoveAndAttackTextRightClickTF, TheLocalizer.GetLocalizedString( MoveAndAttackText ) );
	AutosizeTextFont( UseActiveAbilitiesMouseTextRightClickTF, TheLocalizer.GetLocalizedString( UseActiveAbilitiesMouseText ) );

	LeftClickOptionButtonMC.SetString( "label", TheLocalizer.GetLocalizedString( ComplexText ) );
	RightClickOptionButtonMC.SetString( "label", TheLocalizer.GetLocalizedString( NormalText ) );
	AutosizeTextFont( LeftClickOptionButtonTF, TheLocalizer.GetLocalizedString( ComplexText ) );
	AutosizeTextFont( RightClickOptionButtonTF, TheLocalizer.GetLocalizedString( NormalText ) );
}


// Written by Chris Burris
function AutosizeTextFont( GFxObject obj, string txt, int numOfLines = 1 )
{
	ActionScriptVoid("_root.Autosize");
}


// Written by Chris Burris
function EnableButton(GFxObject obj)
{
	ActionScriptVoid("_root.EnableButton");
}


// Written by Chris Burris
function DisableButton(GFxObject obj)
{
	ActionScriptVoid("_root.DisableButton");
}


// Written by Chris Burris
function CreditsTransition()
{
	Root.GotoAndPlay( "Credits" );
	bIsCreditsShowing = true;
}


// Written by Preston Hulcy
function UpdateUnlockedLevels()
{
	local int i;
	local int farthestLevelUnlocked;
	farthestLevelUnlocked = -1;

	for( i = 0; i < SaveGameState.LevelStatuses.Length; ++i )
	{
		if( SaveGameState.GetLevelStatus( i ) )
		{
			farthestLevelUnlocked = i;
		}
	}

	if( farthestLevelUnlocked != - 1 )
	{
		for( i = farthestLevelUnlocked - 1; i >= 0; --i )
		{
			SaveGameState.SetLevelStatus( i, true );
		}
	}
	else
	{
		SaveGameState.SetLevelStatus( 0, true );
	}
}


DefaultProperties
{
	WidgetBindings.Add( ( WidgetName="Level1", WidgetClass=class'GFxCLIKWidget' ) )
	WidgetBindings.Add( ( WidgetName="Level2", WidgetClass=class'GFxCLIKWidget' ) )
	WidgetBindings.Add( ( WidgetName="Level3", WidgetClass=class'GFxCLIKWidget' ) )
	WidgetBindings.Add( ( WidgetName="Level4", WidgetClass=class'GFxCLIKWidget' ) )
	WidgetBindings.Add( ( WidgetName="Level5", WidgetClass=class'GFxCLIKWidget' ) )
	WidgetBindings.Add( ( WidgetName="PlayButton", WidgetClass=class'GFxCLIKWidget' ) )
	WidgetBindings.Add( ( WidgetName="ControlsButton", WidgetClass=class'GFxCLIKWidget' ) )
	WidgetBindings.Add( ( WidgetName="OptionsButton", WidgetClass=class'GFxCLIKWidget' ) )
	WidgetBindings.Add( ( WidgetName="CreditsButton", WidgetClass=class'GFxCLIKWidget' ) )
	WidgetBindings.Add( ( WidgetName="CreditsBackButton", WidgetClass=class'GFxCLIKWidget' ) )
	WidgetBindings.Add( ( WidgetName="Quit", WidgetClass=class'GFxCLIKWidget' ) )
	WidgetBindings.Add( ( WidgetName="ResolutionSelector", WidgetClass=class'GFxCLIKWidget' ) )
	WidgetBindings.Add( ( WidgetName="ApplyScreenResolutionButton", WidgetClass=class'GFxCLIKWidget' ) )
	WidgetBindings.Add( ( WidgetName="LanguageSelector", WidgetClass=class'GFxCLIKWidget' ) )
	WidgetBindings.Add( ( WidgetName="Fullscreen", WidgetClass=class'GFxCLIKWidget' ) )
	WidgetBindings.Add( ( WidgetName="ApplyLanguageChangeButton", WidgetClass=class'GFxCLIKwidget' ) )
	WidgetBindings.Add( ( WidgetName="LeftClickControlsButton", WidgetClass=class'GFxCLIKWidget' ) )
	WidgetBindings.Add( ( WidgetName="RightClickControlsButton", WidgetClass=class'GFxCLIKWidget' ) )

	levelToOpen = 0;
	MovieInfo=SwfMovie'BS_FrontEnd.BS_FrontEnd'


	bIsFullscreenSelected = true
	bResolutionNeedsToChange = false
	DefaultScreenRes="1920x1080f"

	DefaultLanguage="English"
	
	MenuClickSound = SoundCue'bs_HudUi.SFX.BS_SFX_MenuClick_CUE'

	bMusicSliderInitialized=false
	bSFXSliderInitialized=false
	bAmbientSliderInitialized=false
	bIsCreditsShowing = false
}
