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

class BS_GFxHUDMoviePlayer extends GFxMoviePlayer;

struct ActionToolTip
{
	var GFxObject ActionToolTipMC;
	var GFxObject PopupMC;
	var GFxObject Name;
	var GFxObject Desc;
	var GFxObject HotKeyInfoMC;
	var GFxObject HotKeyInfoTF;
	var GFxObject PassiveTextTF;
	var GFxObject BackgroundMC;
};

enum CursorType
{
	DUMMY_CURSOR,
	DEFAULT_CURSOR,
	MOVE_CURSOR,
	ATTACK_CURSOR,
	SPECIAL_ABILITY_CURSOR
};

enum UnitID
{
	NO_UNIT,
	BJORN,
	DAG,
	FREYA,
	ILIANA,
	BANDIT,
	BANDIT_AXE_THROWER,
	BANDIT_SUMMONER,
	BANDIT_SEER_GUARD,
	LOKI,
	SHADOW_BJORN,
	SHADOW_DAG,
	SHADOW_FREYA,
	SHADOW_ILIANA,
	SPIRIT_BERSERKER,
	SPIRIT_AXE_THROWER,
	SPIRIT_SHIELD_MAIDEN,
	SPIRIT_SEER,
	NO_SELECTION,
	BJORN_HURT,
	DAG_HURT,
	FREYA_HURT,
	ILIANA_HURT,
	ODIN,
	BJORN_ANGRY,
	BJORN_HAPPY,
	DAG_ANGRY,
	DAG_HAPPY,
	FREYA_ANGRY,
	FREYA_HAPPY,
	ILIANA_ANGRY,
	ILIANA_HAPPY
};

enum StatusEffectID
{
	REJUVENATION,
	MEAD_BOMB,
	CRIPPLE,
	SHOUT,
	BLOOD_LUST,
	BLIND,
	BURNING_BLOOD,
	DEFENSIVE_STANCE,
	SNIPE_STANCE,
	SHIELD_WALL,
	STATIC_SHIELD,
	DANGER_ZONE
};

enum HoverOverInfoIconID
{
	NO_ICON,
	REJUVENATION,
	CRIPPLE,
	SHOUT,
	BLOOD_LUST,
	BLIND,
	BURNING_BLOOD,
	DEFENSIVE_STANCE,
	SNIPE_STANCE,
	SHIELD_WALL,
	STATIC_SHIELD,
	INVINCIBILITY,
	TEMPEST,
	WHIRLWIND,
	CHARGE,
	DRINK,
	PULL,
	VORTEX,
	KICK,
	POWER_STRIKE,
	BLOOD_DRINKER,
	LIGHTNING_STORM,
	HEAL,
	HP_BUFF,
	ATK_BUFF,
	POINT_BLANK_TRAINING,
	BOUNCING_AXE,
	MEAD_BOMB,
	DANGER_ZONE_EFFECT,
	BLOOD_DRINKER_NOAP,
	BLOOD_LUST_NOAP,
	BOUNCING_AXE_NOAP,
	BURNING_BLOOD_NOAP,
	CHARGE_NOAP,
	CRIPPLE_NOAP,
	DEFENSIVE_STANCE_NOAP,
	DRINK_NOAP,
	HEAL_NOAP,
	KICK_NOAP,
	LIGHTNING_STORM_NOAP,
	MEAD_BOMB_NOAP,
	POWER_STRIKE_NOAP,
	PULL_NOAP,
	REJUVENATION_NOAP,
	SNIPE_STANCE_NOAP,
	VORTEX_NOAP,
	BLIND_NOAP,
	ATK_BUFF_NOAP,
	HP_BUFF_NOAP,
	POINT_BLANK_TRAINING_NOAP,
	WHIRLWIND_NOAP,
	SHIELD_WALL_NOAP,
	SHOUT_NOAP,
	STATIC_SHIELD_NOAP
};

enum LevelIndex
{
	LEVEL_1,
	LEVEL_2,
	LEVEL_3,
	LEVEL_4,
	LEVEL_5,
	LEVEL_6
};

struct Units
{
	var GFxObject UnitsMC;              
	var GFxObject BjornMC;         
	var GFxObject DagMC;           
	var GFxObject FreyaMC;         
	var GFxObject IlianaMC;        
	var GFxObject LabelTF;        
	var GFxObject BjornButtonMC;
	var GFxObject BjornButtonPictureMC;
	var GFxObject DagButtonMC;
	var GFxObject DagButtonPictureMC;
	var GFxObject FreyaButtonMC;
	var GFxObject FreyaButtonPictureMC;
	var GFxObject IlianaButtonMC;
	var GFxObject IlianaButtonPictureMC;
	var GFxObject BjornHealthBarMC;
	var GFxObject DagHealthBarMC; 
	var GFxObject FreyaHealthBarMC; 
	var GFxObject IlianaHealthBarMC; 
	var GFxObject BjornAPLabelTF;  
	var GFxObject DagAPLabelTF;    
	var GFxObject FreyaAPLabelTF;  
	var GFxObject IlianaAPLabelTF;	
	var GFxObject BjornAPNumTF;	
	var GFxObject DagAPNumTF;		
	var GFxObject FreyaAPNumTF;	
	var GFxObject IlianaAPNumTF;
	var GFxObject UnitsBackgroundMC; 
};

struct UnitInfo
{
	var GFxObject InfoMC;
	var GFxObject Portrait;
	var GFxObject Name;
	var GFxObject APContainer;
	var GFxObject APLeft;
	var GFxObject APNumber;
	var GFxObject HPContainer;
	var GFxObject HP;
	var GFxObject MaxHP;
	var GFxObject HPBar;
	var GFxObject AtkContainer;
	var GFxObject Atk;
	var GFxObject ClassName;
	var GFxObject BackgroundMC;
	var GFxObject BuffInfoMC;
	var GFxObject APPlusButtonMC;
	var GFxObject HPPlusButtonMC;
	var GFxObject AtkPlusButtonMC;
	var GFxObject APButtonMC;
	var GFxObject HPButtonMC;
	var GFxObject HPButtonTF;
	var GFxObject AtkButtonMC;
	var GFxObject AtkButtonTF;
	var GFxObject CombatLockButtonMC;
	var GFxObject UnitNoAPFadeOutMC;
	var GFxObject UnitTypeButtonMC;
	var GFxObject UnitTypeButtonTF;
	var GFxObject UnitInfoBackgroundMC;
};

struct StatusEffectIcons
{
	var GFxObject StatusEffectsMC;
	var GFxObject StatusEffectsBackgroundMC;
	var GFxObject StatusEffectInfoMC;
	var GFxObject StatusEffectNameTF;
	var GFxObject StatusEffectDescriptionTF;
	var GFxObject StatusEffectTurnsLeftTF;
	var GFxObject StatusEffectDescriptionIconsMC;
	var GFxObject StatusEffect1MC;
	var GFxObject StatusEffect2MC;
	var GFxObject StatusEffect3MC;
	var GFxObject StatusEffect4MC;
	var GFxObject StatusEffect5MC;
	var GFxObject StatusEffect6MC;
	var GFxObject StatusEffect7MC;
	var GFxObject StatusEffect8MC;
	var GFxObject StatusEffectIcons1[12];
	var GFxObject StatusEffectIcons2[12];
	var GFxObject StatusEffectIcons3[12];
	var GFxObject StatusEffectIcons4[12];
	var GFxObject StatusEffectIcons5[12];
	var GFxObject StatusEffectIcons6[12];
	var GFxObject StatusEffectIcons7[12];
	var GFxObject StatusEffectIcons8[12];
};

struct ActionsInfo
{
	var GFxObject ActionsInfoMC;
	var GFxObject PlayerActionButtonsMC;
	var GFxObject EnemyActionsMC;
	var GFxObject AbilityNumbersMC;
	var GFxObject BackgroundMC;
	var GFxObject AbilitiesBackgroundMC;
};

struct ActionsMouseControls
{
	var GFxObject ActionsMouseControlsMC;
	var GFxObject UseTF;
	var GFxObject DeselectTF;
};

struct TurnInfo
{
	var GFxObject InfoMC;
	var GFxObject BackgroundMC;
	var GFxObject TurnNumberTF;
	var GFxObject EndTurnButtonMC;
	var GFxObject EndTurnButtonTF;
	var GFxObject PlaySpeedButtonMC;
	var GFxObject MovePreviewButtonMC;
	var GFxObject CurrentPlayerTF;
	var GFxObject ObjectiveTextTF;
	var GFxObject PauseButtonMC;
	var GFxObject TurnInfoBackgroundMC;
};

struct TurnTransition
{
	var GFxObject TurnTransitionMC;
	var GFxObject PlayerTurnMC;
	var GFxObject PlayerTurnTF;
    var GFxObject EnemyTurnMC;
	var GFxObject EnemyTurnTF;
};

struct LevelOutcome
{
	var GFxObject LevelOutcomeMC;
	var GFxObject VictoryMC;
	var GFxObject VictoryTF;
    var GFxObject DefeatMC;
	var GFxObject DefeatTF;
};

struct Message
{
	var GFxObject MessageMC;
	var GFxObject MessageTF;
};

struct Dialogue
{
	var GFxObject DialogueMC;
	var GFxObject DialogueButtonMC;
	var GFxObject DialogueButtonTF;
	var GFxObject LeftDialogueTextMC;
	var GFxObject RightDialogueTextMC;
	var GFxObject LeftDialogueTextTF;
	var GFxObject RightDialogueTextTF;
	var GFxObject LeftSpeakerMC;
	var GFxObject RightSpeakerMC;
	var GFxObject LeftSpeakerTF;
	var GFxObject RightSpeakerTF;
	var GFxObject LeftSpeakerPictureMC;
	var GFxObject RightSpeakerPictureMC;
	var GFxObject LeftPictureCoverMC;
	var GFxObject RightPictureCoverMC;
};

struct HoverOverInfo
{
	var GFxObject HoverOverInfoTitleTF;
	var GFxObject HoverOverInfoInfoTF;
	var GFxObject HoverOverInfoCornerTF;
	var GFxObject HoverOverInfoAPTextTF;
	var GFxObject HoverOverInfoRangeTF;
	var GFxObject HoverOverInfoIconMC;
	var GFxObject HoverOverInfoCombatLockIconMC;
};

var BS_Pawn CurrentUnitSelected;
var BS_Pawn CurrentlyHoveringOver;
var BS_Pawn BjornUnit;
var BS_Pawn DagUnit;
var BS_Pawn FreyaUnit;
var BS_Pawn IlianaUnit;
var BS_TurnManager TheTurnManager;
var BS_GFxHUD_EndOfLevelScreen EndOfLevelScreen;
var BS_GFxHUD_GameOverScreen GameOverScreen;
var BS_GFxHUD_PauseMenu PauseMenu;
var BS_GFxHUD_ProgressBar ProgressBar;
var byte TeamNumber;
var int CurrentTurnNumber;

var float BjornHealthBarInitScale;
var float DagHealthBarInitScale;
var float FreyaHealthBarInitScale;
var float IlianaHealthBarInitScale;
var float HealthBarInitScale;

var GFxObject CursorMC;

var Units UnitsPanel;
var UnitInfo CurrentUnitInfo;
var StatusEffectIcons StatusEffects;
var ActionsInfo UnitActionsInfo;
var ActionsMouseControls TheActionsMouseControls;
var TurnInfo TheTurnInfo;
var TurnTransition TheTurnTransition;
var LevelOutcome TheLevelOutcome;
var Message MessagePopUp;
var Dialogue DialoguePanel;
var HoverOverInfo TheHoverOverInfo;

var const int MAX_NUM_ACTIONS;
var const int MAX_NUM_STATUS_EFFECTS;
var array<GFxObject> Actions;
var array<GFxObject> ActionNames;
var array<GFxObject> ActionIcons;
var array<GFxObject> ChargeCounts;
var array<GFxObject> NonButtons;
var array<GFxObject> NonButtonNames;
var array<GFxObject> NonButtonIcons;
var array<GFxObject> FadeOutButtons;
var array<GFxObject> FadeOutButtonIcons;
var array<GFxObject> FadeOutButtonsChargeCounts;
var array<GFxObject> EnemyActions;
var array<GFxObject> EnemyActionNames;
var ActionToolTip TheActionToolTip;

var GFxObject FastForwardButton;

struct MessageRow
{
	var GFxObject MC, TF;
	var int Y;
};

var GFxObject LogMC;
var array<MessageRow> Messages, FreeMessages;
var float MessageHeight;
var int NumMessages;
var int MaxNumMessages;

//Colors
var string PlayerBlue;
var string EnemyRed;
var string HealthBarGreen;
var string HealthBarRed;
var string CombatLockRed;
var string TextColor;
var string HPBuffRed;
var string AtkBuffBlue1;

var string AtkBuffBlue;
var string StatColor;

var BS_Localization TheLocalizer;

var localized string TurnNumberString;

var localized string PlayerTurnString;
var localized string EnemyTurnString;
var localized string VictoryString;
var localized string DefeatString;

var localized string APLeftString;
var localized string HPString;
var localized string AtkString;
var localized string ClassString;

var localized string BjornName;
var localized string DagName;
var localized string FreyaName;
var localized string IlianaName;
var localized string BanditName;
var localized string BanditAxeThrowerName;
var localized string BanditSummonerName;
var localized string BanditSeerGuardName;

var localized string ShadowBjorn;
var localized string ShadowDag;
var localized string ShadowFreya;
var localized string ShadowIliana;
var localized string SpiritBjorn;
var localized string SpiritDag;
var localized string SpiritFreya;
var localized string SpiritIliana;
var localized string FrostGiant;

var localized string BerserkerClassName;
var localized string AxeThrowerClassName;
var localized string ShieldMaidenClassName;
var localized string SeerClassName;
var localized string VikingEnemyClassName;

var localized string ActionsMouseControlsUse;
var localized string ActionsMouseControlsDeselect;

var localized string AbilitiesStr;
var localized string PassiveAbilityStr;
var localized string HotkeyStr;

var localized string EndTurnButtonName;
var localized string DialogueButtonName;

var localized string Level1Objective;
var localized string Level2Objective;
var localized string Level3Objective;
var localized string Level4Objective;
var localized string Level5Objective;

var localized string AtkText;
var localized string AtkTitle;
var localized string AtkDescription;
var localized string AtkBuffActivated;
var localized string HPText;
var localized string HPTitle;
var localized string HPDescription;
var localized string HPBuffActivated;
var localized string APText;
var localized string APTitle;
var localized string APDescription;
var localized string MenuButtonName;
var localized string PlaySpeedTitle;
var localized string PlaySpeedDescription;
var localized string RangeSelfText;
var localized string RangeMeleeText;
var localized string RangeShortText;
var localized string RangeMidText;
var localized string RangeLongText;
var localized string CombatLockTitle;
var localized string CombatLockDescription;
var localized string UnitTypeMeleeText;
var localized string UnitTypeRangedText;
var localized string UnitTypeShifterText;
var localized string UnitTypeMeleeDescription;
var localized string UnitTypeRangedDescription;
var localized string UnitTypeShifterDescription;

//Dialogue
var localized string DialogueTest;

// Ability strings
var localized string WhirlwindName;
var localized string WhirlwindDescription;
var localized string ChargeName;
var localized string ChargeDescription;
var localized string DrinkName;
var localized string DrinkDescription;
var localized string PullName;
var localized string PullDescription;
var localized string VortexName;
var localized string VortexDescription;
var localized string KickName;
var localized string KickDescription;
var localized string BloodLustName;
var localized string BloodLustDescription;
var localized string PowerStrikeName;
var localized string PowerStrikeDescription;
var localized string PowerStrikeNameFreya;
var localized string PowerStrikeDescriptionFreya;
var localized string BloodDrinkerName;
var localized string BloodDrinkerDescription;
var localized string CrippleName;
var localized string CrippleDescription;
var localized string SnipeStanceName;
var localized string SnipeStanceDescription;
var localized string TauntName;
var localized string TauntDescription;
var localized string DefensiveStanceName;
var localized string DefensiveStanceDescription;
var localized string BlindName;
var localized string BlindDescription;
var localized string LightningStormName;
var localized string LightningStormDescription;
var localized string RejuvenationName;
var localized string RejuvenationDescription;
var localized string ShoutName;
var localized string ShoutDescription;
var localized string HealName;
var localized string HealDescription;
var localized string StaticShieldName;
var localized string StaticShieldDescription;
var localized string SprintName;
var localized string SprintDescription;
var localized string HPBuffName;
var localized string HPBuffDescription;
var localized string AtkBuffName;
var localized string AtkBuffDescription;
var localized string APBuffName;
var localized string APBuffNameMelee;
var localized string APBuffDescription;
var localized string APBuffDescriptionMelee;
var localized string PointBlankTrainingName;
var localized string PointBlankTrainingDescription;
var localized string PiercingAxeName;
var localized string PiercingAxeDescription;
var localized string BurningBloodName;
var localized string BurningBloodDescription;
var localized string ShieldWallName;
var localized string ShieldWallDescription;
var localized string TempestName;
var localized string TempestDescription;
var localized string MeadBombName;
var localized string MeadBombDescription;
var localized string InvincibilityName;
var localized string InvincibilityDescription;

// Status Effects
var localized string BloodLustEffectDescription;
var localized string BlindEffectDescription;
var localized string ShoutEffectDescription;
var localized string RejuvenationEffectDescription;
var localized string CrippleEffectDescription;
var localized string BurningBloodEffectDescription;
var localized string DefensiveStanceEffectDescription;
var localized string SnipeStanceEffectDescription;
var localized string ShieldWallEffectDescription1;
var localized string ShieldWallEffectDescription2;
var localized string StaticShieldEffectDescription;
var localized string SprintEffectDescription;
var localized string MeadBombEffectDescription;
var localized string TauntEffectDescription;

var localized string TurnsLeftName;
var localized string SingleTurnLeftName;
var localized string SpendOneAPName;
var localized string PassiveAbilityName;
var localized string ActiveAbilityName;
var localized string StatusEffectName;

// Dialogue
var localized array<string> DialogueLevel1;
var localized array<string> DialogueLevel2;
var localized array<string> DialogueLevel3;
var localized array<string> DialogueLevel4;
var localized array<string> DialogueLevel5;
var localized array<string> DialogueLevel6;

// Sounds
var SoundCue ButtonClickSound;
var SoundCue ButtonMouseOverSound;
var SoundCue UnitDeselectedSound;
var SoundCue AbilitySelectedSound;
var SoundCue PlayerTurnSound;
var SoundCue EnemyTurnSound;
var SoundCue GameOverSound;

var SoundCue AbilityClickSound;
var SoundCue MenuClickSound;
var SoundCue UnitSelectedSound;

var bool bIsInDialogueMode;
var bool bIsShowingLeftSpeaker;
var bool bIsShowingRightSpeaker;
var array<string> FirstPersonCurrentDialogue;
var array<string> SecondPersonCurrentDialogue;
var array<UnitID> CurrentDialogueOrder;
var UnitID CharWhoseFirstAndSecond[2];

var LevelIndex CurrentDialogueLevelIndex;
var int CurrentDialogueIndex;
var LevelIndex PrevDialogueLevelIndex;
var int PrevDialogueIndex;

var Vector CurrentMouseLocationOnTerrain;

var bool bPlayerHUDEnabled;
var bool bShowAbilityRange;
var int AbilityIdxToShow;

var bool bIsCapturingMouseInput;
var bool bDisableInputWhenInDialogue;

var float bsDoubleClickTimer;
var const float MAX_DOUBLE_CLICK_TIME;


// Written by Chris Burris & Preston Hulcy
function Init( optional LocalPlayer LocPlay )
{
	local int i;
	local GFxCLIKWidget tempCLIKWidget; 

	TheLocalizer = BS_GameInfo( class'WorldInfo'.static.GetWorldInfo().Game ).TheLocalizer;

	super.Init( LocPlay );
	super.Start();
	Advance( 0.0f );
	
	CursorMC = GetVariableObject( "_root.mCursor" );
	
	// Units
	UnitsPanel.UnitsMC               = GetVariableObject( "_root.Units", class'GFxCLIKWidget' );
	UnitsPanel.BjornMC               = GetVariableObject( "_root.Units.UnitsBjorn" );
	UnitsPanel.DagMC                 = GetVariableObject( "_root.Units.UnitsDag" );
	UnitsPanel.FreyaMC               = GetVariableObject( "_root.Units.UnitsFreya" );
	UnitsPanel.IlianaMC              = GetVariableObject( "_root.Units.UnitsIliana" );
	UnitsPanel.LabelTF               = GetVariableObject( "_root.Units.UnitsTF.textField" );
	UnitsPanel.BjornButtonMC         = GetVariableObject( "_root.Units.UnitsBjorn.UnitsBjornButton" );
	UnitsPanel.BjornButtonPictureMC  = GetVariableObject( "_root.Units.UnitsBjorn.UnitsBjornButton.Picture" );
	UnitsPanel.DagButtonMC           = GetVariableObject( "_root.Units.UnitsDag.UnitsDagButton" );
	UnitsPanel.DagButtonPictureMC    = GetVariableObject( "_root.Units.UnitsDag.UnitsDagButton.Picture" );
	UnitsPanel.FreyaButtonMC         = GetVariableObject( "_root.Units.UnitsFreya.UnitsFreyaButton" );
	UnitsPanel.FreyaButtonPictureMC  = GetVariableObject( "_root.Units.UnitsFreya.UnitsFreyaButton.Picture" );
	UnitsPanel.IlianaButtonMC        = GetVariableObject( "_root.Units.UnitsIliana.UnitsIlianaButton" );
	UnitsPanel.IlianaButtonPictureMC = GetVariableObject( "_root.Units.UnitsIliana.UnitsIlianaButton.Picture" );
	UnitsPanel.BjornHealthBarMC      = GetVariableObject( "_root.Units.UnitsBjorn.BjornHealth.HealthBar" );
	UnitsPanel.DagHealthBarMC        = GetVariableObject( "_root.Units.UnitsDag.DagHealth.HealthBar" );
	UnitsPanel.FreyaHealthBarMC      = GetVariableObject( "_root.Units.UnitsFreya.FreyaHealth.HealthBar" );
	UnitsPanel.IlianaHealthBarMC     = GetVariableObject( "_root.Units.UnitsIliana.IlianaHealth.HealthBar" );
	UnitsPanel.BjornAPLabelTF        = GetVariableObject( "_root.Units.UnitsBjorn.BjornAPTF.textField" );
	UnitsPanel.DagAPLabelTF          = GetVariableObject( "_root.Units.UnitsDag.DagAPTF.textField" );
	UnitsPanel.FreyaAPLabelTF        = GetVariableObject( "_root.Units.UnitsFreya.FreyaAPTF.textField" );
	UnitsPanel.IlianaAPLabelTF	     = GetVariableObject( "_root.Units.UnitsIliana.IlianaAPTF.textField" );
	UnitsPanel.BjornAPNumTF	         = GetVariableObject( "_root.Units.UnitsBjorn.BjornAP.textField" );
	UnitsPanel.DagAPNumTF    	     = GetVariableObject( "_root.Units.UnitsDag.DagAP.textField" );
	UnitsPanel.FreyaAPNumTF	         = GetVariableObject( "_root.Units.UnitsFreya.FreyaAP.textField" );
	UnitsPanel.IlianaAPNumTF	     = GetVariableObject( "_root.Units.UnitsIliana.IlianaAP.textField" );
	UnitsPanel.UnitsBackgroundMC     = GetVariableObject( "_root.Units.UnitsBackground" );


	tempCLIKWidget = GFxCLIKWidget( UnitsPanel.UnitsMC );
	if( tempCLIKWidget != none )
	{
		tempCLIKWidget.AddEventListener( 'CLIK_rollOver', EnableMouseCapture );
		tempCLIKWidget.AddEventListener( 'CLIK_rollOut', DisableMouseCapture );
	}


	// Unit Info
	CurrentUnitInfo.InfoMC               = GetVariableObject( "_root.UnitInfo", class'GFxCLIKWidget' );
	CurrentUnitInfo.Portrait             = GetVariableObject( "_root.UnitInfo.UnitPictures" );
	CurrentUnitInfo.Name                 = GetVariableObject( "_root.UnitInfo.UnitSelected.textField" );
	CurrentUnitInfo.APContainer          = GetVariableObject( "_root.UnitInfo.AP" );
	CurrentUnitInfo.APNumber             = GetVariableObject( "_root.UnitInfo.AP.UnitAPNumber" );
	CurrentUnitInfo.APLeft               = GetVariableObject( "_root.UnitInfo.UnitAP" );
	CurrentUnitInfo.HPContainer          = GetVariableObject( "_root.UnitInfo.HP" );
	CurrentUnitInfo.HP                   = GetVariableObject( "_root.UnitInfo.HP.UnitHP.textField" );
	CurrentUnitInfo.MaxHP                = GetVariableObject( "_root.UnitInfo.HP.UnitMaxHP.textField" );
	CurrentUnitInfo.HPBar                = GetVariableObject( "_root.UnitInfo.HP.Bar.HealthBar" );
	CurrentUnitInfo.AtkContainer         = GetVariableObject( "_root.UnitInfo.Atk" );
	CurrentUnitInfo.Atk                  = GetVariableObject( "_root.UnitInfo.Atk.UnitAtk.textField" );
	CurrentUnitInfo.ClassName            = GetVariableObject( "_root.UnitInfo.UnitClass.textField" );
	CurrentUnitInfo.CombatLockButtonMC   = GetVariableObject( "_root.UnitInfo.CombatLockButton" );
	CurrentUnitInfo.UnitNoAPFadeOutMC    = GetVariableObject( "_root.UnitInfo.UnitNoAPFadeOut" );
	CurrentUnitInfo.UnitTypeButtonMC     = GetVariableObject( "_root.UnitInfo.UnitTypeButton" );
	CurrentUnitInfo.UnitTypeButtonTF     = GetVariableObject( "_root.UnitInfo.UnitTypeButton.textField" );
	CurrentUnitInfo.APButtonMC           = GetVariableObject( "_root.UnitInfo.AP.UnitAPTF" );
	CurrentUnitInfo.HPButtonMC           = GetVariableObject( "_root.UnitInfo.HP.UnitHPTF" );
	CurrentUnitInfo.HPButtonTF           = GetVariableObject( "_root.UnitInfo.HP.UnitHPTF.textField" );
	CurrentUnitInfo.AtkButtonMC          = GetVariableObject( "_root.UnitInfo.Atk.UnitAtkTF" );
	CurrentUnitInfo.AtkButtonTF          = GetVariableObject( "_root.UnitInfo.Atk.UnitAtkTF.textField" );
    CurrentUnitInfo.UnitInfoBackgroundMC = GetVariableObject( "_root.UnitInfo.UnitInfoBackground" );

	tempCLIKWidget = GFxCLIKWidget( CurrentUnitInfo.InfoMC );
	if( tempCLIKWidget != none )
	{
		tempCLIKWidget.AddEventListener( 'CLIK_rollOver', EnableMouseCapture );
		tempCLIKWidget.AddEventListener( 'CLIK_rollOut', DisableMouseCapture );
	}
	

	// Turn info
	TheTurnInfo.InfoMC               = GetVariableObject( "_root.TurnInfo", class'GFxCLIKWidget' );
	TheTurnInfo.EndTurnButtonMC      = GetVariableObject( "_root.TurnInfo.EndTurnButton" );
	TheTurnInfo.EndTurnButtonTF      = GetVariableObject( "_root.TurnInfo.EndTurnButton.textField" );
	TheTurnInfo.PlaySpeedButtonMC    = GetVariableObject( "_root.TurnInfo.PlaySpeedButton" );
	TheTurnInfo.ObjectiveTextTF      = GetVariableObject( "_root.TurnInfo.ObjectiveText.textField" );
	TheTurnInfo.PauseButtonMC        = GetVariableObject( "_root.TurnInfo.PauseButton" );
	TheTurnInfo.TurnInfoBackgroundMC = GetVariableObject( "_root.TurnInfo.TurnInfoBackground" );
	GetVariableObject( "_root.TurnInfo.TurnLabel.textField" ).SetText( TheLocalizer.GetLocalizedString( TurnNumberString ) );

	tempCLIKWidget = GFxCLIKWidget( TheTurnInfo.InfoMC );
	if( tempCLIKWidget != none )
	{
		tempCLIKWidget.AddEventListener( 'CLIK_rollOver', EnableMouseCapture );
		tempCLIKWidget.AddEventListener( 'CLIK_rollOut', DisableMouseCapture );
	}

	CurrentTurnNumber = -1;
	
	// Turn Transition
	TheTurnTransition.TurnTransitionMC = GetVariableObject( "_root.TurnTransition" );
	TheTurnTransition.PlayerTurnMC     = GetVariableObject( "_root.TurnTransition.PlayerTurnTransition" );
	TheTurnTransition.PlayerTurnTF     = GetVariableObject( "_root.TurnTransition.PlayerTurnTransition.PlayerTurnTransitionText.textField" );
	TheTurnTransition.EnemyTurnMC      = GetVariableObject( "_root.TurnTransition.EnemyTurnTransition" );
	TheTurnTransition.EnemyTurnTF      = GetVariableObject( "_root.TurnTransition.EnemyTurnTransition.EnemyTurnTransitionText.textField" );

	// Level Outcome
	TheLevelOutcome.LevelOutcomeMC = GetVariableObject( "_root.LevelOutcome" );
	TheLevelOutcome.VictoryMC      = GetVariableObject( "_root.LevelOutcome.LevelOutcomeVictory" );
	TheLevelOutcome.VictoryTF      = GetVariableObject( "_root.LevelOutcome.LevelOutcomeVictory.LevelOutcomeVictoryText.textField" );
	TheLevelOutcome.DefeatMC       = GetVariableObject( "_root.LevelOutcome.LevelOutcomeDefeat" );
	TheLevelOutcome.DefeatTF       = GetVariableObject( "_root.LevelOutcome.LevelOutcomeDefeat.LevelOutcomeDefeatText.textField" );

	// Message
	MessagePopUp.MessageMC = GetVariableObject( "_root.Message.MessageFade" );
	MessagePopUp.MessageTF = GetVariableObject( "_root.Message.MessageFade.MessageText.textField" );

	// Dialogue
	DialoguePanel.DialogueMC                    = GetVariableObject( "_root.Dialogue" );
	DialoguePanel.DialogueButtonMC              = GetVariableObject( "_root.Dialogue.DialogueButton" );
	DialoguePanel.DialogueButtonTF              = GetVariableObject( "_root.Dialogue.DialogueButton.textField" );
	DialoguePanel.LeftDialogueTextMC            = GetVariableObject( "_root.Dialogue.LeftSpeaker.LeftDialogueText" );
	DialoguePanel.RightDialogueTextMC           = GetVariableObject( "_root.Dialogue.RightSpeaker.RightDialogueText" );
	DialoguePanel.LeftDialogueTextTF            = GetVariableObject( "_root.Dialogue.LeftSpeaker.LeftDialogueText.textField" );
	DialoguePanel.RightDialogueTextTF			= GetVariableObject( "_root.Dialogue.RightSpeaker.RightDialogueText.textField" );
	DialoguePanel.LeftSpeakerMC                 = GetVariableObject( "_root.Dialogue.LeftSpeaker" );
	DialoguePanel.RightSpeakerMC                = GetVariableObject( "_root.Dialogue.RightSpeaker" );
	DialoguePanel.LeftSpeakerTF                 = GetVariableObject( "_root.Dialogue.LeftSpeaker.LeftSpeakerName.textField" );
	DialoguePanel.RightSpeakerTF                = GetVariableObject( "_root.Dialogue.RightSpeaker.RightSpeakerName.textField" );
	DialoguePanel.LeftSpeakerPictureMC          = GetVariableObject( "_root.Dialogue.LeftSpeaker.SpeakerPicture" );
	DialoguePanel.RightSpeakerPictureMC         = GetVariableObject( "_root.Dialogue.RightSpeaker.SpeakerPicture" );
	DialoguePanel.LeftPictureCoverMC            = GetVariableObject( "_root.Dialogue.LeftSpeaker.LeftFadeOut" );
	DialoguePanel.RightPictureCoverMC           = GetVariableObject( "_root.Dialogue.RightSpeaker.RightFadeOut" );

	// Hover Over Info
	TheHoverOverInfo.HoverOverInfoTitleTF          = GetVariableObject( "_root.HoverOverInfo.HoverOverInfoTitle.textField" );
	TheHoverOverInfo.HoverOverInfoInfoTF           = GetVariableObject( "_root.HoverOverInfo.HoverOverInfoDescription.textField" );
	TheHoverOverInfo.HoverOverInfoCornerTF         = GetVariableObject( "_root.HoverOverInfo.HoverOverInfoCornerText.textField" );
	TheHoverOverInfo.HoverOverInfoAPTextTF         = GetVariableObject( "_root.HoverOverInfo.HoverOverInfoAPText.textField" );
	TheHoverOverInfo.HoverOverInfoRangeTF          = GetVariableObject( "_root.HoverOverInfo.Range.textField" );
	TheHoverOverInfo.HoverOverInfoIconMC           = GetVariableObject( "_root.HoverOverInfo.HoverOverInfoIcons" );
	TheHoverOverInfo.HoverOverInfoCombatLockIconMC = GetVariableObject( "_root.HoverOverInfo.CombatLockAPIcon" );

	// Actions Info
	UnitActionsInfo.ActionsInfoMC         = GetVariableObject( "_root.ActionsInfo", class'GFxCLIKWidget' );
	UnitActionsInfo.PlayerActionButtonsMC = GetVariableObject( "_root.ActionsInfo.PlayerActionButtons");
	UnitActionsInfo.EnemyActionsMC        = GetVariableObject( "_root.ActionsInfo.EnemyActions");
	UnitActionsInfo.AbilityNumbersMC      = GetVariableObject( "_root.ActionsInfo.AbilityNumbers");
	UnitActionsInfo.AbilitiesBackgroundMC = GetVariableObject( "_root.ActionsInfo.AbilitiesBackground");

	GetVariableObject( "_root.ActionsInfo.ActionsInfoLabel.textField" ).SetText( TheLocalizer.GetLocalizedString( AbilitiesStr ) );

	tempCLIKWidget = GFxCLIKWidget( UnitActionsInfo.ActionsInfoMC  );
	if( tempCLIKWidget != none )
	{
		tempCLIKWidget.AddEventListener( 'CLIK_rollOver', EnableMouseCapture );
		tempCLIKWidget.AddEventListener( 'CLIK_rollOut', DisableMouseCapture );
	}

	Actions.Insert( 0, MAX_NUM_ACTIONS );
	ActionNames.Insert( 0, MAX_NUM_ACTIONS );
	ActionIcons.Insert( 0, MAX_NUM_ACTIONS );
	ChargeCounts.Insert( 0, MAX_NUM_ACTIONS );
	NonButtons.Insert( 0, MAX_NUM_ACTIONS );
	NonButtonNames.Insert( 0, MAX_NUM_ACTIONS );
	NonButtonIcons.Insert( 0, MAX_NUM_ACTIONS );
	FadeOutButtons.Insert( 0, MAX_NUM_ACTIONS );
	FadeOutButtonIcons.Insert( 0, MAX_NUM_ACTIONS );
	FadeOutButtonsChargeCounts.Insert( 0, MAX_NUM_ACTIONS );
	EnemyActions.Insert( 0, MAX_NUM_ACTIONS );
	EnemyActionNames.Insert( 0, MAX_NUM_ACTIONS );
	for( i = 0; i < MAX_NUM_ACTIONS; ++i )
	{		
		Actions[i]                    = GetVariableObject( "_root.ActionsInfo.PlayerActionButtons.Action" $(i+1) );
		ActionIcons[i]                = GetVariableObject( "_root.ActionsInfo.PlayerActionButtons.Action" $(i+1) $(".AbilityIcons"));
		ChargeCounts[i]               = GetVariableObject( "_root.ActionsInfo.PlayerActionButtons.Action" $(i+1) $(".textField")); 
		NonButtons[i]                 = GetVariableObject( "_root.ActionsInfo.PlayerActionButtons.Action" $(i+1) $"NonButton" );
		NonButtonNames[i]             = GetVariableObject( "_root.ActionsInfo.PlayerActionButtons.Action" $(i+1) $"NonButton.NonButtonText.textField" );
		NonButtonIcons[i]             = GetVariableObject( "_root.ActionsInfo.PlayerActionButtons.Action" $(i+1) $"NonButton.AbilityIcons" );
		FadeOutButtons[i]             = GetVariableObject( "_root.ActionsInfo.PlayerActionButtons.Action" $(i+1) $"FadeOutButton" );
		FadeOutButtonIcons[i]         = GetVariableObject( "_root.ActionsInfo.PlayerActionButtons.Action" $(i+1) $"FadeOutButton.AbilityIcons" );
		FadeOutButtonsChargeCounts[i] = GetVariableObject( "_root.ActionsInfo.PlayerActionButtons.Action" $(i+1) $"FadeOutButton.textField" );
		EnemyActions[i]               = GetVariableObject( "_root.ActionsInfo.EnemyActions.Action" $(i+1) );
		EnemyActionNames[i]           = GetVariableObject( "_root.ActionsInfo.EnemyActions.Action" $(i+1) $(".textField"));
	}

	// Action Tool Tip
	TheActionToolTip.ActionToolTipMC         = GetVariableObject( "_root.ActionsInfoDescription" );
	TheActionToolTip.PopupMC				 = GetVariableObject( "_root.ActionsInfoDescription.ActionDescriptionText" );
	TheActionToolTip.Name					 = GetVariableObject( "_root.ActionsInfoDescription.ActionDescriptionText.ActionName.textField" );
	TheActionToolTip.Desc					 = GetVariableObject( "_root.ActionsInfoDescription.ActionDescriptionText.ActionDescription.textField" );
	TheActionToolTip.HotKeyInfoMC            = GetVariableObject( "_root.ActionsInfoDescription.HotKeyInfo" );
	TheActionToolTip.HotKeyInfoTF            = GetVariableObject( "_root.ActionsInfoDescription.HotKeyInfo.textField" );
	TheActionToolTip.PassiveTextTF           = GetVariableObject( "_root.ActionsInfoDescription.PassiveText.textField" );
    TheActionToolTip.BackgroundMC			 = GetVariableObject( "_root.ActionsInfoDescription.ActionsInfoDescriptionBackground" );

	GetVariableObject( "_root.ActionsInfoDescription.HotKeyInfo.HotKeyText" ).SetText( TheLocalizer.GetLocalizedString( HotkeyStr ) );
	GetVariableObject( "_root.ActionsInfoDescription.PassiveText.PassiveText" ).SetText( TheLocalizer.GetLocalizedString( PassiveAbilityStr ) );

	// Status Effects
    StatusEffects.StatusEffectsMC                = GetVariableObject( "_root.UnitInfo.StatusEffects");
	StatusEffects.StatusEffectsBackgroundMC      = GetVariableObject( "_root.UnitInfo.StatusEffects.StatusEffectBackground");
	StatusEffects.StatusEffectInfoMC             = GetVariableObject( "_root.UnitInfo.StatusEffects.StatusEffectInfo");
	StatusEffects.StatusEffectNameTF             = GetVariableObject( "_root.UnitInfo.StatusEffects.StatusEffectInfo.StatusEffectName.textField");
	StatusEffects.StatusEffectDescriptionTF      = GetVariableObject( "_root.UnitInfo.StatusEffects.StatusEffectInfo.StatusEffectDescription.textField");
	StatusEffects.StatusEffectTurnsLeftTF        = GetVariableObject( "_root.UnitInfo.StatusEffects.StatusEffectInfo.TurnsLeft.textField");
	StatusEffects.StatusEffectDescriptionIconsMC = GetVariableObject( "_root.UnitInfo.StatusEffects.StatusEffectInfo.StatusEffectDescriptionIcons");
	StatusEffects.StatusEffect1MC                = GetVariableObject( "_root.UnitInfo.StatusEffects.StatusEffect1");
	StatusEffects.StatusEffect2MC                = GetVariableObject( "_root.UnitInfo.StatusEffects.StatusEffect2");
	StatusEffects.StatusEffect3MC			     = GetVariableObject( "_root.UnitInfo.StatusEffects.StatusEffect3");
	StatusEffects.StatusEffect4MC			     = GetVariableObject( "_root.UnitInfo.StatusEffects.StatusEffect4");
	StatusEffects.StatusEffect5MC			     = GetVariableObject( "_root.UnitInfo.StatusEffects.StatusEffect5");
	StatusEffects.StatusEffect6MC			     = GetVariableObject( "_root.UnitInfo.StatusEffects.StatusEffect6");
	StatusEffects.StatusEffect7MC			     = GetVariableObject( "_root.UnitInfo.StatusEffects.StatusEffect7");
	StatusEffects.StatusEffect8MC			     = GetVariableObject( "_root.UnitInfo.StatusEffects.StatusEffect8");

	for( i = 0; i < MAX_NUM_STATUS_EFFECTS; ++i )
	{
		StatusEffects.StatusEffectIcons1[i] = GetVariableObject( "_root.UnitInfo.StatusEffects.StatusEffect1.StatusEffectButton" $(i+1) );
		StatusEffects.StatusEffectIcons2[i] = GetVariableObject( "_root.UnitInfo.StatusEffects.StatusEffect2.StatusEffectButton" $(i+1) );
		StatusEffects.StatusEffectIcons3[i] = GetVariableObject( "_root.UnitInfo.StatusEffects.StatusEffect3.StatusEffectButton" $(i+1) );
		StatusEffects.StatusEffectIcons4[i] = GetVariableObject( "_root.UnitInfo.StatusEffects.StatusEffect4.StatusEffectButton" $(i+1) );
		StatusEffects.StatusEffectIcons5[i] = GetVariableObject( "_root.UnitInfo.StatusEffects.StatusEffect5.StatusEffectButton" $(i+1) );
		StatusEffects.StatusEffectIcons6[i] = GetVariableObject( "_root.UnitInfo.StatusEffects.StatusEffect6.StatusEffectButton" $(i+1) );
		StatusEffects.StatusEffectIcons7[i] = GetVariableObject( "_root.UnitInfo.StatusEffects.StatusEffect7.StatusEffectButton" $(i+1) );
		StatusEffects.StatusEffectIcons8[i] = GetVariableObject( "_root.UnitInfo.StatusEffects.StatusEffect8.StatusEffectButton" $(i+1) );
	}
	
	UnitActionsInfo.EnemyActionsMC.SetVisible( false );
	TheActionsMouseControls.UseTF.SetText( ActionsMouseControlsUse );
	TheActionsMouseControls.DeselectTF.SetText( ActionsMouseControlsDeselect );
	StatusEffects.StatusEffectsMC.SetVisible( false );

	for( i = 0; i < MAX_NUM_ACTIONS; ++i )
		NonButtons[i].SetVisible( false );

	DialoguePanel.RightSpeakerMC.SetVisible( false );
	DialoguePanel.DialogueMC.SetVisible( false );
	DialoguePanel.RightPictureCoverMC.SetVisible( false );
	DisableDialoguePanel();

	// Log system
	LogMC = GetVariableObject( "_root.log" );
	for( i = 0; i < MaxNumMessages; i++ )
		InitMessageRow();

	BjornHealthBarInitScale = UnitsPanel.BjornHealthBarMC.GetFloat( "scaleX" );
	DagHealthBarInitScale = UnitsPanel.DagHealthBarMC.GetFloat( "scaleX" );
	FreyaHealthBarInitScale = UnitsPanel.FreyaHealthBarMC.GetFloat( "scaleX" );
	IlianaHealthBarInitScale = UnitsPanel.IlianaHealthBarMC.GetFloat( "scaleX" );
	HealthBarInitScale = CurrentUnitInfo.HPBar.GetFloat( "scaleX" );
	ChangeColorMC( UnitsPanel.BjornHealthBarMC, PlayerBlue );
	ChangeColorMC( UnitsPanel.DagHealthBarMC, PlayerBlue );
	ChangeColorMC( UnitsPanel.FreyaHealthBarMC, PlayerBlue );
	ChangeColorMC( UnitsPanel.IlianaHealthBarMC, PlayerBlue );

	CurrentUnitInfo.HPButtonMC.SetString( "label", TheLocalizer.GetLocalizedString( HPText ) );
	CurrentUnitInfo.AtkButtonMC.SetString( "label", TheLocalizer.GetLocalizedString( AtkText ) );
	CurrentUnitInfo.APButtonMC.SetString( "label", TheLocalizer.GetLocalizedString( APText ) );

	AutosizeTextFont( TheTurnInfo.EndTurnButtonTF, TheLocalizer.GetLocalizedString( EndTurnButtonName ), 2);

	SetLevelObjective();

	DisablePlayerHUD();
}


// Written by Chris Burris & Preston Hulcy
event bool WidgetInitialized( name WidgetName, name WidgetPath, GFxObject Widget )
{
	local GFxCLIKWidget tempCLIKWidget;
	local bool bWasHandled;
	bWasHandled = false;
	
	switch( WidgetName )
	{
		case( 'Action1' ):
			tempCLIKWidget = GFxCLIKWidget( Widget );
			tempCLIKWidget.AddEventListener( 'CLIK_buttonPress', Action1ButtonClicked );
			tempCLIKWidget.AddEventListener( 'CLIK_rollOver', ShowAbilityRange1 );
			tempCLIKWidget.AddEventListener( 'CLIK_rollOut', HideAbilityRange );
			bWasHandled = true;
			break;
		case( 'Action2' ):
			tempCLIKWidget = GFxCLIKWidget( Widget );
			tempCLIKWidget.AddEventListener( 'CLIK_buttonPress', Action2ButtonClicked );
			tempCLIKWidget.AddEventListener( 'CLIK_rollOver', ShowAbilityRange2 );
			tempCLIKWidget.AddEventListener( 'CLIK_rollOut', HideAbilityRange );
			bWasHandled = true;
			break;
		case( 'Action3' ):
			tempCLIKWidget = GFxCLIKWidget( Widget );
			tempCLIKWidget.AddEventListener( 'CLIK_buttonPress', Action3ButtonClicked );
			tempCLIKWidget.AddEventListener( 'CLIK_rollOver', ShowAbilityRange3 );
			tempCLIKWidget.AddEventListener( 'CLIK_rollOut', HideAbilityRange );
			bWasHandled = true;
			break;
		case( 'Action4' ):
			tempCLIKWidget = GFxCLIKWidget( Widget );
			tempCLIKWidget.AddEventListener( 'CLIK_buttonPress', Action4ButtonClicked );
			tempCLIKWidget.AddEventListener( 'CLIK_rollOver', ShowAbilityRange4 );
			tempCLIKWidget.AddEventListener( 'CLIK_rollOut', HideAbilityRange );
			bWasHandled = true;
			break;
		case( 'UnitAPTF' ):
			Widget.SetText( TheLocalizer.GetLocalizedString( APLeftString ) );
			break;
		case( 'UnitHPTF' ):
			Widget.SetText(TheLocalizer.GetLocalizedString(  HPString ) );	
			break;
		case( 'UnitAtkTF' ):
			Widget.SetText( TheLocalizer.GetLocalizedString( AtkString ) );	
			break;
		case( 'UnitClassTF' ):
			Widget.SetText( TheLocalizer.GetLocalizedString( ClassString ) );	
			break;
		case( 'EndTurnButton' ):
			Widget.SetString( "label", TheLocalizer.GetLocalizedString( EndTurnButtonName ) );
			tempCLIKWidget = GFxCLIKWidget( Widget );
			tempCLIKWidget.AddEventListener( 'CLIK_buttonPress', EndTurnButtonClicked );
			bWasHandled = true;
			break;
		case( 'UnitsBjornButton' ):
			tempCLIKWidget = GFxCLIKWidget( Widget );
			tempCLIKWidget.AddEventListener( 'CLIK_buttonPress', UnitsBjornButtonClicked );
			bWasHandled = true;
			break;
		case( 'UnitsDagButton' ):
			tempCLIKWidget = GFxCLIKWidget( Widget );
			tempCLIKWidget.AddEventListener( 'CLIK_buttonPress', UnitsDagButtonClicked );
			bWasHandled = true;
			break;
		case( 'UnitsFreyaButton' ):
			tempCLIKWidget = GFxCLIKWidget( Widget );
			tempCLIKWidget.AddEventListener( 'CLIK_buttonPress', UnitsFreyaButtonClicked );
			bWasHandled = true;
			break;
		case( 'UnitsIlianaButton' ):
			tempCLIKWidget = GFxCLIKWidget( Widget );
			tempCLIKWidget.AddEventListener( 'CLIK_buttonPress', UnitsIlianaButtonClicked );
			bWasHandled = true;
			break;
		case( 'DialogueButton' ):
			Widget.SetString( "label", TheLocalizer.GetLocalizedString( DialogueButtonName ) );
			tempCLIKWidget = GFxCLIKWidget( Widget );
			tempCLIKWidget.AddEventListener( 'CLIK_buttonPress', AdvanceCurrentDialogue );
			bWasHandled = true;
			break;
		case( 'PlaySpeedButton' ):
			FastForwardButton = Widget;
			FastForwardButton.SetString( "label", "x1" );
			tempCLIKWidget = GFxCLIKWidget( Widget );		
			tempCLIKWidget.AddEventListener( 'CLIK_buttonPress', PlaySpeedButtonClicked );
			bWasHandled = true;
			break;
		case( 'MovePreviewButton' ):
			tempCLIKWidget = GFxCLIKWidget( Widget );
			tempCLIKWidget.AddEventListener( 'CLIK_buttonPress', MovePreviewButtonClicked );
			bWasHandled = true;
			break;
		case( 'PauseButton' ):
			Widget.SetString( "label", TheLocalizer.GetLocalizedString( MenuButtonName ) );
			tempCLIKWidget = GFxCLIKWidget( Widget );
			tempCLIKWidget.AddEventListener( 'CLIK_buttonPress', PauseButtonClicked );
			bWasHandled = true;
			break;
		case( 'UnitTypeButton' ):
			tempCLIKWidget = GFxCLIKWidget( Widget );
			tempCLIKWidget.AddEventListener( 'CLIK_buttonPress', UnitTypeButtonClicked );
			bWasHandled = true;
			break;
		case( 'UnitHPTF' ):
			tempCLIKWidget = GFxCLIKWidget( Widget );
			tempCLIKWidget.AddEventListener( 'CLIK_buttonPress', UnitHPTFButtonClicked );
			bWasHandled = true;
			break;
		case( 'UnitAtkTF' ):
			tempCLIKWidget = GFxCLIKWidget( Widget );
			tempCLIKWidget.AddEventListener( 'CLIK_buttonPress', UnitAtkTFButtonClicked );
			bWasHandled = true;
			break;
		case( 'UnitAPTF' ):
			tempCLIKWidget = GFxCLIKWidget( Widget );
			tempCLIKWidget.AddEventListener( 'CLIK_buttonPress', UnitAPTFButtonClicked );
			bWasHandled = true;
			break;
		case( 'CombatLockButton' ):
			tempCLIKWidget = GFxCLIKWidget( Widget );
			tempCLIKWidget.AddEventListener( 'CLIK_buttonPress', CombatLockButtonClicked );
			bWasHandled = true;
			break;
		case( 'Action1FadeOutButton' ):
			tempCLIKWidget = GFxCLIKWidget( Widget );
			tempCLIKWidget.AddEventListener( 'CLIK_buttonPress', Action1FadeOutButtonClicked );
			bWasHandled = true;
			break;
		case( 'Action2FadeOutButton' ):
			tempCLIKWidget = GFxCLIKWidget( Widget );
			tempCLIKWidget.AddEventListener( 'CLIK_buttonPress', Action2FadeOutButtonClicked );
			bWasHandled = true;
			break;
		case( 'Action3FadeOutButton' ):
			tempCLIKWidget = GFxCLIKWidget( Widget );
			tempCLIKWidget.AddEventListener( 'CLIK_buttonPress', Action3FadeOutButtonClicked );
			bWasHandled = true;
			break;
		case( 'Action4FadeOutButton' ):
			tempCLIKWidget = GFxCLIKWidget( Widget );
			tempCLIKWidget.AddEventListener( 'CLIK_buttonPress', Action4FadeOutButtonClicked );
			bWasHandled = true;
			break;
		case( 'Action1NonButton' ):
			tempCLIKWidget = GFxCLIKWidget( Widget );
			tempCLIKWidget.AddEventListener( 'CLIK_buttonPress', Action1NonButtonClicked );
			bWasHandled = true;
			break;
		case( 'Action2NonButton' ):
			tempCLIKWidget = GFxCLIKWidget( Widget );
			tempCLIKWidget.AddEventListener( 'CLIK_buttonPress', Action2NonButtonClicked );
			bWasHandled = true;
			break;
		case( 'Action3NonButton' ):
			tempCLIKWidget = GFxCLIKWidget( Widget );
			tempCLIKWidget.AddEventListener( 'CLIK_buttonPress', Action3NonButtonClicked );
			bWasHandled = true;
			break;
		case( 'Action4NonButton' ):
			tempCLIKWidget = GFxCLIKWidget( Widget );
			tempCLIKWidget.AddEventListener( 'CLIK_buttonPress', Action4NonButtonClicked );
			bWasHandled = true;
			break;
	}
	
	if( tempCLIKWidget != none && 
		WidgetName != 'Action1' && 
		WidgetName != 'Action2' && 
		WidgetName != 'Action3' && 
		WidgetName != 'Action4' && 
		WidgetName != 'EndTurnButton' &&
		WidgetName != 'UnitsBjornButton' &&
		WidgetName != 'UnitsDagButton' && 
		WidgetName != 'UnitsFreyaButton' &&
		WidgetName != 'UnitsIlianaButton' &&
		WidgetName != 'UnitHPTF' &&
		WidgetName != 'UnitAtkTF' &&
		WidgetName != 'UnitAPTF' &&
		WidgetName != 'Action1FadeOutButton' &&
		WidgetName != 'Action2FadeOutButton' &&
		WidgetName != 'Action3FadeOutButton' &&
		WidgetName != 'Action4FadeOutButton' &&
		WidgetName != 'Action1NonButton' &&
		WidgetName != 'Action2NonButton' &&
		WidgetName != 'Action3NonButton' &&
		WidgetName != 'Action4NonButton' &&
		WidgetName != 'UnitTypeButton' ) 
	{
		tempCLIKWidget.AddEventListener( 'CLIK_rollOver', EnableMouseCapture );
		tempCLIKWidget.AddEventListener( 'CLIK_rollOut', DisableMouseCapture );
	}

	if( !bWasHandled )
		bWasHandled = super.WidgetInitialized( WidgetName, WidgetPath, Widget );

	return bWasHandled;
}


// Written by Preston Hulcy
function Action1ButtonClicked( GFxCLIKWidget.EventData params )
{
	if( CurrentUnitSelected != none && CurrentUnitSelected.TeamNumber == TeamNumber )
	{
		//Tell unit that ability one is active
		if( CurrentUnitSelected.Abilities.Length > 0 )
		{
			if( CurrentUnitSelected.Abilities[0].InstantCast )
			{
				if( CurrentUnitSelected.Abilities[0].CanUseAbility() && TheTurnManager.UseAction( CurrentUnitSelected, CurrentUnitSelected.Abilities[0].APCost ) )
				{
					CurrentUnitSelected.Abilities[0].UseAbility();
				}
			}
			else if( CurrentUnitSelected.Abilities[0].AbilityType == ABILITY_TYPE_PASSIVE || CurrentUnitSelected.Abilities[0].AbilityType == ABILITY_TYPE_ATTACKOVERRIDE )
			{
				//Do nothing for passive or attack overrided abilities
			}
			else
			{
				BS_PlayerController( BS_UnitController( CurrentUnitSelected.Controller ).Controller ).CurrentAction = ACTION_ABILITY;
				BS_PlayerController( BS_UnitController( CurrentUnitSelected.Controller ).Controller ).CurrentAbilityIndex = 0;
			}
		}

		TheTurnManager.PlaySound( AbilityClickSound );
		CurrentUnitSelected.ActivateDeactivatePawnsInRange();
	}

	`log( "Action 1 performed" );
}


// Written by Preston Hulcy
function Action2ButtonClicked( GFxCLIKWidget.EventData params )
{
	if( CurrentUnitSelected != none && CurrentUnitSelected.TeamNumber == TeamNumber )
	{
		//Tell unit that ability two is active
		if( CurrentUnitSelected.Abilities.Length > 1 )
		{
			if( CurrentUnitSelected.Abilities[1].InstantCast )
			{
				if( CurrentUnitSelected.Abilities[1].CanUseAbility() && TheTurnManager.UseAction( CurrentUnitSelected, CurrentUnitSelected.Abilities[1].APCost ) )
				{
					CurrentUnitSelected.Abilities[1].UseAbility();
				}
			}
			else if( CurrentUnitSelected.Abilities[1].AbilityType == ABILITY_TYPE_PASSIVE || CurrentUnitSelected.Abilities[1].AbilityType == ABILITY_TYPE_ATTACKOVERRIDE )
			{
				//Do nothing for passive or attack overrided abilities
			}
			else
			{
				BS_PlayerController( BS_UnitController( CurrentUnitSelected.Controller ).Controller ).CurrentAction = ACTION_ABILITY;
				BS_PlayerController( BS_UnitController( CurrentUnitSelected.Controller ).Controller ).CurrentAbilityIndex = 1;
			}
		}

		TheTurnManager.PlaySound( AbilityClickSound );
		CurrentUnitSelected.ActivateDeactivatePawnsInRange();
	}


	`log( "Action 2 performed" );
}


// Written by Preston Hulcy
function Action3ButtonClicked( GFxCLIKWidget.EventData params )
{
	if( CurrentUnitSelected != none )
	{
		//Tell unit that ability three is active
		if( CurrentUnitSelected.Abilities.Length > 2 )
		{
			if( CurrentUnitSelected.Abilities[2].InstantCast )
			{
				if( CurrentUnitSelected.Abilities[2].CanUseAbility() && TheTurnManager.UseAction( CurrentUnitSelected, CurrentUnitSelected.Abilities[2].APCost ) )
				{
					CurrentUnitSelected.Abilities[2].UseAbility();
				}
			}
			else if( CurrentUnitSelected.Abilities[2].AbilityType == ABILITY_TYPE_PASSIVE || CurrentUnitSelected.Abilities[2].AbilityType == ABILITY_TYPE_ATTACKOVERRIDE )
			{
				//Do nothing for passive or attack overrided abilities
			}
			else
			{
				BS_PlayerController( BS_UnitController( CurrentUnitSelected.Controller ).Controller ).CurrentAction = ACTION_ABILITY;
				BS_PlayerController( BS_UnitController( CurrentUnitSelected.Controller ).Controller ).CurrentAbilityIndex = 2;
			}

			TheTurnManager.PlaySound( AbilityClickSound );
			CurrentUnitSelected.ActivateDeactivatePawnsInRange();
		}
	}

	`log( "Action 3 performed" );
}


// Written by Preston Hulcy
function Action4ButtonClicked( GFxCLIKWidget.EventData params )
{
	if( CurrentUnitSelected != none )
	{
		//Tell unit that ability four is active
		if( CurrentUnitSelected.Abilities.Length > 3 )
		{
			if( CurrentUnitSelected.Abilities[3].InstantCast )
			{
				if( CurrentUnitSelected.Abilities[3].CanUseAbility() && TheTurnManager.UseAction( CurrentUnitSelected, CurrentUnitSelected.Abilities[3].APCost ) )
				{
					CurrentUnitSelected.Abilities[3].UseAbility();
				}
			}
			else if( CurrentUnitSelected.Abilities[3].AbilityType == ABILITY_TYPE_PASSIVE || CurrentUnitSelected.Abilities[3].AbilityType == ABILITY_TYPE_ATTACKOVERRIDE )
			{
				//Do nothing for passive or attack overrided abilities
			}
			else
			{
				BS_PlayerController( BS_UnitController( CurrentUnitSelected.Controller ).Controller ).CurrentAction = ACTION_ABILITY;
				BS_PlayerController( BS_UnitController( CurrentUnitSelected.Controller ).Controller ).CurrentAbilityIndex = 3;
			}
		}

		TheTurnManager.PlaySound( AbilityClickSound );
		CurrentUnitSelected.ActivateDeactivatePawnsInRange();
	}

	`log( "Action 4 performed" );
}


// Written by Preston Hulcy
function ShowAbilityRange1( GFxCLIKWidget.EventData params )
{
	bShowAbilityRange = true;
	AbilityIdxToShow = 0;
	if( CurrentUnitSelected != none )
	{
		CurrentUnitSelected.bDrawingHoveredAbilityRange = true;
		CurrentUnitSelected.ActivateDeactivatePawnsInRange( CurrentUnitSelected.Abilities[AbilityIdxToShow] );
	}
}


// Written by Preston Hulcy
function ShowAbilityRange2( GFxCLIKWidget.EventData params )
{
	bShowAbilityRange = true;
	AbilityIdxToShow = 1;
	if( CurrentUnitSelected != none )
	{
		CurrentUnitSelected.bDrawingHoveredAbilityRange = true;
		CurrentUnitSelected.ActivateDeactivatePawnsInRange( CurrentUnitSelected.Abilities[AbilityIdxToShow] );
	}
}


// Written by Preston Hulcy
function ShowAbilityRange3( GFxCLIKWidget.EventData params )
{
	bShowAbilityRange = true;
	AbilityIdxToShow = 2;
	if( CurrentUnitSelected != none )
	{
		CurrentUnitSelected.bDrawingHoveredAbilityRange = true;
		CurrentUnitSelected.ActivateDeactivatePawnsInRange( CurrentUnitSelected.Abilities[AbilityIdxToShow] );
	}
}


// Written by Preston Hulcy
function ShowAbilityRange4( GFxCLIKWidget.EventData params )
{
	bShowAbilityRange = true;
	AbilityIdxToShow = 3;
	if( CurrentUnitSelected != none )
	{
		CurrentUnitSelected.bDrawingHoveredAbilityRange = true;
		CurrentUnitSelected.ActivateDeactivatePawnsInRange( CurrentUnitSelected.Abilities[AbilityIdxToShow] );
	}
}


// Written by Preston Hulcy
function HideAbilityRange( GFxCLIKWidget.EventData params )
{
	bShowAbilityRange = false;
	if( CurrentUnitSelected != none )
	{
		CurrentUnitSelected.bDrawingHoveredAbilityRange = false;
		CurrentUnitSelected.ActivateDeactivatePawnsInRange();
	}
}


// Written by Chris Burris
function EndTurnButtonClicked( GFxCLIKWidget.EventData params )
{
	TheTurnManager.EndTurnEarly( TeamNumber );

	TheTurnManager.PlaySound( MenuClickSound );

	`log( "End Turn Button clicked" );
}


// Written by Chris Burris & Preston Hulcy
function UnitsBjornButtonClicked( GFxCLIKWidget.EventData params )
{
	local BS_PlayerController PC;
	local BS_Pawn prevSelection;

	PC = BS_PlayerController(TheTurnManager.GetController(0));
    
    if( PC.SelectedHero != none && ( PC.CurrentAction == ACTION_ABILITY && PC.SelectedHero.Abilities[ PC.CurrentAbilityIndex ].TargetType == TARGET_TYPE_ALLIES ) )
    {
		BS_PlayerInput( PC.PlayerInput ).TryToIssueUseAbilityOrderUsingPawn( BjornUnit );
		UnitsPanel.BjornButtonMC.SetBool( "focused", false );		
    }
	else if( BS_PlayerInput( PC.PlayerInput ).CanSelectUnit( BjornUnit ) )
	{	
	
		prevSelection = PC.SelectedHero;
		PC.SelectHero( BjornUnit );
		if( prevSelection == BjornUnit && bsDoubleClickTimer > 0.0f )
			PC.SnapCameraToHero();
		else 
			bsDoubleClickTimer = MAX_DOUBLE_CLICK_TIME;

		TheTurnManager.PlaySound( UnitSelectedSound );
	}

	`log( "Units Bjorn Button clicked" );
}


// Written by Chris Burris & Preston Hulcy
function UnitsDagButtonClicked( GFxCLIKWidget.EventData params )
{
	local BS_PlayerController PC;
	local BS_Pawn prevSelection;

	PC = BS_PlayerController(TheTurnManager.GetController(0));

	if( PC.SelectedHero != none && ( PC.CurrentAction == ACTION_ABILITY && PC.SelectedHero.Abilities[ PC.CurrentAbilityIndex ].TargetType == TARGET_TYPE_ALLIES ) )
    {
		BS_PlayerInput( PC.PlayerInput ).TryToIssueUseAbilityOrderUsingPawn( DagUnit );
		UnitsPanel.DagButtonMC.SetBool( "focused", false );
    }
	else if( BS_PlayerInput( PC.PlayerInput ).CanSelectUnit( DagUnit ) )
	{	
		prevSelection = PC.SelectedHero;
		PC.SelectHero( DagUnit );
		if( prevSelection == DagUnit && bsDoubleClickTimer > 0.0f )
			PC.SnapCameraToHero();
		else 
			bsDoubleClickTimer = MAX_DOUBLE_CLICK_TIME;

		TheTurnManager.PlaySound( UnitSelectedSound );
	}

	`log( "Units Dag Button clicked" );
}


// Written by Chris Burris & Preston Hulcy
function UnitsFreyaButtonClicked( GFxCLIKWidget.EventData params )
{
	local BS_PlayerController PC;
	local BS_Pawn prevSelection;

	PC = BS_PlayerController(TheTurnManager.GetController(0));
	
	if( PC.SelectedHero != none && ( PC.CurrentAction == ACTION_ABILITY && PC.SelectedHero.Abilities[ PC.CurrentAbilityIndex ].TargetType == TARGET_TYPE_ALLIES ) )
    {
		BS_PlayerInput( PC.PlayerInput ).TryToIssueUseAbilityOrderUsingPawn( FreyaUnit );
		UnitsPanel.FreyaButtonMC.SetBool( "focused", false );
    }
	else if( BS_PlayerInput( PC.PlayerInput ).CanSelectUnit( FreyaUnit ) )
	{
		prevSelection = PC.SelectedHero;
		PC.SelectHero( FreyaUnit );
		if( prevSelection == FreyaUnit && bsDoubleClickTimer > 0.0f )
			PC.SnapCameraToHero();
		else 
			bsDoubleClickTimer = MAX_DOUBLE_CLICK_TIME;

		TheTurnManager.PlaySound( UnitSelectedSound );
	}

	`log( "Units Freya Button clicked" );
}


// Written by Chris Burris & Preston Hulcy
function UnitsIlianaButtonClicked( GFxCLIKWidget.EventData params )
{
	local BS_PlayerController PC;
	local BS_Pawn prevSelection;

	PC = BS_PlayerController(TheTurnManager.GetController(0));
	
	if( PC.SelectedHero != none && ( PC.CurrentAction == ACTION_ABILITY && PC.SelectedHero.Abilities[ PC.CurrentAbilityIndex ].TargetType == TARGET_TYPE_ALLIES ) )
    {
		BS_PlayerInput( PC.PlayerInput ).TryToIssueUseAbilityOrderUsingPawn( IlianaUnit );
		UnitsPanel.IlianaButtonMC.SetBool( "focused", false );
    }
	else if( BS_PlayerInput( PC.PlayerInput ).CanSelectUnit( IlianaUnit ) )
	{
		prevSelection = PC.SelectedHero;
		PC.SelectHero( IlianaUnit );
		if( prevSelection == IlianaUnit && bsDoubleClickTimer > 0.0f )
			PC.SnapCameraToHero();
		else 
			bsDoubleClickTimer = MAX_DOUBLE_CLICK_TIME;

		TheTurnManager.PlaySound( UnitSelectedSound );
	}

	`log( "Units Iliana Button clicked" );
}


// Written by Preston Hulcy
function PlaySpeedButtonClicked( GFxCLIKWidget.EventData params )
{
	local BS_PlayerController PC;
	PC = BS_PlayerController( TheTurnManager.GetController( 0 ) );
	TheTurnManager.PlaySound( MenuClickSound );

	if( PC != none )
	{	
		PC.IncreaseTimeSpeed();
		FastForwardButton.SetString( "label", "x"$int(PC.GetTimeSpeed()) );
	}

	TheTurnInfo.PlaySpeedButtonMC.SetBool( "focused", false );
	
	`log( "Play Speed Button clicked" );
}


// Written by Preston Hulcy
function ResetSpeedButton()
{
	local BS_PlayerController PC;
	PC = BS_PlayerController( TheTurnManager.GetController( 0 ) );

	if( PC != none )
	{	
		FastForwardButton.SetString( "label", "x"$int(PC.GetTimeSpeed()) );
	}
}


// Written by Chris Burris
function MovePreviewButtonClicked( GFxCLIKWidget.EventData params )
{
	TheTurnManager.PlaySound( MenuClickSound );
	
	if( !TheTurnManager.bGamePaused )
	{
		if( CurrentUnitSelected != none )
			CurrentUnitSelected.bIsInFutureMode = !CurrentUnitSelected.bIsInFutureMode;
	}

	`log( "Move Preview Button clicked" );
}


// Written by Chris Burris
function PauseButtonClicked( GFxCLIKWidget.EventData params )
{
	TheTurnManager.PlaySound( MenuClickSound );
	
	ConsoleCommand( "showmenu" );

	`log( "Pause Button clicked" );
}


// Written by Chris Burris
function UnitTypeButtonClicked( GFxCLIKWidget.EventData params )
{
	CurrentUnitInfo.UnitTypeButtonMC.SetBool( "focused", false );
	`log( "Unit Type Button clicked" );
}


// Written by Chris Burris
function UnitHPTFButtonClicked( GFxCLIKWidget.EventData params )
{
	CurrentUnitInfo.HPButtonMC.SetBool( "focused", false );
	`log( "UnitHPTF Button clicked" );
}


// Written by Chris Burris
function UnitAtkTFButtonClicked( GFxCLIKWidget.EventData params )
{
	CurrentUnitInfo.AtkButtonMC.SetBool( "focused", false );
	`log( "UnitAtkTF Button clicked" );
}


// Written by Chris Burris
function UnitAPTFButtonClicked( GFxCLIKWidget.EventData params )
{
	CurrentUnitInfo.APButtonMC.SetBool( "focused", false );
	`log( "UnitAPTF Button clicked" );
}


// Written by Chris Burris
function CombatLockButtonClicked( GFxCLIKWidget.EventData params )
{
	CurrentUnitInfo.CombatLockButtonMC.SetBool( "focused", false );
	`log( "Combat Lock Button clicked" );
}


// Written by Chris Burris
function Action1FadeOutButtonClicked( GFxCLIKWidget.EventData params )
{
	FadeOutButtons[0].SetBool( "focused", false );
	`log( "Action1 Fade Out Button clicked" );
}


// Written by Chris Burris
function Action2FadeOutButtonClicked( GFxCLIKWidget.EventData params )
{
	FadeOutButtons[1].SetBool( "focused", false );
	`log( "Action2 Fade Out Button clicked" );
}


// Written by Chris Burris
function Action3FadeOutButtonClicked( GFxCLIKWidget.EventData params )
{
	FadeOutButtons[2].SetBool( "focused", false );
	`log( "Action3 Fade Out Button clicked" );
}


// Written by Chris Burris
function Action4FadeOutButtonClicked( GFxCLIKWidget.EventData params )
{
	FadeOutButtons[3].SetBool( "focused", false );
	`log( "Action4 Fade Out Button clicked" );
}


// Written by Chris Burris
function Action1NonButtonClicked( GFxCLIKWidget.EventData params )
{
	NonButtons[0].SetBool( "focused", false );
	`log( "Action1 Non Button clicked" );
}


// Written by Chris Burris
function Action2NonButtonClicked( GFxCLIKWidget.EventData params )
{
	NonButtons[1].SetBool( "focused", false );
	`log( "Action2 Non Button clicked" );
}


// Written by Chris Burris
function Action3NonButtonClicked( GFxCLIKWidget.EventData params )
{
	NonButtons[2].SetBool( "focused", false );
	`log( "Action3 Non Button clicked" );
}


// Written by Chris Burris
function Action4NonButtonClicked( GFxCLIKWidget.EventData params )
{
	NonButtons[3].SetBool( "focused", false );
	`log( "Action4 Non Button clicked" );
}


// Written by Preston Hulcy
function TickHUD( float dt )
{
	bsDoubleClickTimer -= dt;
	if( TheTurnManager.bGameStarted )
	{
		HideHoverOverInfo();
		UpdateTurnInfo();
		UpdatePlayerUnits();
		UpdateCursor();
		UpdateUnitsPanel();
		UpdateUnitSelectionStats();
		UpdateStatusEffects();
		ExtraHoverOverInfo();
		if( bShowAbilityRange && CurrentUnitSelected != none && AbilityIdxToShow >= 0 )
		{
			CurrentUnitSelected.DrawAbilityRange( AbilityIdxToShow );
		}
	}	
}


// Written by Preston Hulcy
function SetCurrentUnitSelection( BS_Pawn CurrentUnit )
{
	if( CurrentUnitSelected != none )
	{
		switch( CurrentUnitSelected.UnitName )
		{
		case 'Bjorn':
			UnitsPanel.BjornButtonMC.GotoAndPlay( "up" );
			break;
		case 'Dag':
			UnitsPanel.DagButtonMC.GotoAndPlay( "up" );
			break;
		case 'Freya':
			UnitsPanel.FreyaButtonMC.GotoAndPlay( "up" );
			break;
		case 'Iliana':
			UnitsPanel.IlianaButtonMC.GotoAndPlay( "up" );   
			break;
		}
	}
	CurrentUnitSelected = CurrentUnit;
	if( CurrentUnitSelected != none )
	{
		switch( CurrentUnitSelected.UnitName )
		{
		case 'Bjorn':
			UnitsPanel.BjornButtonMC.GotoAndPlay( "over" );
			break;
		case 'Dag':
			UnitsPanel.DagButtonMC.GotoAndPlay( "over" );
			break;
		case 'Freya':
			UnitsPanel.FreyaButtonMC.GotoAndPlay( "over" );
			break;
		case 'Iliana':
			UnitsPanel.IlianaButtonMC.GotoAndPlay( "over" );   
			break;
		}
	}
}


// Written by Preston Hulcy
function SetCurrentUnitHoveringOver( BS_Pawn NewHoverOver )
{
	if( CurrentlyHoveringOver != NewHoverOver)
	{
		if( CurrentlyHoveringOver != none )
			CurrentlyHoveringOver.DisableHoverOverPS();
		CurrentlyHoveringOver = NewHoverOver;	
		if( CurrentlyHoveringOver != none )
			CurrentlyHoveringOver.EnableHoverOverPS();	
	}
}


// Written by Preston Hulcy
function SetCurrentCursor( CursorType type )
{
	CursorMC.GotoAndStopI( type );
}


// Written by Chris Burris & Preston Hulcy
function UpdateTurnInfo()
{
	if( CurrentTurnNumber != TheTurnManager.CurrentTurn )
	{

		if( TheTurnManager.CurrentPlayersTurn == TeamNumber )
		{
			EnableButton(TheTurnInfo.EndTurnButtonMC);
			AutosizeTextFont( TheTurnTransition.PlayerTurnTF, TheLocalizer.GetLocalizedString( PlayerTurnString ) );

			if( bPlayerHUDEnabled )
			{
				TheTurnTransition.PlayerTurnMC.GotoAndPlayI(1);
				TheTurnManager.PlaySound( PlayerTurnSound );
			}
		}
		else
		{
			DisableButton(TheTurnInfo.EndTurnButtonMC);
			AutosizeTextFont( TheTurnTransition.EnemyTurnTF, TheLocalizer.GetLocalizedString( EnemyTurnString ) );
			if( bPlayerHUDEnabled )
			{
				TheTurnTransition.EnemyTurnMC.GotoAndPlayI(1);
				TheTurnManager.PlaySound( EnemyTurnSound );
			}
		}

		CurrentTurnNumber = TheTurnManager.CurrentTurn;
	}

	if( TheTurnManager.bCanEndTurnEarly )
		TheTurnInfo.EndTurnButtonMC.SetVisible( true );
	else
		TheTurnInfo.EndTurnButtonMC.SetVisible( false );
}


// Written by Chris Burris
function byte GetCorrectTurnNumber( byte TurnNumber )
{
	local byte CorrectTurnNumber;

	if( TurnNumber < 2 )
		CorrectTurnNumber = TurnNumber;
	else
		CorrectTurnNumber = TurnNumber-TurnNumber/2;

	return CorrectTurnNumber;
}


// Written by Chris Burris
function UpdatePlayerUnits()
{
	local int i;
	local BS_PlayerController PC;

	PC = BS_PlayerController(TheTurnManager.GetController(0));

	for( i = 0; i < PC.units.Length; ++i )
	{
		switch( PC.units[i].UnitName )
		{
			case 'Bjorn':
				BjornUnit = PC.units[i];
				break;
			case 'Dag':
				DagUnit = PC.units[i];
				break;
			case 'Freya':
				FreyaUnit = PC.units[i];
				break;
			case 'Iliana':
				IlianaUnit = PC.units[i];
				break;
		}
	}
}


// Written by Chris Burris & Preston Hulcy
function UpdateUnitSelectionStats()
{
	local int i;
	local float HealthPercent;
	if( CurrentUnitSelected != none )
	{
		CurrentUnitInfo.HPContainer.SetVisible( true );
		CurrentUnitInfo.APContainer.SetVisible( true );
		CurrentUnitInfo.AtkContainer.SetVisible( true );
		UnitActionsInfo.AbilityNumbersMC.SetVisible( true );
		CurrentUnitInfo.UnitTypeButtonMC.SetVisible( true );
		
		SetCurrentAP( CurrentUnitSelected, CurrentUnitInfo.APLeft );
		CurrentUnitInfo.APNumber.SetString( "text", ""$CurrentUnitSelected.actionPoints );
		
		if( CurrentUnitSelected.actionPoints <= 0 && CurrentUnitSelected.teamNumber == TeamNumber )
			CurrentUnitInfo.UnitNoAPFadeOutMC.SetVisible( true );
		else
			CurrentUnitInfo.UnitNoAPFadeOutMC.SetVisible( false );

		CurrentUnitInfo.HPBar.SetVisible( true );
		CurrentUnitInfo.HP.SetString( "text", ""$CurrentUnitSelected.GetAdjustedHealth() );
		CurrentUnitInfo.MaxHP.SetString( "text", ""$CurrentUnitSelected.GetAdjustedMaxHealth() );
		
		if( HasAbility( CurrentUnitSelected, 'HP Buff' ) )
			ChangeColorTF( CurrentUnitInfo.MaxHP, HPBuffRed );
		else
			ChangeColorTF( CurrentUnitInfo.MaxHP, "0xFFFFFF" );

		
		HealthPercent = GetPawnPercentageHealth( CurrentUnitSelected );
		CurrentUnitInfo.HPBar.SetFloat( "scaleX", ( HealthPercent > 100 ) ? 1.0f * HealthBarInitScale : ( HealthPercent / 100.0f ) * HealthBarInitScale );
		
		CurrentUnitInfo.Atk.SetString( "text", ""$CurrentUnitSelected.GetAdjustedAttackPower() );

		if( HasAbility( CurrentUnitSelected, 'Atk Buff' ) )
			ChangeColorTF( CurrentUnitInfo.Atk, AtkBuffBlue1 );
		else
			ChangeColorTF( CurrentUnitInfo.Atk, "0xFFFFFF" );

		UpdateCurrentUnitPortraitAndNameAndClass();

		if( CurrentUnitSelected.bCombatLock )
			CurrentUnitInfo.CombatLockButtonMC.SetVisible( true );
		else
			CurrentUnitInfo.CombatLockButtonMC.SetVisible( false );

		DisplayCorrectBuffInfo();

		if( CurrentUnitSelected.teamNumber != TeamNumber )
		{
			SetEnemyUnitHUD();
			
			if ( CurrentUnitSelected.Abilities.Length == 0 )
			{
				for( i = 0; i < MAX_NUM_ACTIONS && i < Actions.Length; ++i)
				{
					if( Actions[i] != none )
						Actions[i].SetVisible( false );
					if( NonButtons[i] != none )
						NonButtons[i].SetVisible( false );
					if( FadeOutButtons[i] != none )
						FadeOutButtons[i].SetVisible( false );
				}
			}
			else
			{
				for( i = 0; i < MAX_NUM_ACTIONS && i < Actions.Length; ++i)
				{
					if( Actions[i] != none && i < CurrentUnitSelected.Abilities.Length && CurrentUnitSelected.Abilities[i] != none )
					{
						Actions[i].SetVisible( false );
						NonButtonIcons[i].GotoAndStopI( int(GetLocalizedAbilityNameOrDescription( CurrentUnitSelected.Abilities[i].AbilityName, 2 )) + 1);
						NonButtons[i].SetVisible( true );
					}
					else
					{
						NonButtons[i].SetVisible( false );
						Actions[i].SetVisible( false );
						FadeOutButtons[i].SetVisible( false );
					}
				}
			}
		}
		else
		{
			SetPlayerUnitHUD();

			for( i = 0; i < MAX_NUM_ACTIONS && i < Actions.Length; ++i)
			{
				if( CurrentUnitSelected.actionPoints > 0 )
				{
					if( Actions[i] != none && i < CurrentUnitSelected.Abilities.Length && CurrentUnitSelected.Abilities[i] != none )
					{
						if( InStance( CurrentUnitSelected ) )
						{
							if( CurrentUnitSelected.Abilities[i].AbilityName == 'Defensive Stance' || CurrentUnitSelected.Abilities[i].AbilityName == 'Snipe Stance' )
							{
								ActionIcons[i].GotoAndStopI( int(GetLocalizedAbilityNameOrDescription( CurrentUnitSelected.Abilities[i].AbilityName, 2 )) + 1);
								ChargeCounts[i].SetString( "text", "" );
								FadeOutButtonsChargeCounts[i].SetString( "text", "" );
								NonButtons[i].SetVisible( false );
								FadeOutButtons[i].SetVisible( false );
								Actions[i].SetVisible( true );
							}
							else
							{
								if( !CurrentUnitSelected.Abilities[i].IsAbilityWithCharges() )
								{
									FadeOutButtonIcons[i].GotoAndStopI( GetGrayIconID( CurrentUnitSelected.Abilities[i].AbilityName ) );
									ChargeCounts[i].SetString( "text", "" );
									FadeOutButtonsChargeCounts[i].SetString( "text", "" );
									NonButtons[i].SetVisible( false );
									Actions[i].SetVisible( false );
									FadeOutButtons[i].SetVisible( true );
								}
								else
								{
									FadeOutButtonIcons[i].GotoAndStopI( GetGrayIconID( CurrentUnitSelected.Abilities[i].AbilityName ) );
									FadeOutButtonsChargeCounts[i].SetString( "text", "x"$CurrentUnitSelected.Abilities[i].ChargesPerMatch );
									ChargeCounts[i].SetString( "text", "" );
									NonButtons[i].SetVisible( false );
									Actions[i].SetVisible( false );
									FadeOutButtons[i].SetVisible( true );	
								}
							}
						}
						else if( CurrentUnitSelected.Abilities[i].Clickable() && !CurrentUnitSelected.Abilities[i].IsAbilityWithCharges() )
						{
							ActionIcons[i].GotoAndStopI( int(GetLocalizedAbilityNameOrDescription( CurrentUnitSelected.Abilities[i].AbilityName, 2 )) + 1);
							ChargeCounts[i].SetString( "text", "" );
							FadeOutButtonsChargeCounts[i].SetString( "text", "" );
							NonButtons[i].SetVisible( false );
							FadeOutButtons[i].SetVisible( false );
							Actions[i].SetVisible( true );
						}
						else if( CurrentUnitSelected.Abilities[i].Clickable() && CurrentUnitSelected.Abilities[i].IsAbilityWithCharges() )
						{
							ActionIcons[i].GotoAndStopI( int(GetLocalizedAbilityNameOrDescription( CurrentUnitSelected.Abilities[i].AbilityName, 2 )) + 1);
							ChargeCounts[i].SetString( "text", "x"$CurrentUnitSelected.Abilities[i].ChargesPerMatch );
							FadeOutButtonsChargeCounts[i].SetString( "text", "" );
							NonButtons[i].SetVisible( false );
							FadeOutButtons[i].SetVisible( false );
							Actions[i].SetVisible( true );						
						}
						else if( !CurrentUnitSelected.Abilities[i].Clickable() )
						{
							Actions[i].SetVisible( false );
							FadeOutButtons[i].SetVisible( false );
							NonButtonIcons[i].GotoAndStopI( int(GetLocalizedAbilityNameOrDescription( CurrentUnitSelected.Abilities[i].AbilityName, 2 )) + 1);
							ChargeCounts[i].SetString( "text", "" );
							FadeOutButtonsChargeCounts[i].SetString( "text", "" );
							NonButtons[i].SetVisible( true );						
						}
					}
					else
					{
						NonButtons[i].SetVisible( false );
						Actions[i].SetVisible( false );
						FadeOutButtons[i].SetVisible( false );
						ChargeCounts[i].SetString( "text", "" );
						FadeOutButtonsChargeCounts[i].SetString( "text", "" );
					}
				}
				else
				{
					if( FadeOutButtons[i] != none && i < CurrentUnitSelected.Abilities.Length && CurrentUnitSelected.Abilities[i] != none )
					{
						if( CurrentUnitSelected.Abilities[i].Clickable() && !CurrentUnitSelected.Abilities[i].IsAbilityWithCharges() )
						{
							FadeOutButtonIcons[i].GotoAndStopI( GetGrayIconID( CurrentUnitSelected.Abilities[i].AbilityName ) );
							ChargeCounts[i].SetString( "text", "" );
							FadeOutButtonsChargeCounts[i].SetString( "text", "" );
							NonButtons[i].SetVisible( false );
							Actions[i].SetVisible( false );
							FadeOutButtons[i].SetVisible( true );
						}
						else if( CurrentUnitSelected.Abilities[i].Clickable() && CurrentUnitSelected.Abilities[i].IsAbilityWithCharges() )
						{
							FadeOutButtonIcons[i].GotoAndStopI( GetGrayIconID( CurrentUnitSelected.Abilities[i].AbilityName ) );
							FadeOutButtonsChargeCounts[i].SetString( "text", "x"$CurrentUnitSelected.Abilities[i].ChargesPerMatch );
							ChargeCounts[i].SetString( "text", "" );
							NonButtons[i].SetVisible( false );
							Actions[i].SetVisible( false );
							FadeOutButtons[i].SetVisible( true );	
						}
						else if( !CurrentUnitSelected.Abilities[i].Clickable() )
						{
							Actions[i].SetVisible( false );
							NonButtons[i].SetVisible( false );
							FadeOutButtonIcons[i].GotoAndStopI( GetGrayIconID( CurrentUnitSelected.Abilities[i].AbilityName ) );
							ChargeCounts[i].SetString( "text", "" );
							FadeOutButtonsChargeCounts[i].SetString( "text", "" );
							FadeOutButtons[i].SetVisible( true );
						}
					}
					else
					{
						NonButtons[i].SetVisible( false );
						Actions[i].SetVisible( false );
						FadeOutButtons[i].SetVisible( false );
						ChargeCounts[i].SetString( "text", "" );
						FadeOutButtonsChargeCounts[i].SetString( "text", "" );
					}
				}
			}
		}

	}
	else
	{
		CurrentUnitInfo.HPContainer.SetVisible( false );
		CurrentUnitInfo.Name.SetString( "text", "" );
		CurrentUnitInfo.APContainer.SetVisible( false );
		currentUnitInfo.APLeft.GotoAndStopI(3);
		CurrentUnitInfo.AtkContainer.SetVisible( false );
		UnitActionsInfo.AbilityNumbersMC.SetVisible( false );
		CurrentUnitInfo.Portrait.GotoAndStopI( NO_SELECTION );
		StatusEffects.StatusEffectsMC.SetVisible( false );
		CurrentUnitInfo.CombatLockButtonMC.SetVisible( false );
		CurrentUnitInfo.UnitTypeButtonMC.SetVisible( false );

		for( i = 0; i < MAX_NUM_ACTIONS && i < Actions.Length; ++i )
		{
			if( Actions[i] != none )
				Actions[i].SetVisible( false );
			if( NonButtons[i] != none )
				NonButtons[i].SetVisible( false );
			if( FadeOutButtons[i] != none )
				FadeOutButtons[i].SetVisible( false );
		}
	}

	UpdateAbilityHoverOverInfo();
}


// Written by Chris Burris
function UpdateUnitsPanel()
{
	local float BjornHealthPercent;
	local float DagHealthPercent;
	local float FreyaHealthPercent;
	local float IlianaHealthPercent;

	if( BjornUnit != none )
	{
		BjornHealthPercent = GetPawnPercentageHealth( BjornUnit );
		UnitsPanel.BjornHealthBarMC.SetFloat( "scaleX", ( BjornHealthPercent > 100 ) ? 1.0f * BjornHealthBarInitScale : ( BjornHealthPercent / 100.0f ) * BjornHealthBarInitScale );

		UnitsPanel.BjornAPNumTF.SetString( "text", ""$BjornUnit.actionPoints );

		if( BjornUnit.actionPoints <= 0 )
			UnitsPanel.BjornButtonPictureMC.GotoAndStopI(3);
		else
			UnitsPanel.BjornButtonPictureMC.GotoAndStopI(1);

		if( BjornUnit.Health <= 0 )
		{
			UnitsPanel.BjornHealthBarMC.SetVisible( false );
			UnitsPanel.BjornAPNumTF.SetString( "text", "0" );
			UnitsPanel.BjornButtonPictureMC.GotoAndStopI(2);
			DisableButton( UnitsPanel.BjornButtonMC );
		}
	}

	if( DagUnit != none )
	{
		DagHealthPercent = GetPawnPercentageHealth( DagUnit );
		UnitsPanel.DagHealthBarMC.SetFloat( "scaleX", ( DagHealthPercent > 100 ) ? 1.0f * DagHealthBarInitScale : ( DagHealthPercent / 100.0f ) * DagHealthBarInitScale );
		
		UnitsPanel.DagAPNumTF.SetString( "text", ""$DagUnit.actionPoints );

		if( DagUnit.actionPoints <= 0 )
			UnitsPanel.DagButtonPictureMC.GotoAndStopI(3);
		else
			UnitsPanel.DagButtonPictureMC.GotoAndStopI(1);

		if( DagUnit.Health <= 0 )
		{
			UnitsPanel.DagHealthBarMC.SetVisible( false );
			UnitsPanel.DagAPNumTF.SetString( "text", "0" );
			UnitsPanel.DagButtonPictureMC.GotoAndStopI(2);
			DisableButton( UnitsPanel.DagButtonMC );
		}
	}

	if( FreyaUnit != none )
	{
		FreyaHealthPercent = GetPawnPercentageHealth( FreyaUnit );
		UnitsPanel.FreyaHealthBarMC.SetFloat( "scaleX", ( FreyaHealthPercent > 100 ) ? 1.0f * FreyaHealthBarInitScale : ( FreyaHealthPercent / 100.0f ) * FreyaHealthBarInitScale );

		UnitsPanel.FreyaAPNumTF.SetString( "text", ""$FreyaUnit.actionPoints );

		if( FreyaUnit.actionPoints <= 0 )
			UnitsPanel.FreyaButtonPictureMC.GotoAndStopI(3);
		else
			UnitsPanel.FreyaButtonPictureMC.GotoAndStopI(1);

		if( FreyaUnit.Health <= 0 )
		{
			UnitsPanel.FreyaHealthBarMC.SetVisible( false );
			UnitsPanel.FreyaAPNumTF.SetString( "text", "0" );
			UnitsPanel.FreyaButtonPictureMC.GotoAndStopI(2);
			DisableButton( UnitsPanel.FreyaButtonMC );
		}
	}

	if( IlianaUnit != none )
	{
		IlianaHealthPercent = GetPawnPercentageHealth( IlianaUnit );
		UnitsPanel.IlianaHealthBarMC.SetFloat( "scaleX", ( IlianaHealthPercent > 100 ) ? 1.0f * IlianaHealthBarInitScale : ( IlianaHealthPercent / 100.0f ) * IlianaHealthBarInitScale );

		UnitsPanel.IlianaAPNumTF.SetString( "text", ""$IlianaUnit.actionPoints );

		if( IlianaUnit.actionPoints <= 0 )
			UnitsPanel.IlianaButtonPictureMC.GotoAndStopI(3);
		else
			UnitsPanel.IlianaButtonPictureMC.GotoAndStopI(1);

		if( IlianaUnit.Health <= 0  )
		{
			UnitsPanel.IlianaHealthBarMC.SetVisible( false );
			UnitsPanel.IlianaAPNumTF.SetString( "text", "0" );
			UnitsPanel.IlianaButtonPictureMC.GotoAndStopI(2);
			DisableButton( UnitsPanel.IlianaButtonMC );
		}
	}
}


// Written by Preston Hulcy
function int RoundNum( float num )
{
	local int iNum;
	local float fNum;

	fNum = num;
	iNum = int( fNum );
	fNum -= iNum;

	if( fNum >= 0.5f )
	{
		iNum += 1;
	}

	return iNum;
}


// Written by Preston Hulcy
function int GetPawnPercentageHealth( BS_Pawn bsPawn )
{
	return GetPercentage( bsPawn.GetAdjustedHealth(), bsPawn.GetAdjustedMaxHealth() );
}


// Written by Preston Hulcy
function int GetPercentage( int val, int max )
{
	return roundNum( ( float( val ) / float( max ) ) * 100.0f );
}


// Written by Chris Burris
function SetCurrentAP( BS_Pawn pawn, out GFxObject movieClip )
{
	local int i;
	local bool hasAPBuff;

	hasAPBuff = false;

	if( pawn != none )
	{
		for( i = 0; i < pawn.Abilities.Length; ++i )
		{
			if( pawn.Abilities[i] != none && (pawn.Abilities[i].AbilityName == 'AP Buff' || pawn.Abilities[i].AbilityName == 'AP Buff Melee') )
			{
				hasAPBuff = true;
				break;
			}
		}

		if( hasAPBuff )
		{
			if( pawn.actionPoints == 3 )
				movieClip.GotoAndStopI( 4 );

			else if( pawn.actionPoints == 2 )
				movieClip.GotoAndStopI( 5 );

			else if( pawn.actionPoints == 1 )
				movieClip.GotoAndStopI( 6 );

			else
				movieClip.GotoAndStopI( 7 );

			if( pawn.Health <= 0 )
				movieClip.GotoAndStopI( 7 );
		}
		else
		{
			if( pawn.actionPoints == 2 )
				movieClip.GotoAndStopI( 1 );

			else if( pawn.actionPoints == 1 )
				movieClip.GotoAndStopI( 2 );

			else
				movieClip.GotoAndStopI( 3 );

			if( pawn.Health <= 0 )
				movieClip.GotoAndStopI( 3 );
		}
	}
}


// Written by Chris Burris
function SetPlayerUnitHUD()
{	
	if( !CurrentUnitSelected.IsInState( 'Dying' ) )
		ChangeColorMC( CurrentUnitInfo.HPBar, PlayerBlue );
}


// Written by Chris Burris & Preston Hulcy
function SetEnemyUnitHUD()
{
	if( !CurrentUnitSelected.IsInState( 'Dying' ) )
		ChangeColorMC( CurrentUnitInfo.HPBar, EnemyRed );
}


// Written by Chris Burris
function DisplayLevelOutcome( bool playerWon )
{
	if( playerWon )
		EndOfLevelScreen.Display();
	else
	{
		GameOverScreen.Display();
		TheTurnManager.PlaySound( GameOverSound );
	}
}


// Written by Chris Burris & Preston Hulcy
function UpdateAbilityHoverOverInfo()
{
	local int i;
	local string btnState;
	local string abilityName;
	local string abilityDescription;
	local int abilityIcon;
	local string apCost;
	local bool displayLeft;

	for( i = 0; i < MAX_NUM_ACTIONS && i < Actions.Length; ++i )
	{
		if( CurrentUnitSelected != none && i < CurrentUnitSelected.Abilities.Length )
		{
			if( InStance( CurrentUnitSelected ) && CurrentUnitSelected.actionPoints > 0 && CurrentUnitSelected.Abilities[i].AbilityName != 'Defensive Stance' && CurrentUnitSelected.Abilities[i].AbilityName != 'Snipe Stance' )
				btnState = FadeOutButtons[i].GetString( "state" );
			else if( ( !CurrentUnitSelected.Abilities[i].Clickable() && CurrentUnitSelected.actionPoints > 0 ) || CurrentUnitSelected.teamNumber != TeamNumber )
				btnState = NonButtons[i].GetString( "state" );
			else if( !CurrentUnitSelected.Abilities[i].Clickable() && CurrentUnitSelected.actionPoints <= 0 )
				btnState = FadeOutButtons[i].GetString( "state" );
			else if( CurrentUnitSelected.actionPoints <= 0 && CurrentUnitSelected.teamNumber == TeamNumber )
				btnState = FadeOutButtons[i].GetString( "state" );
			else
				btnState = Actions[i].GetString( "state" );
			if( btnState == "over" )
			{
				abilityName = GetLocalizedAbilityNameOrDescription( CurrentUnitSelected.Abilities[i].AbilityName );
				abilityDescription = GetLocalizedAbilityNameOrDescription( CurrentUnitSelected.Abilities[i].AbilityName, 1, CurrentUnitSelected.Abilities[i] );
				abilityIcon = int(GetLocalizedAbilityNameOrDescription( CurrentUnitSelected.Abilities[i].AbilityName, 2 ));
				apCost = ""$CurrentUnitSelected.Abilities[i].APCost$" AP";
				
				if( (i+1) == 3 || (i+1) == 4 )
					displayLeft = true;
				else
					displayLeft = false;

				if( !CurrentUnitSelected.Abilities[i].Clickable() )
				{
					SetHoverOverInfo( abilityName, abilityDescription, TheLocalizer.GetLocalizedString( PassiveAbilityName ), abilityIcon, "", displayLeft, true, "" );

					if( CurrentUnitSelected.teamNumber != TeamNumber )
						SetHoverOverInfo( abilityName, abilityDescription, "", abilityIcon, "", displayLeft, true );
				}
				else if( CurrentUnitSelected.teamNumber != TeamNumber )
				{
					SetHoverOverInfo( abilityName, abilityDescription, "", abilityIcon, "", displayLeft, true );
				}
				else
				{
					SetHoverOverInfo( abilityName, abilityDescription, TheLocalizer.GetLocalizedString( ActiveAbilityName ), abilityIcon, apCost, displayLeft, true, "" );
				}

				break;
			}
		}
	}
}


// Written by Chris Burris
function ExtraHoverOverInfo()
{
	if( TheTurnInfo.PlaySpeedButtonMC.GetString( "state" ) == "over" )
	{
		TheHoverOverInfo.HoverOverInfoCombatLockIconMC.SetVisible( false );
		SetHoverOverInfo( TheLocalizer.GetLocalizedString( PlaySpeedTitle ), TheLocalizer.GetLocalizedString( PlaySpeedDescription ), "", 30, "", true, false, "" );
	}
	else if( CurrentUnitInfo.HPButtonMC.GetString( "state" ) == "over" )
	{
		TheHoverOverInfo.HoverOverInfoCombatLockIconMC.SetVisible( false );
		if( HasAbility( CurrentUnitSelected, 'HP Buff' ) )
		{
			TheHoverOverInfo.HoverOverInfoInfoTF.SetBool( "html", true );
			SetHoverOverInfo( TheLocalizer.GetLocalizedString( HPTitle ), (TheLocalizer.GetLocalizedString( HPDescription ) $"<font color='#006500'>"$ " " $ TheLocalizer.GetLocalizedString( HPBuffActivated ) $"</font>" ), "", HoverOverInfoIconID.HP_BUFF, "", false, false, "" );
		}
		else
			SetHoverOverInfo( TheLocalizer.GetLocalizedString( HPTitle ), TheLocalizer.GetLocalizedString( HPDescription ), "", HoverOverInfoIconID.HP_BUFF, "", false, false, "" );
	}
	else if( CurrentUnitInfo.APButtonMC.GetString( "state" ) == "over" )
	{
		TheHoverOverInfo.HoverOverInfoCombatLockIconMC.SetVisible( false );
		SetHoverOverInfo( TheLocalizer.GetLocalizedString( APTitle ), TheLocalizer.GetLocalizedString( APDescription ), "", 34, "", false, false, "" );
	}
	else if( CurrentUnitInfo.AtkButtonMC.GetString( "state" ) == "over" )
	{
		TheHoverOverInfo.HoverOverInfoCombatLockIconMC.SetVisible( false );
		if( HasAbility( CurrentUnitSelected, 'Atk Buff' ) )
		{
			TheHoverOverInfo.HoverOverInfoInfoTF.SetBool( "html", true );
			SetHoverOverInfo( TheLocalizer.GetLocalizedString( AtkTitle ), (TheLocalizer.GetLocalizedString( AtkDescription ) $"<font color='#006500'>"$ " " $ TheLocalizer.GetLocalizedString( AtkBuffActivated ) $"</font>" ), "", HoverOverInfoIconID.ATK_BUFF, "", false, false, "" );
		}
		else
			SetHoverOverInfo( TheLocalizer.GetLocalizedString( AtkTitle ), TheLocalizer.GetLocalizedString( AtkDescription ), "", HoverOverInfoIconID.ATK_BUFF, "", false, false, "" );
	}
	else if( CurrentUnitInfo.CombatLockButtonMC.GetString( "state" ) == "over" )
	{
		TheHoverOverInfo.HoverOverInfoCombatLockIconMC.SetVisible( false );
		SetHoverOverInfo( TheLocalizer.GetLocalizedString( CombatLockTitle ), TheLocalizer.GetLocalizedString( CombatLockDescription ), "", 29, "", false, false, "" );
	}
	else if( CurrentUnitInfo.UnitTypeButtonMC.GetString( "state" ) == "over" )
	{
		TheHoverOverInfo.HoverOverInfoCombatLockIconMC.SetVisible( false );

		if( CurrentUnitInfo.UnitTypeButtonTF.GetText() == TheLocalizer.GetLocalizedString( UnitTypeMeleeText ) )
			SetHoverOverInfo( TheLocalizer.GetLocalizedString( UnitTypeMeleeText ), TheLocalizer.GetLocalizedString( UnitTypeMeleeDescription ), "", 31, "", false, false, "" );
		else if( CurrentUnitInfo.UnitTypeButtonTF.GetText() == TheLocalizer.GetLocalizedString( UnitTypeRangedText ) )
			SetHoverOverInfo( TheLocalizer.GetLocalizedString( UnitTypeRangedText ), TheLocalizer.GetLocalizedString( UnitTypeRangedDescription ), "", 32, "", false, false, "" );
		else if( CurrentUnitInfo.UnitTypeButtonTF.GetText() == TheLocalizer.GetLocalizedString( UnitTypeShifterText ) )
			SetHoverOverInfo( TheLocalizer.GetLocalizedString( UnitTypeShifterText ), TheLocalizer.GetLocalizedString( UnitTypeShifterDescription ), "", 33, "", false, false, "" );
	}
}


// Written by Chris Burris
function UpdateStatusEffects()
{
	local array<BS_StatusEffect> statusEffectArray;

	if( CurrentUnitSelected != none )
	{
		statusEffectArray = IgnorePassivesAsStatusEffects( CurrentUnitSelected.UnitStatusEffects );

		switch( statusEffectArray.Length )
		{
			case 1:
				StatusEffects.StatusEffectsMC.SetVisible( true );

				StatusEffects.StatusEffect1MC.SetVisible( true );
				StatusEffects.StatusEffect2MC.SetVisible( false );
				StatusEffects.StatusEffect3MC.SetVisible( false );
				StatusEffects.StatusEffect4MC.SetVisible( false );
				StatusEffects.StatusEffect5MC.SetVisible( false );
				StatusEffects.StatusEffect6MC.SetVisible( false );
				StatusEffects.StatusEffect7MC.SetVisible( false );
				StatusEffects.StatusEffect8MC.SetVisible( false );

				DisplayCorrectStatusEffect( statusEffectArray[0], StatusEffects.StatusEffectIcons1 );
				break;
			case 2:
				StatusEffects.StatusEffectsMC.SetVisible( true );

				StatusEffects.StatusEffect1MC.SetVisible( true );
				StatusEffects.StatusEffect2MC.SetVisible( true );
				StatusEffects.StatusEffect3MC.SetVisible( false );
				StatusEffects.StatusEffect4MC.SetVisible( false );
				StatusEffects.StatusEffect5MC.SetVisible( false );
				StatusEffects.StatusEffect6MC.SetVisible( false );
				StatusEffects.StatusEffect7MC.SetVisible( false );
				StatusEffects.StatusEffect8MC.SetVisible( false );

				DisplayCorrectStatusEffect( statusEffectArray[0], StatusEffects.StatusEffectIcons1 );
				DisplayCorrectStatusEffect( statusEffectArray[1], StatusEffects.StatusEffectIcons2 );
				break;
			case 3:
				StatusEffects.StatusEffectsMC.SetVisible( true );

				StatusEffects.StatusEffect1MC.SetVisible( true );
				StatusEffects.StatusEffect2MC.SetVisible( true );
				StatusEffects.StatusEffect3MC.SetVisible( true );
				StatusEffects.StatusEffect4MC.SetVisible( false );
				StatusEffects.StatusEffect5MC.SetVisible( false );
				StatusEffects.StatusEffect6MC.SetVisible( false );
				StatusEffects.StatusEffect7MC.SetVisible( false );
				StatusEffects.StatusEffect8MC.SetVisible( false );

				DisplayCorrectStatusEffect( statusEffectArray[0], StatusEffects.StatusEffectIcons1 );
				DisplayCorrectStatusEffect( statusEffectArray[1], StatusEffects.StatusEffectIcons2 );
				DisplayCorrectStatusEffect( statusEffectArray[2], StatusEffects.StatusEffectIcons3 );
				break;
			case 4:
				StatusEffects.StatusEffectsMC.SetVisible( true );

				StatusEffects.StatusEffect1MC.SetVisible( true );
				StatusEffects.StatusEffect2MC.SetVisible( true );
				StatusEffects.StatusEffect3MC.SetVisible( true );
				StatusEffects.StatusEffect4MC.SetVisible( true );
				StatusEffects.StatusEffect5MC.SetVisible( false );
				StatusEffects.StatusEffect6MC.SetVisible( false );
				StatusEffects.StatusEffect7MC.SetVisible( false );
				StatusEffects.StatusEffect8MC.SetVisible( false );

				DisplayCorrectStatusEffect( statusEffectArray[0], StatusEffects.StatusEffectIcons1 );
				DisplayCorrectStatusEffect( statusEffectArray[1], StatusEffects.StatusEffectIcons2 );
				DisplayCorrectStatusEffect( statusEffectArray[2], StatusEffects.StatusEffectIcons3 );
				DisplayCorrectStatusEffect( statusEffectArray[3], StatusEffects.StatusEffectIcons4 );
				break;
			case 5:
				StatusEffects.StatusEffectsMC.SetVisible( true );

				StatusEffects.StatusEffect1MC.SetVisible( true );
				StatusEffects.StatusEffect2MC.SetVisible( true );
				StatusEffects.StatusEffect3MC.SetVisible( true );
				StatusEffects.StatusEffect4MC.SetVisible( true );
				StatusEffects.StatusEffect5MC.SetVisible( true );
				StatusEffects.StatusEffect6MC.SetVisible( false );
				StatusEffects.StatusEffect7MC.SetVisible( false );
				StatusEffects.StatusEffect8MC.SetVisible( false );

				DisplayCorrectStatusEffect( statusEffectArray[0], StatusEffects.StatusEffectIcons1 );
				DisplayCorrectStatusEffect( statusEffectArray[1], StatusEffects.StatusEffectIcons2 );
				DisplayCorrectStatusEffect( statusEffectArray[2], StatusEffects.StatusEffectIcons3 );
				DisplayCorrectStatusEffect( statusEffectArray[3], StatusEffects.StatusEffectIcons4 );
				DisplayCorrectStatusEffect( statusEffectArray[4], StatusEffects.StatusEffectIcons5 );
				break;
			case 6:
				StatusEffects.StatusEffectsMC.SetVisible( true );

				StatusEffects.StatusEffect1MC.SetVisible( true );
				StatusEffects.StatusEffect2MC.SetVisible( true );
				StatusEffects.StatusEffect3MC.SetVisible( true );
				StatusEffects.StatusEffect4MC.SetVisible( true );
				StatusEffects.StatusEffect5MC.SetVisible( true );
				StatusEffects.StatusEffect6MC.SetVisible( true );
				StatusEffects.StatusEffect7MC.SetVisible( false );
				StatusEffects.StatusEffect8MC.SetVisible( false );

				DisplayCorrectStatusEffect( statusEffectArray[0], StatusEffects.StatusEffectIcons1 );
				DisplayCorrectStatusEffect( statusEffectArray[1], StatusEffects.StatusEffectIcons2 );
				DisplayCorrectStatusEffect( statusEffectArray[2], StatusEffects.StatusEffectIcons3 );
				DisplayCorrectStatusEffect( statusEffectArray[3], StatusEffects.StatusEffectIcons4 );
				DisplayCorrectStatusEffect( statusEffectArray[4], StatusEffects.StatusEffectIcons5 );
				DisplayCorrectStatusEffect( statusEffectArray[5], StatusEffects.StatusEffectIcons6 );
				break;
			case 7:
				StatusEffects.StatusEffectsMC.SetVisible( true );

				StatusEffects.StatusEffect1MC.SetVisible( true );
				StatusEffects.StatusEffect2MC.SetVisible( true );
				StatusEffects.StatusEffect3MC.SetVisible( true );
				StatusEffects.StatusEffect4MC.SetVisible( true );
				StatusEffects.StatusEffect5MC.SetVisible( true );
				StatusEffects.StatusEffect6MC.SetVisible( true );
				StatusEffects.StatusEffect7MC.SetVisible( true );
				StatusEffects.StatusEffect8MC.SetVisible( false );

			    DisplayCorrectStatusEffect( statusEffectArray[0], StatusEffects.StatusEffectIcons1 );
				DisplayCorrectStatusEffect( statusEffectArray[1], StatusEffects.StatusEffectIcons2 );
				DisplayCorrectStatusEffect( statusEffectArray[2], StatusEffects.StatusEffectIcons3 );
				DisplayCorrectStatusEffect( statusEffectArray[3], StatusEffects.StatusEffectIcons4 );
				DisplayCorrectStatusEffect( statusEffectArray[4], StatusEffects.StatusEffectIcons5 );
				DisplayCorrectStatusEffect( statusEffectArray[5], StatusEffects.StatusEffectIcons6 );
				DisplayCorrectStatusEffect( statusEffectArray[6], StatusEffects.StatusEffectIcons7 );
				break;
			case 8:
				StatusEffects.StatusEffectsMC.SetVisible( true );

				StatusEffects.StatusEffect1MC.SetVisible( true );
				StatusEffects.StatusEffect2MC.SetVisible( true );
				StatusEffects.StatusEffect3MC.SetVisible( true );
				StatusEffects.StatusEffect4MC.SetVisible( true );
				StatusEffects.StatusEffect5MC.SetVisible( true );
				StatusEffects.StatusEffect6MC.SetVisible( true );
				StatusEffects.StatusEffect7MC.SetVisible( true );
				StatusEffects.StatusEffect8MC.SetVisible( true );

			    DisplayCorrectStatusEffect( statusEffectArray[0], StatusEffects.StatusEffectIcons1 );
				DisplayCorrectStatusEffect( statusEffectArray[1], StatusEffects.StatusEffectIcons2 );
				DisplayCorrectStatusEffect( statusEffectArray[2], StatusEffects.StatusEffectIcons3 );
				DisplayCorrectStatusEffect( statusEffectArray[3], StatusEffects.StatusEffectIcons4 );
				DisplayCorrectStatusEffect( statusEffectArray[4], StatusEffects.StatusEffectIcons5 );
				DisplayCorrectStatusEffect( statusEffectArray[5], StatusEffects.StatusEffectIcons6 );
				DisplayCorrectStatusEffect( statusEffectArray[6], StatusEffects.StatusEffectIcons7 );
				DisplayCorrectStatusEffect( statusEffectArray[7], StatusEffects.StatusEffectIcons8 );
				break;
			default:
				StatusEffects.StatusEffect1MC.SetVisible( false );
				StatusEffects.StatusEffect2MC.SetVisible( false );
				StatusEffects.StatusEffect3MC.SetVisible( false );
				StatusEffects.StatusEffect4MC.SetVisible( false );
				StatusEffects.StatusEffect5MC.SetVisible( false );
				StatusEffects.StatusEffect6MC.SetVisible( false );
				StatusEffects.StatusEffect7MC.SetVisible( false );
				StatusEffects.StatusEffect8MC.SetVisible( false );

				StatusEffects.StatusEffectsMC.SetVisible( false );
		}
	}

}


// Written by Chris Burris & Preston Hulcy
function DisplayCorrectStatusEffect( BS_StatusEffect statusEffect, out GFxObject icons[12] )
{
	local int i;
	local int turnsLeft;
	local string turnsLeftString;
	local array<int> stats;
	local array<string> colors;
	local string description;
	local BS_StatusEffect BSSE;
	local int statusEffectDamage;
	local BS_Ability ability;

	ability = none;

	switch( statusEffect.StatusEffectName )
	{
		case 'Bloodlust':

			icons[StatusEffectID.BLOOD_LUST].SetVisible( true );

			for( i = 0; i < MAX_NUM_STATUS_EFFECTS; ++i )
	        {
				if( i == StatusEffectID.BLOOD_LUST )
					continue;

				icons[i].SetVisible( false );
	        }

			if( icons[StatusEffectID.BLOOD_LUST].GetString( "state" ) == "over" )
			{
				turnsLeft = statusEffect.TurnsToLast;
				turnsLeftString = (turnsLeft == 1) ? turnsLeft$" "$TheLocalizer.GetLocalizedString( SingleTurnLeftName ) : turnsLeft$" "$TheLocalizer.GetLocalizedString( TurnsLeftName );

				stats.AddItem( abs( statusEffect.AttackBonusPercent * 100 ) );
				stats.AddItem( abs( statusEffect.DefenseBonusPercent * 100 ) );

				colors.AddItem( StatColor );
				colors.AddItem( StatColor );
				
				description = TheLocalizer.GetLocalizedString( BloodLustEffectDescription );
				description = class'BS_Utility'.static.FillStringWithStats( description, stats, colors );

				SetHoverOverInfo( TheLocalizer.GetLocalizedString( BloodLustName ), description, TheLocalizer.GetLocalizedString( StatusEffectName ), HoverOverInfoIconID.BLOOD_LUST, turnsLeftString );
			}

			break;
		case 'Demoralize':
			icons[StatusEffectID.SHOUT].SetVisible( true );

			for( i = 0; i < MAX_NUM_STATUS_EFFECTS; ++i )
	        {
				if( i == StatusEffectID.SHOUT )
					continue;

				icons[i].SetVisible( false );
	        }

			if( icons[StatusEffectID.SHOUT].GetString( "state" ) == "over" )
			{
				turnsLeft = statusEffect.TurnsToLast;
				turnsLeftString = (turnsLeft == 1) ? turnsLeft$" "$TheLocalizer.GetLocalizedString( SingleTurnLeftName ) : turnsLeft$" "$TheLocalizer.GetLocalizedString( TurnsLeftName );
				
				stats.AddItem( abs( statusEffect.AttackBonusPercent * 100 ) );

				colors.AddItem( StatColor );
				
				description = TheLocalizer.GetLocalizedString( ShoutEffectDescription );
				description = class'BS_Utility'.static.FillStringWithStats( description, stats, colors );

				SetHoverOverInfo( TheLocalizer.GetLocalizedString( ShoutName ), description, TheLocalizer.GetLocalizedString( StatusEffectName ), HoverOverInfoIconID.SHOUT, turnsLeftString );
			}

			break;
		case 'CRIPPLE':
			icons[StatusEffectID.CRIPPLE].SetVisible( true );

			for( i = 0; i < MAX_NUM_STATUS_EFFECTS; ++i )
	        {
				if( i == StatusEffectID.CRIPPLE )
					continue;

				icons[i].SetVisible( false );
	        }

			if( icons[StatusEffectID.CRIPPLE].GetString( "state" ) == "over" )
			{
				turnsLeft = statusEffect.TurnsToLast;
				turnsLeftString = (turnsLeft == 1) ? turnsLeft$" "$TheLocalizer.GetLocalizedString( SingleTurnLeftName ) : turnsLeft$" "$TheLocalizer.GetLocalizedString( TurnsLeftName );

				if( CurrentUnitSelected != none && statusEffect != none )
				{
					BSSE = CurrentUnitSelected.Spawn( class'BS_StatusEffect',,,,,statusEffect );
					statusEffectDamage = BSSE.GetDamage() * ( 1.0f + CurrentUnitSelected.GetAttackBonusPercent() );
				}
				if( BSSE != none && statusEffectDamage != statusEffect.DamageToDeal )
				{
					stats.AddItem( abs( statusEffect.MoveRadiusBonusPercent * 100 ) );
					stats.AddItem( statusEffectDamage );
					colors.AddItem( StatColor );
					colors.AddItem( "006500" );
					BSSE.Destroy();
				}
				else
				{
					stats.AddItem( abs( statusEffect.MoveRadiusBonusPercent * 100 ) );
					stats.AddItem( abs( statusEffect.DamageToDeal ) );
					colors.AddItem( StatColor );
					colors.AddItem( StatColor );
				}
				
				description = TheLocalizer.GetLocalizedString( CrippleEffectDescription );
				description = class'BS_Utility'.static.FillStringWithStats( description, stats, colors );

				SetHoverOverInfo( TheLocalizer.GetLocalizedString( CrippleName ), description, TheLocalizer.GetLocalizedString( StatusEffectName ), HoverOverInfoIconID.CRIPPLE, turnsLeftString );
			}

			break;
		case 'BLIND':
			icons[StatusEffectID.BLIND].SetVisible( true );

			for( i = 0; i < MAX_NUM_STATUS_EFFECTS; ++i )
	        {
				if( i == StatusEffectID.BLIND )
					continue;

				icons[i].SetVisible( false );
	        }

			if( icons[StatusEffectID.BLIND].GetString( "state" ) == "over" )
			{
				turnsLeft = statusEffect.TurnsToLast;
				turnsLeftString = (turnsLeft == 1) ? turnsLeft$" "$TheLocalizer.GetLocalizedString( SingleTurnLeftName ) : turnsLeft$" "$TheLocalizer.GetLocalizedString( TurnsLeftName );
				
				stats.AddItem( abs( statusEffect.DefenseBonusPercent * 100 ) );

				colors.AddItem( StatColor );

				description = TheLocalizer.GetLocalizedString( BlindEffectDescription );
				description = class'BS_Utility'.static.FillStringWithStats( description, stats, colors );

				SetHoverOverInfo( TheLocalizer.GetLocalizedString( BlindName ), description, TheLocalizer.GetLocalizedString( StatusEffectName ), HoverOverInfoIconID.BLIND, turnsLeftString );
			}

			break;
		case 'REJUVENATION':
			icons[StatusEffectID.REJUVENATION].SetVisible( true );

			for( i = 0; i < MAX_NUM_STATUS_EFFECTS; ++i )
	        {
				if( i == StatusEffectID.REJUVENATION )
					continue;

				icons[i].SetVisible( false );
	        }

			if( icons[StatusEffectID.REJUVENATION].GetString( "state" ) == "over" )
			{
				turnsLeft = statusEffect.TurnsToLast;
				turnsLeftString = (turnsLeft == 1) ? turnsLeft$" "$TheLocalizer.GetLocalizedString( SingleTurnLeftName ) : turnsLeft$" "$TheLocalizer.GetLocalizedString( TurnsLeftName );

				stats.AddItem( abs( statusEffect.DamageToDeal ) );

				colors.AddItem( StatColor );
				
				description = TheLocalizer.GetLocalizedString( RejuvenationEffectDescription );
				description = class'BS_Utility'.static.FillStringWithStats( description, stats, colors );

				SetHoverOverInfo( TheLocalizer.GetLocalizedString( RejuvenationName ), description, TheLocalizer.GetLocalizedString( StatusEffectName ), HoverOverInfoIconID.REJUVENATION, turnsLeftString );
			}

			break;
		case 'Burning Blood':
			icons[StatusEffectID.BURNING_BLOOD].SetVisible( true );

			for( i = 0; i < MAX_NUM_STATUS_EFFECTS; ++i )
	        {
				if( i == StatusEffectID.BURNING_BLOOD )
					continue;

				icons[i].SetVisible( false );
	        }

			if( icons[StatusEffectID.BURNING_BLOOD].GetString( "state" ) == "over" )
			{
				if( CurrentUnitSelected != none )
					ability = getAbility( CurrentUnitSelected, 'Burning Blood' );

				if( ability != none && ability.Owner != none && ability.StatusEffectArchetype != none )
				{
					BSSE = ability.Spawn( class'BS_StatusEffect',,,,,ability.StatusEffectArchetype );
					statusEffectDamage = BSSE.GetDamage() * ( 1.0f + BS_Pawn( ability.Owner ).GetAttackBonusPercent() );
				}
				if( BSSE != none && statusEffectDamage != statusEffect.DamageToDeal )
				{
					stats.AddItem( statusEffectDamage );
					stats.AddItem( abs( statusEffect.PercentOfDamageToTake * statusEffectDamage ) );
					colors.AddItem( "006500" );
					colors.AddItem( "006500" );
					BSSE.Destroy();
				}
				else
				{
					stats.AddItem( abs( statusEffect.DamageToDeal ) );
					stats.AddItem( abs( statusEffect.PercentOfDamageToTake * statusEffect.DamageToDeal ) );
					colors.AddItem( StatColor );
					colors.AddItem( StatColor );
				}

				description = TheLocalizer.GetLocalizedString( BurningBloodEffectDescription );
				description = class'BS_Utility'.static.FillStringWithStats( description, stats, colors );

				SetHoverOverInfo( TheLocalizer.GetLocalizedString( BurningBloodName ), description, TheLocalizer.GetLocalizedString( StatusEffectName ), HoverOverInfoIconID.BURNING_BLOOD, TheLocalizer.GetLocalizedString( SpendOneAPName ) );
			}

			break;
		case 'Defensive Stance':
			icons[StatusEffectID.DEFENSIVE_STANCE].SetVisible( true );

			for( i = 0; i < MAX_NUM_STATUS_EFFECTS; ++i )
	        {
				if( i == StatusEffectID.DEFENSIVE_STANCE )
					continue;

				icons[i].SetVisible( false );
	        }

			if( icons[StatusEffectID.DEFENSIVE_STANCE].GetString( "state" ) == "over" )
			{
				stats.AddItem( abs( statusEffect.DefenseBonusPercent * 100 ) );

				colors.AddItem( StatColor );

				description = TheLocalizer.GetLocalizedString( DefensiveStanceEffectDescription );
				description = class'BS_Utility'.static.FillStringWithStats( description, stats, colors );

				SetHoverOverInfo( TheLocalizer.GetLocalizedString( DefensiveStanceName ), description, TheLocalizer.GetLocalizedString( StatusEffectName ), HoverOverInfoIconID.DEFENSIVE_STANCE, TheLocalizer.GetLocalizedString( SpendOneAPName ) );
			}

			break;
		case 'Snipe Stance':
			icons[StatusEffectID.SNIPE_STANCE].SetVisible( true );

			for( i = 0; i < MAX_NUM_STATUS_EFFECTS; ++i )
	        {
				if( i == StatusEffectID.SNIPE_STANCE )
					continue;

				icons[i].SetVisible( false );
	        }

			if( icons[StatusEffectID.SNIPE_STANCE].GetString( "state" ) == "over" )
			{
				stats.AddItem( abs( statusEffect.AttackRadiusBonusPercent * 100 ) );
				stats.AddItem( abs( statusEffect.DefenseBonusPercent * 100 ) );

				colors.AddItem( StatColor );
				colors.AddItem( StatColor );

				description = TheLocalizer.GetLocalizedString( SnipeStanceEffectDescription );
				description = class'BS_Utility'.static.FillStringWithStats( description, stats, colors );

				SetHoverOverInfo( TheLocalizer.GetLocalizedString( SnipeStanceName ), description, TheLocalizer.GetLocalizedString( StatusEffectName ), HoverOverInfoIconID.SNIPE_STANCE, TheLocalizer.GetLocalizedString( SpendOneAPName ) );
			}

			break;
		case 'Shield Wall':
			icons[StatusEffectID.SHIELD_WALL].SetVisible( true );

			for( i = 0; i < MAX_NUM_STATUS_EFFECTS; ++i )
	        {
				if( i == StatusEffectID.SHIELD_WALL )
					continue;

				icons[i].SetVisible( false );
	        }

			if( icons[StatusEffectID.SHIELD_WALL].GetString( "state" ) == "over" )
			{
				turnsLeft = statusEffect.TurnsToLast;
				turnsLeftString = (turnsLeft == 1) ? turnsLeft$" "$TheLocalizer.GetLocalizedString( SingleTurnLeftName ) : turnsLeft$" "$TheLocalizer.GetLocalizedString( TurnsLeftName );

				if( CurrentUnitSelected.Abilities[0].Name == 'Shield Wall' || CurrentUnitSelected.Abilities[1].Name == 'Shield Wall' || CurrentUnitSelected.Abilities[2].Name == 'Shield Wall' || CurrentUnitSelected.Abilities[3].Name == 'Shield Wall' )
					SetHoverOverInfo( TheLocalizer.GetLocalizedString( ShieldWallName ), TheLocalizer.GetLocalizedString( ShieldWallEffectDescription1 ), TheLocalizer.GetLocalizedString( StatusEffectName ), HoverOverInfoIconID.SHIELD_WALL, turnsLeftString );
				else
					SetHoverOverInfo( TheLocalizer.GetLocalizedString( ShieldWallName ), TheLocalizer.GetLocalizedString( ShieldWallEffectDescription2 ), TheLocalizer.GetLocalizedString( StatusEffectName ), HoverOverInfoIconID.SHIELD_WALL, turnsLeftString );
			}

			break;
		case 'Static Shield':
			icons[StatusEffectID.STATIC_SHIELD].SetVisible( true );

			for( i = 0; i < MAX_NUM_STATUS_EFFECTS; ++i )
	        {
				if( i == StatusEffectID.STATIC_SHIELD )
					continue;

				icons[i].SetVisible( false );
	        }

			if( icons[StatusEffectID.STATIC_SHIELD].GetString( "state" ) == "over" )
			{
				turnsLeft = statusEffect.TurnsToLast;
				turnsLeftString = (turnsLeft == 1) ? turnsLeft$" "$TheLocalizer.GetLocalizedString( SingleTurnLeftName ) : turnsLeft$" "$TheLocalizer.GetLocalizedString( TurnsLeftName );

				stats.AddItem( abs( statusEffect.ThornPercentDamage * 100 ) );

				colors.AddItem( StatColor );

				description = TheLocalizer.GetLocalizedString( StaticShieldEffectDescription );
				description = class'BS_Utility'.static.FillStringWithStats( description, stats, colors );

				SetHoverOverInfo( TheLocalizer.GetLocalizedString( StaticShieldName ), description, TheLocalizer.GetLocalizedString( StatusEffectName ), HoverOverInfoIconID.STATIC_SHIELD, turnsLeftString );
			}

			break;
		case 'Mead Bomb':
			icons[StatusEffectID.MEAD_BOMB].SetVisible( true );

			for( i = 0; i < MAX_NUM_STATUS_EFFECTS; ++i )
	        {
				if( i == StatusEffectID.MEAD_BOMB )
					continue;

				icons[i].SetVisible( false );
	        }

			if( icons[StatusEffectID.MEAD_BOMB].GetString( "state" ) == "over" )
			{
				turnsLeft = statusEffect.TurnsToLast;
				turnsLeftString = (turnsLeft == 1) ? turnsLeft$" "$TheLocalizer.GetLocalizedString( SingleTurnLeftName ) : turnsLeft$" "$TheLocalizer.GetLocalizedString( TurnsLeftName );

				if( CurrentUnitSelected != none && statusEffect != none )
				{
					BSSE = CurrentUnitSelected.Spawn( class'BS_StatusEffect',,,,,statusEffect );
					statusEffectDamage = BSSE.GetDamage() * ( 1.0f + CurrentUnitSelected.GetAttackBonusPercent() );
				}
				if( BSSE != none && statusEffectDamage != statusEffect.DamageToDeal )
				{
					stats.AddItem( statusEffectDamage );
					colors.AddItem( "006500" );
					BSSE.Destroy();
				}
				else
				{
					stats.AddItem( abs( statusEffect.DamageToDeal ) );
					colors.AddItem( StatColor );
				}

				description = TheLocalizer.GetLocalizedString( MeadBombEffectDescription );
				description = class'BS_Utility'.static.FillStringWithStats( description, stats, colors );

				SetHoverOverInfo( TheLocalizer.GetLocalizedString( MeadBombName ), description, TheLocalizer.GetLocalizedString( StatusEffectName ), HoverOverInfoIconID.MEAD_BOMB, turnsLeftString );
			}

			break;
		case 'Sprint':
			icons[StatusEffectID.DANGER_ZONE].SetVisible( true );

			for( i = 0; i < MAX_NUM_STATUS_EFFECTS; ++i )
	        {
				if( i == StatusEffectID.DANGER_ZONE )
					continue;

				icons[i].SetVisible( false );
	        }

			if( icons[StatusEffectID.DANGER_ZONE].GetString( "state" ) == "over" )
			{
				description = TheLocalizer.GetLocalizedString( SprintEffectDescription );

				SetHoverOverInfo( TheLocalizer.GetLocalizedString( SprintName ), description, TheLocalizer.GetLocalizedString( StatusEffectName ), HoverOverInfoIconID.DANGER_ZONE_EFFECT, TheLocalizer.GetLocalizedString( SpendOneAPName ) );
			}

			break;
	}
}


// Written by Chris Burris
function array<BS_StatusEffect> IgnorePassivesAsStatusEffects( array<BS_StatusEffect> statusEffectArray )
{
	local int i;
	local array<BS_StatusEffect> newStatusEffectArray;

	for( i = 0; i < statusEffectArray.Length; ++i )
	{
		if( statusEffectArray[i].StatusEffectName != 'Melee Pro' && statusEffectArray[i].StatusEffectName != 'HPBuff' && statusEffectArray[i].StatusEffectName != 'AtkBuff' && statusEffectArray[i].StatusEffectName != 'APBuff' && statusEffectArray[i].StatusEffectName != 'APBuffMelee' )
			newStatusEffectArray.AddItem( statusEffectArray[i] );
	}

	return newStatusEffectArray;
}


// Written by Chris Burris
function bool InStance( BS_Pawn pawn )
{
	local bool bStance;
	local int i;
	local array<BS_StatusEffect> statusEffectArray;

	bStance = false;

	if( pawn != none )
	{
		statusEffectArray = pawn.UnitStatusEffects;
		
		for( i = 0; i < statusEffectArray.Length; ++i )
		{
			if( statusEffectArray[i].StatusEffectName == 'Defensive Stance' || statusEffectArray[i].StatusEffectName == 'Snipe Stance' )
			{
				bStance = true;
				break;
			}
		}

	}

	return bStance;
}


// Written by Chris Burris
function BS_Ability getAbility( BS_Pawn pawn, name abilityName )
{
	local int i;
	local BS_Ability ability;
	ability = none;

	if( pawn != none )
	{
		for( i = 0; i < MAX_NUM_ACTIONS && i < Actions.Length; ++i )
	    {
			if( pawn.Abilities[i].AbilityName == abilityName )
			{
				ability = pawn.Abilities[i];
				break;
			}
	    }
	}

	return ability;
}


// Written by Chris Burris & Preston Hulcy
function string GetLocalizedAbilityNameOrDescription( name abilityName, optional int nameDescriptionOrIcon = 0, optional BS_Ability theAbility )
{
	local string localizedAbilityName;
	local string localizedAbilityDescription;
	local int iconID;
	local array<int> stats;
	local array<string> colors;
	local BS_StatusEffect BSSE;
	local int statusEffectDamage;

	switch ( abilityName )
	{
	    case 'Whirlwind':
			localizedAbilityName = TheLocalizer.GetLocalizedString( WhirlwindName );
			localizedAbilityDescription = TheLocalizer.GetLocalizedString(  WhirlwindDescription );
			iconID = HoverOverInfoIconID.WHIRLWIND;
			break;
		 case 'Whirlwind Level03':
			localizedAbilityName = TheLocalizer.GetLocalizedString( WhirlwindName );
			localizedAbilityDescription = TheLocalizer.GetLocalizedString(  WhirlwindDescription );
			iconID = HoverOverInfoIconID.WHIRLWIND;
			break;
		case 'Charge':
			localizedAbilityName = TheLocalizer.GetLocalizedString( ChargeName );
			localizedAbilityDescription = TheLocalizer.GetLocalizedString( ChargeDescription );
			iconID = HoverOverInfoIconID.CHARGE;
			if( theAbility != none )
			{
				if( theAbility.Owner != none && theAbility.GetAdjustedDamage() != theAbility.Damage )
				{
					stats.AddItem( theAbility.GetAdjustedDamage() );
					colors.AddItem( "006500" );
				}
				else
				{
					stats.AddItem( theAbility.Damage );
					colors.AddItem( StatColor );
				}
			}
			break;
		case 'Drink':
			localizedAbilityName = TheLocalizer.GetLocalizedString( DrinkName );
			localizedAbilityDescription = TheLocalizer.GetLocalizedString( DrinkDescription );
			iconID = HoverOverInfoIconID.DRINK;
			if( theAbility != none )
			{
				stats.AddItem( theAbility.Damage );
				stats.AddItem( theAbility.ChargesPerMatch );
				colors.AddItem( StatColor );
				colors.AddItem( StatColor );
			}
			break;
		case 'Pull':
			localizedAbilityName = TheLocalizer.GetLocalizedString( PullName );
			localizedAbilityDescription = TheLocalizer.GetLocalizedString( PullDescription );
			iconID = HoverOverInfoIconID.PULL;
			if( theAbility != none )
			{
				if( theAbility.Owner != none && theAbility.GetAdjustedDamage() != theAbility.Damage )
				{
					stats.AddItem( theAbility.GetAdjustedDamage() );
					colors.AddItem( "006500" );
				}
				else
				{
					stats.AddItem( theAbility.Damage );
					colors.AddItem( StatColor );
				}
			}
			break;
		case 'Vortex':
			localizedAbilityName = TheLocalizer.GetLocalizedString( VortexName );
			localizedAbilityDescription = TheLocalizer.GetLocalizedString( VortexDescription );
			iconID = HoverOverInfoIconID.VORTEX;
			break;
		case 'Kick':
			localizedAbilityName = TheLocalizer.GetLocalizedString( KickName );
			localizedAbilityDescription = TheLocalizer.GetLocalizedString( KickDescription );
			iconID = HoverOverInfoIconID.KICK;
			if( theAbility != none )
			{
				if( theAbility.Owner != none && theAbility.GetAdjustedDamage() != theAbility.Damage )
				{
					stats.AddItem( theAbility.GetAdjustedDamage() );
					colors.AddItem( "006500" );
				}
				else
				{
					stats.AddItem( theAbility.Damage );
					colors.AddItem( StatColor );
				}

				stats.AddItem( theAbility.APCost );
				colors.AddItem( StatColor );
			}
			break;
		case 'BloodLust':
			localizedAbilityName = TheLocalizer.GetLocalizedString( BloodLustName );
			localizedAbilityDescription = TheLocalizer.GetLocalizedString(  BloodLustDescription );
			iconID = HoverOverInfoIconID.BLOOD_LUST;
			if( theAbility != none )
			{
				stats.AddItem( theAbility.StatusEffectArchetype.AttackBonusPercent * 100 );
				stats.AddItem( theAbility.StatusEffectArchetype.DefenseBonusPercent * 100 );
				stats.AddItem( theAbility.StatusEffectArchetype.TurnsToLast );
				colors.AddItem( StatColor );
				colors.AddItem( StatColor );
				colors.AddItem( StatColor );
			}
			break;
		case 'Power Strike':
			localizedAbilityName = TheLocalizer.GetLocalizedString( PowerStrikeName );
			localizedAbilityDescription = TheLocalizer.GetLocalizedString(  PowerStrikeDescription );
			iconID = HoverOverInfoIconID.POWER_STRIKE;
			if( theAbility != none )
			{
				if( theAbility.Owner != none && theAbility.GetAdjustedDamage() != theAbility.Damage )
				{
					stats.AddItem( theAbility.GetAdjustedDamage() );
					stats.AddItem( theAbility.PercentOfDamageAsHealthCost * theAbility.GetAdjustedDamage() );
					colors.AddItem( "006500" );
					colors.AddItem( "006500" );
				}
				else
				{
					stats.AddItem( theAbility.Damage );
					stats.AddItem( theAbility.PercentOfDamageAsHealthCost * theAbility.Damage );
					colors.AddItem( StatColor );
					colors.AddItem( StatColor );
				}
			}
			break;
		case 'Power Strike Freya':
			localizedAbilityName = TheLocalizer.GetLocalizedString( PowerStrikeNameFreya );
			localizedAbilityDescription = TheLocalizer.GetLocalizedString(  PowerStrikeDescriptionFreya );
			iconID = HoverOverInfoIconID.POWER_STRIKE;
			if( theAbility != none )
			{
				if( theAbility.Owner != none && theAbility.GetAdjustedDamage() != theAbility.Damage )
				{
					stats.AddItem( theAbility.GetAdjustedDamage() );
					stats.AddItem( theAbility.PercentOfDamageAsHealthCost * theAbility.GetAdjustedDamage() );
					colors.AddItem( "006500" );
					colors.AddItem( "006500" );
				}
				else
				{
					stats.AddItem( theAbility.Damage );
					stats.AddItem( theAbility.PercentOfDamageAsHealthCost * theAbility.Damage );
					colors.AddItem( StatColor );
					colors.AddItem( StatColor );
				}
			}
			break;
		case 'Power Strike Level03':
			localizedAbilityName = TheLocalizer.GetLocalizedString( PowerStrikeName );
			localizedAbilityDescription = TheLocalizer.GetLocalizedString(  PowerStrikeDescription );
			iconID = HoverOverInfoIconID.POWER_STRIKE;
			if( theAbility != none )
			{
				if( theAbility.Owner != none && theAbility.GetAdjustedDamage() != theAbility.Damage )
				{
					stats.AddItem( theAbility.GetAdjustedDamage() );
					stats.AddItem( theAbility.PercentOfDamageAsHealthCost * theAbility.GetAdjustedDamage() );
					colors.AddItem( "006500" );
					colors.AddItem( "006500" );
				}
				else
				{
					stats.AddItem( theAbility.Damage );
					stats.AddItem( theAbility.PercentOfDamageAsHealthCost * theAbility.Damage );
					colors.AddItem( StatColor );
					colors.AddItem( StatColor );
				}
			}
			break;
		case 'Blood Drinker':
			localizedAbilityName = TheLocalizer.GetLocalizedString( BloodDrinkerName );
			localizedAbilityDescription = TheLocalizer.GetLocalizedString(  BloodDrinkerDescription );
			iconID = HoverOverInfoIconID.BLOOD_DRINKER;
			if( theAbility != none )
			{
				if( theAbility.Owner != none && theAbility.GetAdjustedDamage() != theAbility.Damage )
				{
					stats.AddItem( theAbility.GetAdjustedDamage() );
					stats.AddItem( BS_TargetedAbility( theAbility ).LifeStealPercent * theAbility.GetAdjustedDamage() );
					colors.AddItem( "006500" );
					colors.AddItem( "006500" );
				}
				else
				{
					stats.AddItem( theAbility.Damage );
					stats.AddItem( BS_TargetedAbility( theAbility ).LifeStealPercent * theAbility.Damage );
					colors.AddItem( StatColor );
					colors.AddItem( StatColor );
				}
			}
			break;
		case 'Cripple':
			localizedAbilityName = TheLocalizer.GetLocalizedString( CrippleName );
			localizedAbilityDescription = TheLocalizer.GetLocalizedString(  CrippleDescription );
			iconID = HoverOverInfoIconID.CRIPPLE;
			if( theAbility != none )
			{
				if( theAbility.Owner != none && theAbility.StatusEffectArchetype != none )
				{
					BSSE = theAbility.Spawn( class'BS_StatusEffect',,,,,theAbility.StatusEffectArchetype );
					statusEffectDamage = BSSE.GetDamage() * ( 1.0f + BS_Pawn( theAbility.Owner ).GetAttackBonusPercent() );
				}
				if( BSSE != none && statusEffectDamage != theAbility.StatusEffectArchetype.DamageToDeal )
				{
					stats.AddItem( statusEffectDamage );
					stats.AddItem( abs( theAbility.StatusEffectArchetype.MoveRadiusBonusPercent * 100 ) );
					stats.AddItem( theAbility.StatusEffectArchetype.TurnsToLast );
					stats.AddItem( statusEffectDamage );
					stats.AddItem( theAbility.StatusEffectArchetype.TurnsToLast );
					colors.AddItem( "006500" );
					colors.AddItem( StatColor );
					colors.AddItem( StatColor );
					colors.AddItem( "006500" );
					colors.AddItem( StatColor );
					BSSE.Destroy();
				}
				else
				{
					stats.AddItem( theAbility.StatusEffectArchetype.DamageToDeal );
					stats.AddItem( abs( theAbility.StatusEffectArchetype.MoveRadiusBonusPercent * 100 ) );
					stats.AddItem( theAbility.StatusEffectArchetype.TurnsToLast );
					stats.AddItem( theAbility.StatusEffectArchetype.DamageToDeal );
					stats.AddItem( theAbility.StatusEffectArchetype.TurnsToLast );
					colors.AddItem( StatColor );
					colors.AddItem( StatColor );
					colors.AddItem( StatColor );
					colors.AddItem( StatColor );
					colors.AddItem( StatColor );
				}
			}
			break;
		case 'Snipe Stance':
			localizedAbilityName = TheLocalizer.GetLocalizedString( SnipeStanceName );
			localizedAbilityDescription = TheLocalizer.GetLocalizedString(  SnipeStanceDescription );
			iconID = HoverOverInfoIconID.SNIPE_STANCE;
			if( theAbility != none )
			{
				stats.AddItem( abs( theAbility.StatusEffectArchetype.AttackRadiusBonusPercent * 100 ) );
				stats.AddItem( abs( theAbility.StatusEffectArchetype.DefenseBonusPercent * 100 ) );
				colors.AddItem( StatColor );
				colors.AddItem( StatColor );
			}
			break;
		case 'Defensive Stance':
			localizedAbilityName = TheLocalizer.GetLocalizedString( DefensiveStanceName );
			localizedAbilityDescription = TheLocalizer.GetLocalizedString(  DefensiveStanceDescription );
			iconID = HoverOverInfoIconID.DEFENSIVE_STANCE;
			if( theAbility != none )
			{
				stats.AddItem( abs( theAbility.StatusEffectArchetype.DefenseBonusPercent * 100 ) );
				colors.AddItem( StatColor );
			}
			break;
		case 'Blind':
			localizedAbilityName = TheLocalizer.GetLocalizedString( BlindName );
			localizedAbilityDescription = TheLocalizer.GetLocalizedString(  BlindDescription );
			iconID = HoverOverInfoIconID.BLIND;
			if( theAbility != none )
			{
				stats.AddItem( abs( theAbility.StatusEffectArchetype.DefenseBonusPercent * 100 ) );
				colors.AddItem( StatColor );
			}
			break;
		case 'Lightning Storm':
			localizedAbilityName = TheLocalizer.GetLocalizedString( LightningStormName );
			localizedAbilityDescription = TheLocalizer.GetLocalizedString(  LightningStormDescription );
			iconID = HoverOverInfoIconID.LIGHTNING_STORM;
			if( theAbility != none )
			{
				if( theAbility.Owner != none && theAbility.GetAdjustedDamage() != theAbility.Damage )
				{
					stats.AddItem( abs( theAbility.GetAdjustedDamage() ) );
					colors.AddItem( "006500" );
				}
				else
				{
					stats.AddItem( abs( theAbility.Damage ) );
					colors.AddItem( StatColor );
				}
			}
			break;
		case 'Rejuvenation':
			localizedAbilityName = TheLocalizer.GetLocalizedString( RejuvenationName );
			localizedAbilityDescription = TheLocalizer.GetLocalizedString(  RejuvenationDescription );
			iconID = HoverOverInfoIconID.REJUVENATION;
			if( theAbility != none )
			{
				stats.AddItem( abs( theAbility.Damage ) );
				stats.AddItem( abs( theAbility.StatusEffectArchetype.DamageToDeal ) );
				stats.AddItem( theAbility.StatusEffectArchetype.TurnsToLast );
				colors.AddItem( StatColor );
				colors.AddItem( StatColor );
				colors.AddItem( StatColor );
			}
			break;
		case 'Shout':
			localizedAbilityName = TheLocalizer.GetLocalizedString( ShoutName );
			localizedAbilityDescription = TheLocalizer.GetLocalizedString(  ShoutDescription );
			iconID = HoverOverInfoIconID.SHOUT;
			if( theAbility != none )
			{
				stats.AddItem( abs( theAbility.StatusEffectArchetype.AttackBonusPercent * 100 ) );
				stats.AddItem( theAbility.StatusEffectArchetype.TurnsToLast );
				colors.AddItem( StatColor );
				colors.AddItem( StatColor );
			}
			break;
		case 'Heal':
			localizedAbilityName = TheLocalizer.GetLocalizedString( HealName );
			localizedAbilityDescription = TheLocalizer.GetLocalizedString(  HealDescription );
			iconID = HoverOverInfoIconID.HEAL;
			if( theAbility != none )
			{
				stats.AddItem( abs( theAbility.Damage ) );
				colors.AddItem( StatColor );
			}
			break;
		case 'Static Shield':
			localizedAbilityName = TheLocalizer.GetLocalizedString( StaticShieldName );
			localizedAbilityDescription = TheLocalizer.GetLocalizedString(  StaticShieldDescription );
			iconID = HoverOverInfoIconID.STATIC_SHIELD;
			if( theAbility != none )
			{
				stats.AddItem( abs( theAbility.StatusEffectArchetype.ThornPercentDamage * 100 ) );
				stats.AddItem( abs( theAbility.StatusEffectArchetype.TurnsToLast ) );
				colors.AddItem( StatColor );
				colors.AddItem( StatColor );
			}
			break;
		case 'HP Buff':
			localizedAbilityName = TheLocalizer.GetLocalizedString( HPBuffName );
			localizedAbilityDescription = TheLocalizer.GetLocalizedString(  HPBuffDescription );
			iconID = HoverOverInfoIconID.HP_BUFF;
			if( theAbility != none )
			{
				stats.AddItem( abs( theAbility.StatusEffectArchetype.MaxHPBounsPercent * 100 ) );
				colors.AddItem( StatColor );
			}
			break;
		case 'Atk Buff':
			localizedAbilityName = TheLocalizer.GetLocalizedString( AtkBuffName );
			localizedAbilityDescription = TheLocalizer.GetLocalizedString(  AtkBuffDescription );
			iconID = HoverOverInfoIconID.ATK_BUFF;
			if( theAbility != none )
			{
				stats.AddItem( abs( theAbility.StatusEffectArchetype.AttackBonusPercent * 100 ) );
				stats.AddItem( abs( theAbility.StatusEffectArchetype.MaxHPBounsPercent * 100 ) );
				colors.AddItem( StatColor );
				colors.AddItem( StatColor );
			}
			break;
		case 'Point Blank Training':
			localizedAbilityName = TheLocalizer.GetLocalizedString( PointBlankTrainingName );
			localizedAbilityDescription = TheLocalizer.GetLocalizedString(  PointBlankTrainingDescription );
			iconID = HoverOverInfoIconID.POINT_BLANK_TRAINING;
			break;
		case 'Bouncing Axe':
			localizedAbilityName = TheLocalizer.GetLocalizedString( PiercingAxeName );
			localizedAbilityDescription = TheLocalizer.GetLocalizedString(  PiercingAxeDescription );
			iconID = HoverOverInfoIconID.BOUNCING_AXE;
			if( theAbility != none )
			{
				stats.AddItem( abs( BS_BouncingAbility( theAbility ).PercentOfAttackPower * 100 ) );
				stats.AddItem( abs( BS_BouncingAbility( theAbility ).PercentReductionPerBounce *  100 ) );
				colors.AddItem( StatColor );
				colors.AddItem( StatColor );
			}
			break;
		case 'Burning Blood':
			localizedAbilityName = TheLocalizer.GetLocalizedString( BurningBloodName );
			localizedAbilityDescription = TheLocalizer.GetLocalizedString(  BurningBloodDescription );
			iconID = HoverOverInfoIconID.BURNING_BLOOD;
			if( theAbility != none )
			{
				if( theAbility.Owner != none && theAbility.StatusEffectArchetype != none )
				{
					BSSE = theAbility.Spawn( class'BS_StatusEffect',,,,,theAbility.StatusEffectArchetype );
					statusEffectDamage = BSSE.GetDamage() * ( 1.0f + BS_Pawn( theAbility.Owner ).GetAttackBonusPercent() );
				}
				if( BSSE != none && statusEffectDamage != theAbility.StatusEffectArchetype.DamageToDeal )
				{
					stats.AddItem( statusEffectDamage );
					stats.AddItem( abs( theAbility.StatusEffectArchetype.PercentOfDamageToTake * statusEffectDamage ) );
					colors.AddItem( "006500" );
					colors.AddItem( "006500" );
					BSSE.Destroy();
				}
				else
				{
					stats.AddItem( abs( theAbility.StatusEffectArchetype.DamageToDeal ) );
					stats.AddItem( abs( theAbility.StatusEffectArchetype.PercentOfDamageToTake * theAbility.StatusEffectArchetype.DamageToDeal ) );
					colors.AddItem( StatColor );
					colors.AddItem( StatColor );
				}
			}
			break;
		case 'Shield Wall':
			localizedAbilityName = TheLocalizer.GetLocalizedString( ShieldWallName );
			localizedAbilityDescription = TheLocalizer.GetLocalizedString(  ShieldWallDescription );
			iconID = HoverOverInfoIconID.SHIELD_WALL;
			if( theAbility != none )
			{
				stats.AddItem( abs( theAbility.StatusEffectArchetype.TurnsToLast ) );
				colors.AddItem( StatColor );
			}
			break;
		case 'Whirlpool':
			localizedAbilityName = TheLocalizer.GetLocalizedString( TempestName );
			localizedAbilityDescription = TheLocalizer.GetLocalizedString(  TempestDescription );
			iconID = HoverOverInfoIconID.TEMPEST;
			break;
		case 'Mead Bomb':
			localizedAbilityName = TheLocalizer.GetLocalizedString( MeadBombName );
			localizedAbilityDescription = TheLocalizer.GetLocalizedString(  MeadBombDescription );
			iconID = HoverOverInfoIconID.MEAD_BOMB;
			if( theAbility != none )
			{
				if( theAbility.Owner != none && theAbility.GetAdjustedDamage() != theAbility.Damage )
				{
					stats.AddItem( abs( theAbility.GetAdjustedDamage() ) );
					stats.AddItem( abs( theAbility.GetAdjustedDamage() ) );
					stats.AddItem( abs( theAbility.StatusEffectArchetype.TurnsToLast ) );
					colors.AddItem( "006500" );
					colors.AddItem( "006500" );
					colors.AddItem( StatColor );
				}
				else
				{
					stats.AddItem( abs( theAbility.Damage ) );
					stats.AddItem( abs( theAbility.StatusEffectArchetype.DamageToDeal ) );
					stats.AddItem( abs( theAbility.StatusEffectArchetype.TurnsToLast ) );
					colors.AddItem( StatColor );
					colors.AddItem( StatColor );
					colors.AddItem( StatColor );
				}
			}
			break;
		case 'Divine Right':
			localizedAbilityName = TheLocalizer.GetLocalizedString( InvincibilityName );
			localizedAbilityDescription = TheLocalizer.GetLocalizedString(  InvincibilityDescription );
			iconID = HoverOverInfoIconID.INVINCIBILITY;
			break;
		default:
			localizedAbilityName = "Insert Action Name";
			localizedAbilityDescription = TheLocalizer.GetLocalizedString( "Insert Action Description" );
			iconID = HoverOverInfoIconID.NO_ICON;
	}

	localizedAbilityDescription = class'BS_Utility'.static.FillStringWithStats( localizedAbilityDescription, stats, colors );

	TheHoverOverInfo.HoverOverInfoInfoTF.SetBool( "html", true );
	
	if( nameDescriptionOrIcon == 0 )
		return localizedAbilityName;
	else if( nameDescriptionOrIcon == 1 )
		return localizedAbilityDescription;
	else
		return ""$iconID;
}


// Written by Chris Burris
function int GetGrayIconID( name abilityName )
{
	local int iconID;

	switch ( abilityName )
	{
	    case 'Whirlwind':
			iconID = HoverOverInfoIconID.WHIRLWIND_NOAP;
			break;
		 case 'Whirlwind Level03':
			iconID = HoverOverInfoIconID.WHIRLWIND_NOAP;
			break;
		case 'Charge':
			iconID = HoverOverInfoIconID.CHARGE_NOAP;
			break;
		case 'Drink':
			iconID = HoverOverInfoIconID.DRINK_NOAP;
			break;
		case 'Pull':
			iconID = HoverOverInfoIconID.PULL_NOAP;
			break;
		case 'Vortex':
			iconID = HoverOverInfoIconID.VORTEX_NOAP;
			break;
		case 'Kick':
			iconID = HoverOverInfoIconID.KICK_NOAP;
			break;
		case 'BloodLust':
			iconID = HoverOverInfoIconID.BLOOD_LUST_NOAP;
			break;
		case 'Power Strike':
			iconID = HoverOverInfoIconID.POWER_STRIKE_NOAP;
			break;
		case 'Power Strike Freya':
			iconID = HoverOverInfoIconID.POWER_STRIKE_NOAP;
			break;
		case 'Power Strike Level03':
			iconID = HoverOverInfoIconID.POWER_STRIKE_NOAP;
			break;
		case 'Blood Drinker':
			iconID = HoverOverInfoIconID.BLOOD_DRINKER_NOAP;
			break;
		case 'Cripple':
			iconID = HoverOverInfoIconID.CRIPPLE_NOAP;
			break;
		case 'Snipe Stance':
			iconID = HoverOverInfoIconID.SNIPE_STANCE_NOAP;
			break;
		case 'Defensive Stance':
			iconID = HoverOverInfoIconID.DEFENSIVE_STANCE_NOAP;
			break;
		case 'Blind':
			iconID = HoverOverInfoIconID.BLIND_NOAP;
			break;
		case 'Lightning Storm':
			iconID = HoverOverInfoIconID.LIGHTNING_STORM_NOAP;
			break;
		case 'Rejuvenation':
			iconID = HoverOverInfoIconID.REJUVENATION_NOAP;
			break;
		case 'Shout':
			iconID = HoverOverInfoIconID.SHOUT_NOAP;
			break;
		case 'Heal':
			iconID = HoverOverInfoIconID.HEAL_NOAP;
			break;
		case 'Static Shield':
			iconID = HoverOverInfoIconID.STATIC_SHIELD_NOAP;
			break;
		case 'HP Buff':
			iconID = HoverOverInfoIconID.HP_BUFF_NOAP;
			break;
		case 'Atk Buff':
			iconID = HoverOverInfoIconID.ATK_BUFF_NOAP;
			break;
		case 'Point Blank Training':
			iconID = HoverOverInfoIconID.POINT_BLANK_TRAINING_NOAP;
			break;
		case 'Bouncing Axe':
			iconID = HoverOverInfoIconID.BOUNCING_AXE_NOAP;
			break;
		case 'Burning Blood':
			iconID = HoverOverInfoIconID.BURNING_BLOOD_NOAP;
			break;
		case 'Shield Wall':
			iconID = HoverOverInfoIconID.SHIELD_WALL_NOAP;
			break;
		case 'Whirlpool':
			iconID = HoverOverInfoIconID.TEMPEST;
			break;
		case 'Mead Bomb':
			iconID = HoverOverInfoIconID.MEAD_BOMB_NOAP;
			break;
		case 'Divine Right':
			iconID = HoverOverInfoIconID.INVINCIBILITY;
			break;
		default:
			iconID = HoverOverInfoIconID.NO_ICON;
	}

	return (iconID+1);
}


// Written by Chris Burris
function string GetAbilityRange( name abilityName )
{
	local string range;
	range = "";

	switch ( abilityName )
	{
	    case 'Whirlwind':
			range = TheLocalizer.GetLocalizedString( "Melee Range" );
			break;
		 case 'Whirlwind Level03':
			range = TheLocalizer.GetLocalizedString( "Melee Range" );
			break;
		case 'Charge':
			range = TheLocalizer.GetLocalizedString( "Long Range" );
			break;
		case 'Drink':
			range = TheLocalizer.GetLocalizedString( "Self" );
			break;
		case 'Pull':
			range = TheLocalizer.GetLocalizedString( "Mid Range" );
			break;
		case 'Vortex':
			range = TheLocalizer.GetLocalizedString( "Long Range" );
			break;
		case 'Kick':
			range = TheLocalizer.GetLocalizedString( "Melee Range" );
			break;
		case 'BloodLust':
			range = TheLocalizer.GetLocalizedString( "Self" );
			break;
		case 'Power Strike':
			range = TheLocalizer.GetLocalizedString( "Melee Range" );
			break;
		case 'Power Strike Freya':
			range = TheLocalizer.GetLocalizedString( "Melee Range" );
			break;
		case 'Power Strike Level03':
			range = TheLocalizer.GetLocalizedString( "Melee Range" );
			break;
		case 'Blood Drinker':
			range = TheLocalizer.GetLocalizedString( "Melee Range" );
			break;
		case 'Cripple':
			range = TheLocalizer.GetLocalizedString( "Long Range" );
			break;
		case 'Snipe Stance':
			range = TheLocalizer.GetLocalizedString( "Self" );
			break;
		case 'Defensive Stance':
			range = TheLocalizer.GetLocalizedString( "Self" );
			break;
		case 'Blind':
			range = TheLocalizer.GetLocalizedString( "Long Range" );
			break;
		case 'Lightning Storm':
			range = TheLocalizer.GetLocalizedString( "Long Range" );
			break;
		case 'Rejuvenation':
			range = TheLocalizer.GetLocalizedString( "Long Range" );
			break;
		case 'Shout':
			range = TheLocalizer.GetLocalizedString( "Mid Range" );
			break;
		case 'Heal':
			range = TheLocalizer.GetLocalizedString( "Long Range" );
			break;
		case 'Static Shield':
			range = TheLocalizer.GetLocalizedString( "Long Range" );
			break;
		case 'HP Buff':
			range = TheLocalizer.GetLocalizedString( "Self" );
			break;
		case 'Atk Buff':
			range = TheLocalizer.GetLocalizedString( "Self" );
			break;
		case 'Point Blank Training':
			range = TheLocalizer.GetLocalizedString( "Self" );
			break;
		case 'Bouncing Axe':
			range = TheLocalizer.GetLocalizedString( "Long Range" );
			break;
		case 'Burning Blood':
			range = TheLocalizer.GetLocalizedString( "Short Range" );
			break;
		case 'Shield Wall':
			range = TheLocalizer.GetLocalizedString( "Mid Range" );
			break;
		case 'Whirlpool':
			range = TheLocalizer.GetLocalizedString( "Long Range" );
			break;
		case 'Mead Bomb':
			range = TheLocalizer.GetLocalizedString( "Long Range" );
			break;
		case 'Divine Right':
			range = TheLocalizer.GetLocalizedString( "" );
			break;
		default:
			range = TheLocalizer.GetLocalizedString( "" );
	}

	return range;
}


// Written by Preston Hulcy
function UpdateCursor()
{
	local BS_PlayerController BSPC;
	BSPC = TheTurnManager.playerController;
	if( bIsCapturingMouseInput && ( BSPC.SelectedHero == none || !( BSPC.CurrentAction == ACTION_ABILITY && BSPC.SelectedHero.Abilities[ BSPC.CurrentAbilityIndex ].TargetType == TARGET_TYPE_ALLIES ) ) )
	{
		SetCurrentCursor( DEFAULT_CURSOR );
	}
	else if( TheTurnManager.CurrentPlayersTurn != TeamNumber )
	{
		SetCurrentCursor( DEFAULT_CURSOR );
	}
	else
	{
		if( TheTurnManager.PlayerController != none && TheTurnManager.PlayerController.CurrentAction == ACTION_ABILITY )
		{
			SetCurrentCursor( SPECIAL_ABILITY_CURSOR );
		}
		else if( CurrentlyHoveringOver != none )
		{
			if( CurrentlyHoveringOver.teamNumber != TeamNumber && CurrentUnitSelected != none && CurrentUnitSelected.teamNumber == TeamNumber && CurrentUnitSelected.TargetIsInAttackRange( CurrentlyHoveringOver ) )
			{
				SetCurrentCursor( ATTACK_CURSOR );
			}
			else
			{
				SetCurrentCursor( DEFAULT_CURSOR );	
			}
		}
		else
		{
			if( CurrentUnitSelected != none && CurrentUnitSelected.TeamNumber == TeamNumber && CurrentUnitSelected.LocationIsInMovementRange( CurrentMouseLocationOnTerrain ) && IsValidMoveLocation() )
			{
				SetCurrentCursor( MOVE_CURSOR );
			}
			else
			{
				SetCurrentCursor( DEFAULT_CURSOR );
			}
		}
	}	
}


// Written by Preston Hulcy
function bool IsValidMoveLocation()
{
	if( TheTurnManager.PlayerController != none )
	{
		if( BS_HUD( TheTurnManager.PlayerController.myHUD ).mouseOnTerrain )
		{
			return CurrentUnitSelected.CanMoveTo( CurrentMouseLocationOnTerrain );
		}
	}

	return false;
}


// Written by Preston Hulcy
function EnableMouseCapture( GFxCLIKWidget.EventData params )
{
	bIsCapturingMouseInput = true;
}


// Written by Preston Hulcy
function DisableMouseCapture( GFxCLIKWidget.EventData params )
{
	bIsCapturingMouseInput = false;
}


// Written by Chris Burris
function UpdateCurrentUnitPortraitAndNameAndClass()
{		
	if( CurrentUnitSelected != none )
	{
		switch( CurrentUnitSelected.UnitName )
		{
			case 'Bjorn':
				CurrentUnitInfo.Portrait.GotoAndStopI( BJORN );
				AutosizeTextFont( CurrentUnitInfo.Name, TheLocalizer.GetLocalizedString( BjornName ) );
				AutosizeTextFont( CurrentUnitInfo.UnitTypeButtonTF, TheLocalizer.GetLocalizedString( UnitTypeMeleeText ) );
				break;
			case 'Dag':
				CurrentUnitInfo.Portrait.GotoAndStopI( DAG );
				AutosizeTextFont( CurrentUnitInfo.Name, TheLocalizer.GetLocalizedString( DagName ) );
				AutosizeTextFont( CurrentUnitInfo.UnitTypeButtonTF, TheLocalizer.GetLocalizedString( UnitTypeRangedText ) );
				break;
			case 'Freya':
				CurrentUnitInfo.Portrait.GotoAndStopI( FREYA );
				AutosizeTextFont( CurrentUnitInfo.Name, TheLocalizer.GetLocalizedString( FreyaName ) );
				AutosizeTextFont( CurrentUnitInfo.UnitTypeButtonTF, TheLocalizer.GetLocalizedString( UnitTypeMeleeText ) );
				break;
			case 'Iliana':
				CurrentUnitInfo.Portrait.GotoAndStopI( ILIANA );
				AutosizeTextFont( CurrentUnitInfo.Name, TheLocalizer.GetLocalizedString( IlianaName ) );
				AutosizeTextFont( CurrentUnitInfo.UnitTypeButtonTF, TheLocalizer.GetLocalizedString( UnitTypeRangedText ) );
				break;
			case 'Bandit':
				CurrentUnitInfo.Portrait.GotoAndStopI( BANDIT );
				AutosizeTextFont( CurrentUnitInfo.Name, TheLocalizer.GetLocalizedString( BanditName ) );
				AutosizeTextFont( CurrentUnitInfo.UnitTypeButtonTF, TheLocalizer.GetLocalizedString( UnitTypeMeleeText ) );
				break;
			case 'Bandit Axe Thrower':
				CurrentUnitInfo.Portrait.GotoAndStopI( BANDIT_AXE_THROWER );
				AutosizeTextFont( CurrentUnitInfo.Name, TheLocalizer.GetLocalizedString( BanditAxeThrowerName ) );
				AutosizeTextFont( CurrentUnitInfo.UnitTypeButtonTF, TheLocalizer.GetLocalizedString( UnitTypeRangedText) );
				break;
			case 'Bandit Summoner':
				CurrentUnitInfo.Portrait.GotoAndStopI( BANDIT_SUMMONER );
				AutosizeTextFont( CurrentUnitInfo.Name, TheLocalizer.GetLocalizedString( BanditSummonerName ) );
				AutosizeTextFont( CurrentUnitInfo.UnitTypeButtonTF, TheLocalizer.GetLocalizedString( UnitTypeRangedText ) );
				break;
			case 'Bandit Seer Guard':
				CurrentUnitInfo.Portrait.GotoAndStopI( BANDIT_SEER_GUARD );
				AutosizeTextFont( CurrentUnitInfo.Name, TheLocalizer.GetLocalizedString( BanditSeerGuardName ) );
				AutosizeTextFont( CurrentUnitInfo.UnitTypeButtonTF, TheLocalizer.GetLocalizedString( UnitTypeRangedText ) );
				break;
			case 'Loki':
				CurrentUnitInfo.Portrait.GotoAndStopI( LOKI );
				AutosizeTextFont( CurrentUnitInfo.Name, "Loki" );
				AutosizeTextFont( CurrentUnitInfo.UnitTypeButtonTF, TheLocalizer.GetLocalizedString( UnitTypeShifterText ) );
				break;
			case 'Shadow Bjorn':
				CurrentUnitInfo.Portrait.GotoAndStopI( SHADOW_BJORN );
				AutosizeTextFont( CurrentUnitInfo.Name, TheLocalizer.GetLocalizedString( ShadowBjorn ) );
				AutosizeTextFont( CurrentUnitInfo.UnitTypeButtonTF, TheLocalizer.GetLocalizedString( UnitTypeMeleeText ) );
				break;
			case 'Shadow Dag':
				CurrentUnitInfo.Portrait.GotoAndStopI( SHADOW_DAG );
				AutosizeTextFont( CurrentUnitInfo.Name, TheLocalizer.GetLocalizedString( ShadowDag )  );
				AutosizeTextFont( CurrentUnitInfo.UnitTypeButtonTF, TheLocalizer.GetLocalizedString( UnitTypeRangedText ) );
				break;
			case 'Shadow Freya':
				CurrentUnitInfo.Portrait.GotoAndStopI( SHADOW_FREYA );
				AutosizeTextFont( CurrentUnitInfo.Name, TheLocalizer.GetLocalizedString( ShadowFreya )  );
				AutosizeTextFont( CurrentUnitInfo.UnitTypeButtonTF, TheLocalizer.GetLocalizedString( UnitTypeMeleeText ) );
				break;
			case 'Shadow Iliana':
				CurrentUnitInfo.Portrait.GotoAndStopI( SHADOW_ILIANA );
				AutosizeTextFont( CurrentUnitInfo.Name, TheLocalizer.GetLocalizedString( ShadowIliana )  );
				AutosizeTextFont( CurrentUnitInfo.UnitTypeButtonTF, TheLocalizer.GetLocalizedString( UnitTypeRangedText ) );
				break;
			case 'Spirit Berserker':
				CurrentUnitInfo.Portrait.GotoAndStopI( SPIRIT_BERSERKER );
				AutosizeTextFont( CurrentUnitInfo.Name, TheLocalizer.GetLocalizedString( SpiritBjorn )  );
				AutosizeTextFont( CurrentUnitInfo.UnitTypeButtonTF, TheLocalizer.GetLocalizedString( UnitTypeMeleeText ) );
				break;
			case 'Spirit Axe Thrower':
				CurrentUnitInfo.Portrait.GotoAndStopI( SPIRIT_AXE_THROWER );
				AutosizeTextFont( CurrentUnitInfo.Name, TheLocalizer.GetLocalizedString( SpiritDag )  );
				AutosizeTextFont( CurrentUnitInfo.UnitTypeButtonTF, TheLocalizer.GetLocalizedString( UnitTypeRangedText ) );
				break;
			case 'Spirit Shield Maiden':
				CurrentUnitInfo.Portrait.GotoAndStopI( SPIRIT_SHIELD_MAIDEN );
				AutosizeTextFont( CurrentUnitInfo.Name, TheLocalizer.GetLocalizedString( SpiritFreya )  );
				AutosizeTextFont( CurrentUnitInfo.UnitTypeButtonTF, TheLocalizer.GetLocalizedString( UnitTypeMeleeText ) );
				break;
			case 'Spirit Seer':
				CurrentUnitInfo.Portrait.GotoAndStopI( SPIRIT_SEER );
				AutosizeTextFont( CurrentUnitInfo.Name, TheLocalizer.GetLocalizedString( SpiritIliana ) );
				AutosizeTextFont( CurrentUnitInfo.UnitTypeButtonTF, TheLocalizer.GetLocalizedString( UnitTypeRangedText ) );
				break;
			case 'Frost Giant':
				CurrentUnitInfo.Portrait.GotoAndStopI( 23 );
				AutosizeTextFont( CurrentUnitInfo.Name, TheLocalizer.GetLocalizedString( FrostGiant ) );
				AutosizeTextFont( CurrentUnitInfo.UnitTypeButtonTF, TheLocalizer.GetLocalizedString( UnitTypeMeleeText ) );
				break;
			default:
				CurrentUnitInfo.Portrait.GotoAndStopI( BANDIT );
				AutosizeTextFont( CurrentUnitInfo.Name, TheLocalizer.GetLocalizedString( BanditName ) );
				AutosizeTextFont( CurrentUnitInfo.UnitTypeButtonTF, TheLocalizer.GetLocalizedString( UnitTypeMeleeText ) );
				break;
		}
	}
}


// Written by Chris Burris
function SetLevelObjective()
{
	local string MapName;
	
	MapName = class'WorldInfo'.static.GetWorldInfo().GetMapName( false );
	
	if( MapName == "uedpiebs_tavern" || MapName == "bs_tavern" || MapName == "BS_Tavern" )
	{
		AutosizeTextFont( TheTurnInfo.ObjectiveTextTF, TheLocalizer.GetLocalizedString( Level1Objective ) );
		UnitActionsInfo.AbilitiesBackgroundMC.GotoAndStopI(1);
		CurrentUnitInfo.UnitInfoBackgroundMC.GotoAndStopI(1);
		TheTurnInfo.TurnInfoBackgroundMC.GotoAndStopI(1);
		UnitsPanel.UnitsBackgroundMC.GotoAndStopI(1);
	}
	else if( MapName == "uedpiebs_level02" || MapName == "bs_level02" || MapName == "BS_Level02" )
	{
		AutosizeTextFont( TheTurnInfo.ObjectiveTextTF, TheLocalizer.GetLocalizedString( Level2Objective ) );
		UnitActionsInfo.AbilitiesBackgroundMC.GotoAndStopI(2);
		CurrentUnitInfo.UnitInfoBackgroundMC.GotoAndStopI(2);
		TheTurnInfo.TurnInfoBackgroundMC.GotoAndStopI(2);
		UnitsPanel.UnitsBackgroundMC.GotoAndStopI(2);
	}
	else if( MapName == "uedpiebs_level03" || MapName == "bs_level03" || MapName == "BS_Level03" )
	{
		AutosizeTextFont( TheTurnInfo.ObjectiveTextTF, TheLocalizer.GetLocalizedString( Level3Objective ) );
		UnitActionsInfo.AbilitiesBackgroundMC.GotoAndStopI(3);
		CurrentUnitInfo.UnitInfoBackgroundMC.GotoAndStopI(3);
		TheTurnInfo.TurnInfoBackgroundMC.GotoAndStopI(3);
		UnitsPanel.UnitsBackgroundMC.GotoAndStopI(3);
	}
	else if( MapName == "uedpiebs_level04" || MapName == "bs_level04" || MapName == "BS_Level04" )
	{
		AutosizeTextFont( TheTurnInfo.ObjectiveTextTF, TheLocalizer.GetLocalizedString( Level4Objective ) );
		UnitActionsInfo.AbilitiesBackgroundMC.GotoAndStopI(4);
		CurrentUnitInfo.UnitInfoBackgroundMC.GotoAndStopI(4);
		TheTurnInfo.TurnInfoBackgroundMC.GotoAndStopI(4);
		UnitsPanel.UnitsBackgroundMC.GotoAndStopI(4);
	}
	else if( MapName == "uedpiebs_level05" || MapName == "bs_level05" || MapName == "BS_Level05" )
	{
		AutosizeTextFont( TheTurnInfo.ObjectiveTextTF, TheLocalizer.GetLocalizedString( Level5Objective ) );
		UnitActionsInfo.AbilitiesBackgroundMC.GotoAndStopI(5);
		CurrentUnitInfo.UnitInfoBackgroundMC.GotoAndStopI(5);
		TheTurnInfo.TurnInfoBackgroundMC.GotoAndStopI(5);
		UnitsPanel.UnitsBackgroundMC.GotoAndStopI(5);
	}
}


// Written by Chris Burris
function bool HasAbility( BS_Pawn pawn,  name abilityName )
{
	local int i;
	local bool hasAbility;
	hasAbility = false;

	if( pawn != none )
	{
		for( i = 0; i < MAX_NUM_ACTIONS && i < Actions.Length; ++i )
	    {
			if( pawn.Abilities[i].AbilityName == abilityName )
			{
				hasAbility = true;
				break;
			}
	    }
	}

	return hasAbility;
}


// Written by Chris Burris
function DisplayPopUpMessage( string popUpMessage )
{
	MessagePopUp.MessageTF.SetString( "text", popUpMessage );
	MessagePopUp.MessageMC.GotoAndPlayI(1);
}


// Written by Chris Burris
function ChangeColorMC( GFxObject obj, string newColor )
{
	ActionScriptVoid("_root.ChangeColorMC");
}


// Written by Chris Burris
function ChangeColorTF( GFxObject obj, string newColor )
{
	ActionScriptVoid("_root.ChangeColorTF");
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
function AutosizeTextFont( GFxObject obj, string txt, int numOfLines = 1 )
{
	ActionScriptVoid("_root.Autosize");
}


// Written by Chris Burris
function SetHoverOverInfo( string title = "", string info = "", string corner = "", int icon = 0, string APCost = "", bool displayLeft = false, bool isAbilityButton = false, string range = "" )
{
	AutosizeTextFont( TheHoverOverInfo.HoverOverInfoTitleTF, title );
	AutosizeTextFont( TheHoverOverInfo.HoverOverInfoInfoTF, info, 5 );
	AutosizeTextFont( TheHoverOverInfo.HoverOverInfoCornerTF, corner );
	AutosizeTextFont( TheHoverOverInfo.HoverOverInfoRangeTF, range, 2 );
	TheHoverOverInfo.HoverOverInfoIconMC.GotoAndStopI( (icon + 1) );

	if( title == TheLocalizer.GetLocalizedString( SprintName ) )
		APCost = "";
	
	AutosizeTextFont( TheHoverOverInfo.HoverOverInfoAPTextTF, APCost );

	if( CurrentUnitSelected != none )
	{
        if( CurrentUnitSelected.teamNumber == TeamNumber )
        {
			if( ( CurrentUnitSelected.bCombatLock && !CurrentUnitSelected.bIsMeleeUnit && !HasAbility( CurrentUnitSelected, 'Point Blank Training') && title != TheLocalizer.GetLocalizedString( KickName ) ) || ( CurrentUnitSelected.bCombatLock && CurrentUnitSelected.bIsMeleeUnit && title == TheLocalizer.GetLocalizedString( ChargeName ) ) )
			{
				TheHoverOverInfo.HoverOverInfoCombatLockIconMC.SetVisible( true );
				AutosizeTextFont( TheHoverOverInfo.HoverOverInfoAPTextTF, "2 AP" );
				ChangeColorTF( TheHoverOverInfo.HoverOverInfoAPTextTF, CombatLockRed );
			}
			else
			{
				TheHoverOverInfo.HoverOverInfoCombatLockIconMC.SetVisible( false );
				ChangeColorTF( TheHoverOverInfo.HoverOverInfoAPTextTF, TextColor );
			}

			if( corner == TheLocalizer.GetLocalizedString( StatusEffectName ) )
			{
				AutosizeTextFont( TheHoverOverInfo.HoverOverInfoAPTextTF, APCost );
				TheHoverOverInfo.HoverOverInfoCombatLockIconMC.SetVisible( false );
				ChangeColorTF( TheHoverOverInfo.HoverOverInfoAPTextTF, TextColor );
			}
        }
		else
		{
			TheHoverOverInfo.HoverOverInfoCombatLockIconMC.SetVisible( false );
			ChangeColorTF( TheHoverOverInfo.HoverOverInfoAPTextTF, TextColor );
		}
	}
	
    if(!displayLeft)
		isAbilityButton ? DisplayHoverOverInfo(110) : DisplayHoverOverInfo(50);
	else
		isAbilityButton ? DisplayHoverOverInfoLeft(100) : DisplayHoverOverInfoLeft(10);
}


// Written by Chris Burris
function DisplayHoverOverInfo( int distance )
{
	ActionScriptVoid("_root.DisplayHoverOverInfo");
}


// Written by Chris Burris
function DisplayHoverOverInfoLeft( int distance )
{
	ActionScriptVoid("_root.DisplayHoverOverInfoLeft");
}


// Written by Chris Burris
function HideHoverOverInfo()
{
	ActionScriptVoid("_root.HideHoverOverInfo");
}


// Written by Preston Hulcy
function EnablePlayerHUD()
{
	UnitsPanel.UnitsMC.SetVisible( true );
	TheTurnInfo.InfoMC.SetVisible( true );
	UnitActionsInfo.ActionsInfoMC.SetVisible( true );
	CurrentUnitInfo.InfoMC.SetVisible( true );
	bPlayerHUDEnabled = true;
	TheTurnManager.ShowHealthBars();		
	if( ProgressBar != none )
		ProgressBar.Show();
}


// Written by Preston Hulcy
function DisablePlayerHUD( bool deselectPawn = true )
{
	local BS_PlayerController PC;
	UnitsPanel.UnitsMC.SetVisible( false );
	TheTurnInfo.InfoMC.SetVisible( false );
	UnitActionsInfo.ActionsInfoMC.SetVisible( false );
	CurrentUnitInfo.InfoMC.SetVisible( false );

	if( deselectPawn )
		BS_PlayerController( TheTurnManager.GetController( 0 ) ).SelectHero( none );

	bPlayerHUDEnabled = false;
	TheTurnManager.HideHealthBars();

	PC = BS_PlayerController( TheTurnManager.GetController( 0 ) );

	if( PC != none )
		PC.ResetTimeSpeed();
	
	if( ProgressBar != none )
		ProgressBar.Hide();
	
}


// Written by Preston Hulcy
function HideHUD()
{
	UnitsPanel.UnitsMC.SetVisible( false );
	TheTurnInfo.InfoMC.SetVisible( false );
	UnitActionsInfo.ActionsInfoMC.SetVisible( false );
	CurrentUnitInfo.InfoMC.SetVisible( false );
	
	if( ProgressBar != none )
		ProgressBar.Hide();
}


// Written by Preston Hulcy
function bool IsHUDCapturingInput()
{
	return bIsCapturingMouseInput || ( bIsInDialogueMode && !bDisableInputWhenInDialogue );
}


// Written by Preston Hulcy
function StartDialogue( LevelIndex lvlIndex, int dialogueIndex, bool deselectPawn = true, bool disableInputWhenInDialogue = true )
{
	switch( lvlIndex )
	{
	case LEVEL_1:
		StartSpecifiedDialogue( DialogueLevel1, dialogueIndex, deselectPawn, disableInputWhenInDialogue );
		break;
	case LEVEL_2:
		StartSpecifiedDialogue( DialogueLevel2, dialogueIndex, deselectPawn, disableInputWhenInDialogue );
		break;
	case LEVEL_3:
		StartSpecifiedDialogue( DialogueLevel3, dialogueIndex, deselectPawn, disableInputWhenInDialogue );
		break;
	case LEVEL_4:
		StartSpecifiedDialogue( DialogueLevel4, dialogueIndex, deselectPawn, disableInputWhenInDialogue );
		break;
	case LEVEL_5:
		StartSpecifiedDialogue( DialogueLevel5, dialogueIndex, deselectPawn, disableInputWhenInDialogue );
		break;
	case LEVEL_6:
		StartSpecifiedDialogue( DialogueLevel6, dialogueIndex, deselectPawn, disableInputWhenInDialogue );
		break;
	}
	CurrentDialogueLevelIndex = lvlIndex;
}


// Written by Preston Hulcy
function StartSpecifiedDialogue( array<string> lvlDialogues, int dialogueIndex, bool deselectPawn = true, bool disableInputWhenInDialogue = true )
{
	if( dialogueIndex < lvlDialogues.Length )
	{
		ParseDialogue( lvlDialogues[ dialogueIndex ], FirstPersonCurrentDialogue, SecondPersonCurrentDialogue, CurrentDialogueOrder, CharWhoseFirstAndSecond );
		ShowDialoguePanel( SecondPersonCurrentDialogue.Length > 0, deselectPawn, disableInputWhenInDialogue );
		CurrentDialogueIndex = dialogueIndex;
	}
}


// Written by Preston Hulcy
function ShowDialoguePanel( bool hasSecondSpeaker, bool deselectPawn = true, bool disableInputWhenInDialogue = true )
{
	bDisableInputWhenInDialogue = disableInputWhenInDialogue;
	bIsInDialogueMode = true;
	DialoguePanel.DialogueMC.SetVisible( true );
	DialoguePanel.LeftSpeakerMC.SetVisible( true );

	if( hasSecondSpeaker )
	{
		DialoguePanel.RightSpeakerMC.SetVisible( true );
		DialoguePanel.RightDialogueTextMC.SetVisible( false );
	}

	if( CurrentDialogueOrder.Length > 0 )
	{
		if( CharWhoseFirstAndSecond[0] == CurrentDialogueOrder[0] )
		{
			ShowLeftSpeaker( FirstPersonCurrentDialogue[0] );
			FirstPersonCurrentDialogue.Remove( 0, 1 );
			HideRightSpeaker();
		}
		else if( CharWhoseFirstAndSecond[1] == CurrentDialogueOrder[0] )
		{
			ShowRightSpeaker( SecondPersonCurrentDialogue[0] );
			SecondPersonCurrentDialogue.Remove( 0, 1 );
			HideLeftSpeaker();
		}
	}
	else
	{
		DisableDialoguePanel();
	}
}


// Written by Preston Hulcy
function DisableDialoguePanel( bool triggerEvent = true )
{
	if( bIsInDialogueMode )
	{
		DialoguePanel.DialogueMC.SetVisible( false );
		DialoguePanel.RightSpeakerMC.SetVisible( false );
		DialoguePanel.LeftSpeakerMC.SetVisible( false );

		bIsInDialogueMode = false;

		FirstPersonCurrentDialogue.Length = 0;
		SecondPersonCurrentDialogue.Length = 0;
		CurrentDialogueOrder.Length = 0;

		CharWhoseFirstAndSecond[0] = NO_UNIT;
		CharWhoseFirstAndSecond[1] = NO_UNIT;
		PrevDialogueLevelIndex = CurrentDialogueLevelIndex;
		PrevDialogueIndex = CurrentDialogueIndex;

		if( triggerEvent )
			TheTurnManager.TriggerGlobalEventClass( class'BS_SeqEvent_DialogueEnded', TheTurnManager, 0 );	
	}
}


// Written by Preston Hulcy
function ShowLeftSpeaker( string DialogueStr )
{
	DialoguePanel.LeftDialogueTextMC.SetVisible( true );
	DialoguePanel.LeftPictureCoverMC.SetVisible( false );
	AutosizeTextFont( DialoguePanel.LeftDialogueTextTF, DialogueStr, 2 );
	bIsShowingLeftSpeaker = true;
}


// Written by Preston Hulcy
function HideLeftSpeaker()
{
	DialoguePanel.LeftDialogueTextMC.SetVisible( false );
	DialoguePanel.LeftPictureCoverMC.SetVisible( true );
	bIsShowingLeftSpeaker = false;
}


// Written by Preston Hulcy
function ShowRightSpeaker( string DialogueStr )
{
	DialoguePanel.RightDialogueTextMC.SetVisible( true );
	DialoguePanel.RightPictureCoverMC.SetVisible( false );
	AutosizeTextFont( DialoguePanel.RightDialogueTextTF, DialogueStr, 2 );
	bIsShowingRightSpeaker = true;
}


// Written by Preston Hulcy
function HideRightSpeaker()
{
	DialoguePanel.RightDialogueTextMC.SetVisible( false );
	DialoguePanel.RightPictureCoverMC.SetVisible( true );
	bIsShowingRightSpeaker = false;
}


// Written by Preston Hulcy
function AdvanceCurrentDialogue( GFxCLIKWidget.EventData params )
{
	TheTurnManager.PlaySound( MenuClickSound );

	DialoguePanel.DialogueButtonMC.SetBool( "focused", false );

	CurrentDialogueOrder.Remove( 0, 1 );
	if( CurrentDialogueOrder.Length > 0 )
	{
		if( CharWhoseFirstAndSecond[0] == CurrentDialogueOrder[0] )
		{
			ShowLeftSpeaker( FirstPersonCurrentDialogue[0] );
			FirstPersonCurrentDialogue.Remove( 0, 1 );
			HideRightSpeaker();
		}
		else if( CharWhoseFirstAndSecond[1] != NO_UNIT && CharWhoseFirstAndSecond[1] == CurrentDialogueOrder[0] )
		{
			ShowRightSpeaker( SecondPersonCurrentDialogue[0] );
			SecondPersonCurrentDialogue.Remove( 0, 1 );
			HideLeftSpeaker();
		}
	}
	else
	{
		DisableDialoguePanel();
	}
}


// Written by Preston Hulcy
function EndDialogueEarly()
{
	CurrentDialogueOrder.Length = 0;
	DisableDialoguePanel( false );
}


// Written by Preston Hulcy
function ParseDialogue( string DialogueStr, out array<string> FirstPersonDialogue, out array<string> SecondPersonDialogue, out array<UnitID> Order, out UnitID WhoseFirstAndSecond[2] )
{
	local string charInConvoStr;
	local array<string> charInConvo;
	local UnitID firstUnitID;
	local UnitID secondUnitID;
	
	local string modifiedDialogue;
	local string firstCharTagStr;
	local string secCharTagStr;

	local array<string> firstSplit;
	local array<string> secSplit;

	local string tempStrOne;
	local int i;

	DialogueStr = TheLocalizer.GetLocalizedString( DialogueStr );

	FirstPersonCurrentDialogue.Length = 0;
	SecondPersonCurrentDialogue.Length = 0;
	Order.Length = 0;

	firstUnitID = NO_UNIT;
	secondUnitID = NO_UNIT;

	charInConvoStr = Left( DialogueStr, InStr( DialogueStr, ">" ) );
	CharInConvo = SplitString( charInConvoStr, "," );
	firstUnitID = GetUnitIDFromString( charInConvo[0] );
	firstCharTagStr = "<" $ charInConvo[0] $">";
	if( CharInConvo.Length > 1 )
	{
		secondUnitID = GetUnitIDFromString( charInConvo[1] );
		secCharTagStr = "<" $ charInConvo[1] $">";
	}
	
	modifiedDialogue = Mid( DialogueStr, InStr( DialogueStr, ">" ) + 1 );
	
	firstSplit = SplitString( modifiedDialogue, firstCharTagStr, true );
	
	foreach firstSplit( tempStrOne )
	{
		if( secondUnitID != NO_UNIT && secCharTagStr != "" && left( tempStrOne, InStr( tempSTrOne, ">" ) ) == secCharTagStr )
		{
			SecondPersonDialogue.AddItem( right( tempStrOne, len( tempStrOne ) - len( secCharTagSTr ) ) );
			Order.AddItem( secondUnitID );
		}
		else
		{
			if( secCharTagStr != "" )
				secSplit = SplitString( tempStrOne, secCharTagStr, true );
			else
				secSplit.AddItem( tempStrOne );
			FirstPersonDialogue.AddItem( secSplit[0] );
			Order.AddItem( firstUnitID );
			if( secondUnitID != NO_UNIT )
			{
				for( i = 1; i < secSplit.Length; ++i )
				{
					SecondPersonDialogue.AddItem( secSplit[i] );
					Order.AddItem( secondUnitID );
				}
			}
		}
		while( secSplit.Length > 0 )
			secSplit.Remove( 0, 1 );
	}
	WhoseFirstAndSecond[0] = firstUnitID;
	WhoseFirstAndSecond[1] = secondUnitID;

	SetLeftSpeakerNameAndPicture( firstUnitID );
	SetRightSpeakerNameAndPicture( secondUnitID );
}


// Written by Chris Burris
function SetLeftSpeakerNameAndPicture( UnitID speaker )
{
	switch( speaker )
	{
		case UnitID.BJORN:
			AutosizeTextFont( DialoguePanel.LeftSpeakerTF, TheLocalizer.GetLocalizedString( BjornName ) );
			DialoguePanel.LeftSpeakerPictureMC.GotoAndStopI( speaker );
			break;
		case UnitID.BJORN_ANGRY:
			AutosizeTextFont( DialoguePanel.LeftSpeakerTF, TheLocalizer.GetLocalizedString( BjornName ) );
			DialoguePanel.LeftSpeakerPictureMC.GotoAndStopI( 10 );
			break;
		case UnitID.BJORN_HAPPY:
			AutosizeTextFont( DialoguePanel.LeftSpeakerTF, TheLocalizer.GetLocalizedString( BjornName ) );
			DialoguePanel.LeftSpeakerPictureMC.GotoAndStopI( 11 );
			break;
		case UnitID.BJORN_HURT:
			AutosizeTextFont( DialoguePanel.LeftSpeakerTF, TheLocalizer.GetLocalizedString( BjornName ) );
			DialoguePanel.LeftSpeakerPictureMC.GotoAndStopI( 12 );
			break;
		case UnitID.DAG:
			AutosizeTextFont( DialoguePanel.LeftSpeakerTF, TheLocalizer.GetLocalizedString( DagName ) );
			DialoguePanel.LeftSpeakerPictureMC.GotoAndStopI( speaker );
			break;
		case UnitID.DAG_ANGRY:
			AutosizeTextFont( DialoguePanel.LeftSpeakerTF, TheLocalizer.GetLocalizedString( DagName ) );
			DialoguePanel.LeftSpeakerPictureMC.GotoAndStopI( 13 );
			break;
		case UnitID.DAG_HAPPY:
			AutosizeTextFont( DialoguePanel.LeftSpeakerTF, TheLocalizer.GetLocalizedString( DagName ) );
			DialoguePanel.LeftSpeakerPictureMC.GotoAndStopI( 14 );
			break;
		case UnitID.DAG_HURT:
			AutosizeTextFont( DialoguePanel.LeftSpeakerTF, TheLocalizer.GetLocalizedString( DagName ) );
			DialoguePanel.LeftSpeakerPictureMC.GotoAndStopI( 15 );
			break;
		case UnitID.FREYA:
			AutosizeTextFont( DialoguePanel.LeftSpeakerTF, TheLocalizer.GetLocalizedString( FreyaName ) );
			DialoguePanel.LeftSpeakerPictureMC.GotoAndStopI( speaker );
			break;
		case UnitID.FREYA_ANGRY:
			AutosizeTextFont( DialoguePanel.LeftSpeakerTF, TheLocalizer.GetLocalizedString( FreyaName ) );
			DialoguePanel.LeftSpeakerPictureMC.GotoAndStopI( 16 );
			break;
		case UnitID.FREYA_HAPPY:
			AutosizeTextFont( DialoguePanel.LeftSpeakerTF, TheLocalizer.GetLocalizedString( FreyaName ) );
			DialoguePanel.LeftSpeakerPictureMC.GotoAndStopI( 17 );
			break;
		case UnitID.FREYA_HURT:
			AutosizeTextFont( DialoguePanel.LeftSpeakerTF, TheLocalizer.GetLocalizedString( FreyaName ) );
			DialoguePanel.LeftSpeakerPictureMC.GotoAndStopI( 18 );
			break;
		case UnitID.ILIANA:
			AutosizeTextFont( DialoguePanel.LeftSpeakerTF, TheLocalizer.GetLocalizedString( IlianaName ) );
			DialoguePanel.LeftSpeakerPictureMC.GotoAndStopI( speaker );
			break;
		case UnitID.ILIANA_ANGRY:
			AutosizeTextFont( DialoguePanel.LeftSpeakerTF, TheLocalizer.GetLocalizedString( IlianaName ) );
			DialoguePanel.LeftSpeakerPictureMC.GotoAndStopI( 19 );
			break;
		case UnitID.ILIANA_HAPPY:
			AutosizeTextFont( DialoguePanel.LeftSpeakerTF, TheLocalizer.GetLocalizedString( IlianaName ) );
			DialoguePanel.LeftSpeakerPictureMC.GotoAndStopI( 20 );
			break;
		case UnitID.ILIANA_HURT:
			AutosizeTextFont( DialoguePanel.LeftSpeakerTF, TheLocalizer.GetLocalizedString( IlianaName ) );
			DialoguePanel.LeftSpeakerPictureMC.GotoAndStopI( 21 );
			break;
		case UnitID.BANDIT:
			AutosizeTextFont( DialoguePanel.LeftSpeakerTF, TheLocalizer.GetLocalizedString( BanditName ) );
			DialoguePanel.LeftSpeakerPictureMC.GotoAndStopI( speaker );
			break;
		case UnitID.BANDIT_AXE_THROWER:
			AutosizeTextFont( DialoguePanel.LeftSpeakerTF, TheLocalizer.GetLocalizedString( BanditAxeThrowerName ) );
			DialoguePanel.LeftSpeakerPictureMC.GotoAndStopI( speaker );
			break;
		case UnitID.BANDIT_SUMMONER:
			AutosizeTextFont( DialoguePanel.LeftSpeakerTF, TheLocalizer.GetLocalizedString( BanditSummonerName ) );
			DialoguePanel.LeftSpeakerPictureMC.GotoAndStopI( speaker );
			break;
		case UnitID.BANDIT_SEER_GUARD:
			AutosizeTextFont( DialoguePanel.LeftSpeakerTF, TheLocalizer.GetLocalizedString( BanditSeerGuardName ) );
			DialoguePanel.LeftSpeakerPictureMC.GotoAndStopI( speaker );
			break;
		case UnitID.LOKI:
			AutosizeTextFont( DialoguePanel.LeftSpeakerTF, "Loki" );
			DialoguePanel.LeftSpeakerPictureMC.GotoAndStopI( speaker );
			break;
		case UnitID.ODIN:
			AutosizeTextFont( DialoguePanel.LeftSpeakerTF, "Odin" );
			DialoguePanel.LeftSpeakerPictureMC.GotoAndStopI( 22 );
			break;
	}
}


// Written by Chris Burris
function SetRightSpeakerNameAndPicture( UnitID speaker )
{
	switch( speaker )
	{
		case UnitID.BJORN:
			AutosizeTextFont( DialoguePanel.RightSpeakerTF, TheLocalizer.GetLocalizedString( BjornName ) );
			DialoguePanel.RightSpeakerPictureMC.GotoAndStopI( speaker );
			break;
		case UnitID.BJORN_ANGRY:
			AutosizeTextFont( DialoguePanel.RightSpeakerTF, TheLocalizer.GetLocalizedString( BjornName ) );
			DialoguePanel.RightSpeakerPictureMC.GotoAndStopI( 10 );
			break;
		case UnitID.BJORN_HAPPY:
			AutosizeTextFont( DialoguePanel.RightSpeakerTF, TheLocalizer.GetLocalizedString( BjornName ) );
			DialoguePanel.RightSpeakerPictureMC.GotoAndStopI( 11 );
			break;
		case UnitID.BJORN_HURT:
			AutosizeTextFont( DialoguePanel.RightSpeakerTF, TheLocalizer.GetLocalizedString( BjornName ) );
			DialoguePanel.RightSpeakerPictureMC.GotoAndStopI( 12 );
			break;
		case UnitID.DAG:
			AutosizeTextFont( DialoguePanel.RightSpeakerTF, TheLocalizer.GetLocalizedString( DagName ) );
			DialoguePanel.RightSpeakerPictureMC.GotoAndStopI( speaker );
			break;
		case UnitID.DAG_ANGRY:
			AutosizeTextFont( DialoguePanel.RightSpeakerTF, TheLocalizer.GetLocalizedString( DagName ) );
			DialoguePanel.RightSpeakerPictureMC.GotoAndStopI( 13 );
			break;
		case UnitID.DAG_HAPPY:
			AutosizeTextFont( DialoguePanel.RightSpeakerTF, TheLocalizer.GetLocalizedString( DagName ) );
			DialoguePanel.RightSpeakerPictureMC.GotoAndStopI( 14 );
			break;
		case UnitID.DAG_HURT:
			AutosizeTextFont( DialoguePanel.RightSpeakerTF, TheLocalizer.GetLocalizedString( DagName ) );
			DialoguePanel.RightSpeakerPictureMC.GotoAndStopI( 15 );
			break;
		case UnitID.FREYA:
			AutosizeTextFont( DialoguePanel.RightSpeakerTF, TheLocalizer.GetLocalizedString( FreyaName ) );
			DialoguePanel.RightSpeakerPictureMC.GotoAndStopI( speaker );
			break;
		case UnitID.FREYA_ANGRY:
			AutosizeTextFont( DialoguePanel.RightSpeakerTF, TheLocalizer.GetLocalizedString( FreyaName ) );
			DialoguePanel.RightSpeakerPictureMC.GotoAndStopI( 16 );
			break;
		case UnitID.FREYA_HAPPY:
			AutosizeTextFont( DialoguePanel.RightSpeakerTF, TheLocalizer.GetLocalizedString( FreyaName ) );
			DialoguePanel.RightSpeakerPictureMC.GotoAndStopI( 17 );
			break;
		case UnitID.FREYA_HURT:
			AutosizeTextFont( DialoguePanel.RightSpeakerTF, TheLocalizer.GetLocalizedString( FreyaName ) );
			DialoguePanel.RightSpeakerPictureMC.GotoAndStopI( 18 );
			break;
		case UnitID.ILIANA:
			AutosizeTextFont( DialoguePanel.RightSpeakerTF, TheLocalizer.GetLocalizedString( IlianaName ) );
			DialoguePanel.RightSpeakerPictureMC.GotoAndStopI( speaker );
			break;
		case UnitID.ILIANA_ANGRY:
			AutosizeTextFont( DialoguePanel.RightSpeakerTF, TheLocalizer.GetLocalizedString( IlianaName ) );
			DialoguePanel.RightSpeakerPictureMC.GotoAndStopI( 19 );
			break;
		case UnitID.ILIANA_HAPPY:
			AutosizeTextFont( DialoguePanel.RightSpeakerTF, TheLocalizer.GetLocalizedString( IlianaName ) );
			DialoguePanel.RightSpeakerPictureMC.GotoAndStopI( 20 );
			break;
		case UnitID.ILIANA_HURT:
			AutosizeTextFont( DialoguePanel.RightSpeakerTF, TheLocalizer.GetLocalizedString( IlianaName ) );
			DialoguePanel.RightSpeakerPictureMC.GotoAndStopI( 21 );
			break;
		case UnitID.BANDIT:
			AutosizeTextFont( DialoguePanel.RightSpeakerTF, TheLocalizer.GetLocalizedString( BanditName ) );
			DialoguePanel.RightSpeakerPictureMC.GotoAndStopI( speaker );
			break;
		case UnitID.BANDIT_AXE_THROWER:
			AutosizeTextFont( DialoguePanel.RightSpeakerTF, TheLocalizer.GetLocalizedString( BanditAxeThrowerName ) );
			DialoguePanel.RightSpeakerPictureMC.GotoAndStopI( speaker );
			break;
		case UnitID.BANDIT_SUMMONER:
			AutosizeTextFont( DialoguePanel.RightSpeakerTF, TheLocalizer.GetLocalizedString( BanditSummonerName ) );
			DialoguePanel.RightSpeakerPictureMC.GotoAndStopI( speaker );
			break;
		case UnitID.BANDIT_SEER_GUARD:
			AutosizeTextFont( DialoguePanel.RightSpeakerTF, TheLocalizer.GetLocalizedString( BanditSeerGuardName ) );
			DialoguePanel.RightSpeakerPictureMC.GotoAndStopI( speaker );
			break;
		case UnitID.LOKI:
			AutosizeTextFont( DialoguePanel.RightSpeakerTF, "Loki" );
			DialoguePanel.RightSpeakerPictureMC.GotoAndStopI( speaker );
			break;
		case UnitID.ODIN:
			AutosizeTextFont( DialoguePanel.LeftSpeakerTF, "Odin" );
			DialoguePanel.RightSpeakerPictureMC.GotoAndStopI( 22 );
			break;
	}
}


// Written by Chris Burris & Preston Hulcy
function UnitID GetUnitIDFromString( string UnitIDStr )
{
	local UnitID id;
	switch( UnitIDStr )
	{
		case "BJORN":
			id = BJORN;
			break;
		case "BJORN_ANGRY":
			id = BJORN_ANGRY;
			break;
		case "BJORN_HAPPY":
			id = BJORN_HAPPY;
			break;
		case "BJORN_HURT":
			id = BJORN_HURT;
			break;
		case "DAG":
			id = DAG;
			break;
		case "DAG_ANGRY":
			id = DAG_ANGRY;
			break;
		case "DAG_HAPPY":
			id = DAG_HAPPY;
			break;
		case "DAG_HURT":
			id = DAG_HURT;
			break;
		case "FREYA":
			id = FREYA;
			break;
		case "FREYA_ANGRY":
			id = FREYA_ANGRY;
			break;
		case "FREYA_HAPPY":
			id = FREYA_HAPPY;
			break;
		case "FREYA_HURT":
			id = FREYA_HURT;
			break;
		case "ILIANA":
			id = ILIANA;
			break;
		case "ILIANA_ANGRY":
			id = ILIANA_ANGRY;
			break;
		case "ILIANA_HAPPY":
			id = ILIANA_HAPPY;
			break;
		case "ILIANA_HURT":
			id = ILIANA_HURT;
			break;
		case "BANDIT":
			id = BANDIT;
			break;
		case "BANDIT_AXE_THROWER":
			id = BANDIT_AXE_THROWER;
			break;
		case "BANDIT_SUMMONER":
			id = BANDIT_SUMMONER;
			break;
		case "BANDIT_SEER_GUARD":
			id = BANDIT_SEER_GUARD;
			break;
		case "LOKI":
			id = LOKI;
			break;
		case "ODIN":
			id = ODIN;
			break;
	}
	return id;
}


// Written by Preston Hulcy
function GFxObject CreateMessageRow()
{
	return LogMC.AttachMovie( "logMessage", "logMessage"$NumMessages++ );
}


// Written by Preston Hulcy
function GFxObject InitMessageRow()
{
	local MessageRow msgRow;
	msgRow.MC = CreateMessageRow();

	msgRow.Y = 0;
	msgRow.TF = msgRow.MC.GetObject( "message" ).GetObject("textField");
	msgRow.TF.SetBool( "html", true );
	msgRow.TF.SetString( "htmlText", "" );

	FreeMessages.AddItem( msgRow );
	return msgRow.MC;
}


// Written by Preston Hulcy
function AddLogMessage( string type, string messsage )
{
	local MessageRow msgRow;
	local GFxObject.ASDisplayInfo DI;
	local int i;

	if( Len( messsage ) == 0 )
		return;

	if( FreeMessages.Length > 0 )
	{
		msgRow = FreeMessages[ FreeMessages.Length - 1 ];
		FreeMessages.Remove( FreeMessages.Length - 1, 1 );
	}
	else
	{
		msgRow = Messages[ Messages.Length - 1 ];
		Messages.Remove( Messages.Length - 1, 1 );
	}
	
	msgRow.TF.SetString( type, TheLocalizer.GetLocalizedString( messsage ) );
	AutosizeTextFont( msgRow.TF, TheLocalizer.GetLocalizedString( messsage ), 1 );
	msgRow.Y = 0;
	DI.hasY = true;
	DI.Y = 0;
	msgRow.MC.SetDisplayInfo( DI );
	msgRow.MC.GotoAndPlay( "show" );
	for( i = 0; i < Messages.Length; ++i )
	{
		Messages[i].Y -= MessageHeight;
		DI.Y = Messages[i].Y;
		Messages[i].MC.SetDisplayInfo( DI );
	}
	Messages.InsertItem( 0, msgRow );
}


// Written by Preston Hulcy
function DeselctedAbilityButton( int index )
{
	if( index >= 0 && index < MAX_NUM_ACTIONS )
	{
		Actions[ index ].GotoAndPlay( "up" );
	}
}


// Written by Preston Hulcy
function ShowProgressBar()
{
	if( ProgressBar == none )
	{
		ProgressBar = new class'BS_GFxHUD_ProgressBar';
		ProgressBar.TheLocalizer = TheLocalizer;
		ProgressBar.Init();
	}
	else
		ProgressBar.Show();
}


// Written by Preston Hulcy
function HideProgressBar()
{
	if( ProgressBar != none )
		ProgressBar.Hide();
}


DefaultProperties
{
	MovieInfo=SwfMovie'bs_HUDFlash.BS_HUD'
	MAX_NUM_ACTIONS=4
	MAX_NUM_STATUS_EFFECTS=12
	bIsInDialogueMode = false
	bIsShowingLeftSpeaker = false
	bIsShowingRightSpeaker = false
	Priority=100
	WidgetBindings.Add( ( WidgetName="Action1", WidgetClass=class'GFxCLIKWidget' ) )
	WidgetBindings.Add( ( WidgetName="Action2", WidgetClass=class'GFxCLIKWidget' ) )
	WidgetBindings.Add( ( WidgetName="Action3", WidgetClass=class'GFxCLIKWidget' ) )
	WidgetBindings.Add( ( WidgetName="Action4", WidgetClass=class'GFxCLIKWidget' ) )
	WidgetBindings.Add( ( WidgetName="EndTurnButton", WidgetClass=class'GFxCLIKWidget' ) )
	WidgetBindings.Add( ( WidgetName="UnitsBjornButton", WidgetClass=class'GFxCLIKWidget' ) )
	WidgetBindings.Add( ( WidgetName="UnitsDagButton", WidgetClass=class'GFxCLIKWidget' ) )
	WidgetBindings.Add( ( WidgetName="UnitsFreyaButton", WidgetClass=class'GFxCLIKWidget' ) )
	WidgetBindings.Add( ( WidgetName="UnitsIlianaButton", WidgetClass=class'GFxCLIKWidget' ) )
	WidgetBindings.Add( ( WidgetName="DialogueButton", WidgetClass=class'GFxCLIKWidget' ) )
	WidgetBindings.Add( ( WidgetName="PlaySpeedButton", WidgetClass=class'GFxCLIKWidget' ) )
	WidgetBindings.Add( ( WidgetName="MovePreviewButton", WidgetClass=class'GFxCLIKWidget' ) )
	WidgetBindings.Add( ( WidgetName="PauseButton", WidgetClass=class'GFxCLIKWidget' ) )
	WidgetBindings.Add( ( WidgetName="UnitTypeButton", WidgetClass=class'GFxCLIKWidget' ) )
	WidgetBindings.Add( ( WidgetName="UnitHPTF", WidgetClass=class'GFxCLIKWidget' ) )
	WidgetBindings.Add( ( WidgetName="UnitAtkTF", WidgetClass=class'GFxCLIKWidget' ) )
	WidgetBindings.Add( ( WidgetName="UnitAPTF", WidgetClass=class'GFxCLIKWidget' ) )
	WidgetBindings.Add( ( WidgetName="Action1FadeOutButton", WidgetClass=class'GFxCLIKWidget' ) )
	WidgetBindings.Add( ( WidgetName="Action2FadeOutButton", WidgetClass=class'GFxCLIKWidget' ) )
	WidgetBindings.Add( ( WidgetName="Action3FadeOutButton", WidgetClass=class'GFxCLIKWidget' ) )
	WidgetBindings.Add( ( WidgetName="Action4FadeOutButton", WidgetClass=class'GFxCLIKWidget' ) )
	WidgetBindings.Add( ( WidgetName="Action1NonButton", WidgetClass=class'GFxCLIKWidget' ) )
	WidgetBindings.Add( ( WidgetName="Action2NonButton", WidgetClass=class'GFxCLIKWidget' ) )
	WidgetBindings.Add( ( WidgetName="Action3NonButton", WidgetClass=class'GFxCLIKWidget' ) )
	WidgetBindings.Add( ( WidgetName="Action4NonButton", WidgetClass=class'GFxCLIKWidget' ) )
	
	CurrentDialogueIndex=-1
	MessageHeight = 38
	MaxNumMessages = 5

	// Sounds
	ButtonClickSound     = SoundCue'Sounds.UI.BS-sfx_UI_ButtonPress_Cue'
	ButtonMouseOverSound = SoundCue'Sounds.UI.BS-sfx_UI_MouseOver_Cue'

	UnitSelectedSound    = SoundCue'bs_HudUi.SFX.BS_SFX_UnitSelectionClick_CUE'
	AbilityClickSound    = SoundCue'bs_HudUi.SFX.BS_SFX_AbilitiesClick_CUE'
    MenuClickSound       = SoundCue'bs_HudUi.SFX.BS_SFX_MenuClick_CUE'
    
	UnitDeselectedSound  = SoundCue'Sounds.UI.BS-sfx_UI_DeselectCharacter_Cue'
    AbilitySelectedSound = SoundCue'Sounds.UI.BS-sfx_UI_SelectAbility_Cue'
    PlayerTurnSound      = SoundCue'Sounds.Enemies.BS-sfx_Horn_YourTurn_Cue'
    EnemyTurnSound       = SoundCue'Sounds.Enemies.BS-sfx_Horn_EnemyTurn_Cue'
    GameOverSound        = SoundCue'Sounds.UI.BS-sfx_UI_DefeatScreen_Cue'

	// Colors
	PlayerBlue     = "0x2473FF"
    EnemyRed       = "0xFF2F24"
    HealthBarGreen = "0x22C607"
    HealthBarRed   = "0xD5372D"
	CombatLockRed  = "0x5D221E"
	TextColor      = "0x000000"
	HPBuffRed      = "0x01B001"
	AtkBuffBlue1   = "0x01B001"

	AtkBuffBlue = "01B001"
	StatColor   = "000000"

	bShowAbilityRange = false
	bDisableInputWhenInDialogue = true;
	AbilityIdxToShow = -1
	
	bsDoubleClickTimer = 2.0f
	MAX_DOUBLE_CLICK_TIME = 2.0f
}
