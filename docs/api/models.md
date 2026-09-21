# v0.6.66 数据模型字段表（自动生成）

## SubObject : 
  int testInputField

## AIExample4_InspectLevel : MonoBehaviour
  bool basicVariable
  bool advancedVariable
  bool debugVariable

## AIExample7_Collection : MonoBehaviour
  string value
  int integer
  string text
  float[] myArray
  int[] fixedArray
  bool[] unsortableArray
  List<bool> buttonList
  List<bool> dropDownList
  List<Vector3> enumBoundList
  string[] largeCollection
  CustomConstructor[] constructors
  string[] items
  CollectionContainer[] alwaysExpanded

## CollectionContainer : 
  int integer
  string text

## Levels : BaseEffect
  ColorMode Mode
  Vector3 InputL
  Vector3 InputR
  Vector3 InputG
  Vector3 InputB
  Vector2 OutputL
  Vector2 OutputR
  Vector2 OutputG
  Vector2 OutputB

## fiGraphMetadataChild : 
  fiGraphMetadata Metadata

## fiGraphMetadata : 
  int NewIndex
  int OldIndex

## MetadataMigration : 
  int NewIndex
  int OldIndex

## InspectorCollectionAddItemAttributesAttribute : Attribute
  MemberInfo AttributeProvider

## InspectorCollectionItemAttributesAttribute : Attribute
  MemberInfo AttributeProvider

## InspectorCollectionPagerAttribute : Attribute
  int PageMinimumCollectionLength

## InspectorCollectionRotorzFlagsAttribute : Attribute
  ReorderableListFlags Flags

## InspectorCollectionShowItemDropdownAttribute : Attribute
  bool IsCollapsedByDefault

## SharedInstance : BaseScriptableObject<TSerializer> where TSerializer : BaseSerializer
  TInstance Instance

## tkFoldoutMetadata : IGraphMetadataItemPersistent
  bool IsExpanded

## tkControlEditor : 
  bool Debug
  tkIControl Control
  object Context

## PinchUpdateData : 
  Vector3 pinchCenter
  float pinchDistance
  float pinchStartDistance
  float pinchAngleDelta
  float pinchAngleDeltaNormalized
  float pinchTiltDelta
  float pinchTotalFingerMovement

## DemoController : MonoBehaviour
  float introTextOnScreenTime

## AmbientOcclusionModel : PostProcessingModel
  float intensity
  float radius
  SampleCount sampleCount
  bool downsampling
  bool forceForwardCompatibility
  bool ambientOnly
  bool highPrecision

## AntialiasingModel : PostProcessingModel
  float subpixelAliasingRemovalAmount
  float edgeDetectionThreshold
  float minimumRequiredLuminance
  float subpixelSpreadAmount
  float edgeSharpnessAmount
  float edgeDetectionThreshold
  float minimumRequiredLuminance
  FxaaPreset preset
  float jitterSpread
  float sharpen
  float stationaryBlending
  float motionBlending
  Method method
  FxaaSettings fxaaSettings
  TaaSettings taaSettings

## BloomModel : PostProcessingModel
  float intensity
  float threshold
  float softKnee
  float radius
  bool antiFlicker
  Texture texture
  float intensity
  BloomSettings bloom
  LensDirtSettings lensDirt

## BuiltinDebugViewsModel : PostProcessingModel
  float scale
  float sourceOpacity
  float motionImageOpacity
  float motionImageAmplitude
  float motionVectorsOpacity
  int motionVectorsResolution
  float motionVectorsAmplitude
  Mode mode
  DepthSettings depth
  MotionVectorsSettings motionVectors

## ChromaticAberrationModel : PostProcessingModel
  Texture2D spectralTexture
  float intensity

## ColorGradingModel : PostProcessingModel
  Tonemapper tonemapper
  float neutralBlackIn
  float neutralWhiteIn
  float neutralBlackOut
  float neutralWhiteOut
  float neutralWhiteLevel
  float neutralWhiteClip
  float postExposure
  float temperature
  float tint
  float hueShift
  float saturation
  float contrast
  Vector3 red
  Vector3 green
  Vector3 blue
  int currentEditingChannel
  Color slope
  Color power
  Color offset
  Color lift
  Color gamma
  Color gain
  ColorWheelMode mode
  LogWheelsSettings log
  LinearWheelsSettings linear
  ColorGradingCurve master
  ColorGradingCurve red
  ColorGradingCurve green
  ColorGradingCurve blue
  ColorGradingCurve hueVShue
  ColorGradingCurve hueVSsat
  ColorGradingCurve satVSsat
  ColorGradingCurve lumVSsat
  int e_CurrentEditingCurve
  bool e_CurveY
  bool e_CurveR
  bool e_CurveG
  bool e_CurveB
  TonemappingSettings tonemapping
  BasicSettings basic
  ChannelMixerSettings channelMixer
  ColorWheelsSettings colorWheels
  CurvesSettings curves

## DepthOfFieldModel : PostProcessingModel
  float focusDistance
  float aperture
  float focalLength
  bool useCameraFov
  KernelSize kernelSize

## EyeAdaptationModel : PostProcessingModel
  float lowPercent
  float highPercent
  float minLuminance
  float maxLuminance
  float keyValue
  bool dynamicKeyValue
  EyeAdaptationType adaptationType
  float speedUp
  float speedDown
  int logMin
  int logMax

## FogModel : PostProcessingModel
  bool excludeSkybox

## GrainModel : PostProcessingModel
  bool colored
  float intensity
  float size
  float luminanceContribution

## MotionBlurModel : PostProcessingModel
  float shutterAngle
  int sampleCount
  float frameBlending

## ScreenSpaceReflectionModel : PostProcessingModel
  float reflectionMultiplier
  float fadeDistance
  float fresnelFade
  float fresnelFadePower
  SSRReflectionBlendType blendType
  SSRResolution reflectionQuality
  float maxDistance
  int iterationCount
  int stepSize
  float widthModifier
  float reflectionBlur
  bool reflectBackfaces
  float intensity
  ReflectionSettings reflection
  IntensitySettings intensity
  ScreenEdgeMask screenEdgeMask

## UserLutModel : PostProcessingModel
  Texture2D lut
  float contribution

## VignetteModel : PostProcessingModel
  Mode mode
  Color color
  Vector2 center
  float intensity
  float smoothness
  float roundness
  Texture mask
  float opacity
  bool rounded

## ExampleWheelController : MonoBehaviour
  float acceleration
  Renderer motionVectorRenderer

## Item : MonoBehaviour
  Image image
  Text title
  Text description
  RectTransform healthBar
  RectTransform damageBar

## ItemsGenerator : MonoBehaviour
  RectTransform target
  Sprite image
  int count
  string baseName
  Item itemPrefab

## SkeletonDataAsset : ScriptableObject
  AtlasAsset[] atlasAssets
  float scale
  TextAsset skeletonJSON
  string[] fromAnimation
  string[] toAnimation
  float[] duration
  float defaultMix
  RuntimeAnimatorController controller

## SubmeshTriangleBuffer : 
  int[] triangles
  int triangleCount
  int firstVertex

## SubmeshedMeshInstruction : 
  int vertexCount

## SubmeshInstruction : 
  Skeleton skeleton
  int startSlot
  int endSlot
  Material material
  int triangleCount
  int vertexCount
  int firstVertexIndex
  bool forceSeparate

## SlotRegionPair : 
  string slot
  string region

## SlotMaterialOverride : IEquatable<SlotMaterialOverride>
  bool overrideDisabled
  string slotName
  Material material

## CustomSkin : MonoBehaviour
  string sourceAttachmentPath
  string targetSlot
  string targetAttachment
  SkeletonDataAsset skinSource
  SkinPair[] skinItems
  Skin customSkin

## SkinPair : 
  string sourceAttachmentPath
  string targetSlot
  string targetAttachment

## SpineSlot : SpineAttributeBase
  bool containsBoundingBoxes

## U8ProductInfo : 
  string app_id
  string channel_id
  int world_id
  int store_id
  string product_id
  string desc
  string name
  int type
  long price
  string extra_data

## U8OrderInfo : 
  string orderId
  string extension

## U8LoginResult : 
  int result
  string uid
  string channelUid
  string token
  string extension
  bool isGuest

## U8PayConfirmResult : 
  PayConfirmStatus pay_status

## U8PayResult : 
  PayResultStatus status
  string outTradeNo

## ActivityConfirmMissionRequest : 
  string missionId
  string activityId

## RewardItemModel : ISharedItemModel, IGachaResultHolder
  ItemType type
  string id
  GachaResult charGet
  int count

## ActivityConfirmMissionResponse : PlayerDeltaResponse
  List<RewardItemModel> items

## ActivityConfirmMissionGroupRequest : 
  string groupId
  string activityId

## ActivityConfirmMissionGroupResponse : PlayerDeltaResponse
  List<RewardItemModel> items

## ActivityFirstExchangeShopRequest : 
  string activityId
  string goodId
  int count

## ActivityFirstExchangeShopResponse : PlayerDeltaResponse
  RewardItemModel item

## ActivityFirstMicroMapObj : MonoBehaviour
  UIStringEvent stringEvent

## ActivityFirstMissionItem : MonoBehaviour
  UIStringEvent sendEvent

## ActivityFirstShopObject : MonoBehaviour
  UIStringEvent sendEvent

## ActivityFirstMapViewModel : 
  List<DefaultZoneData> zoneList
  string selectedZoneId

## ActivityFirstStateBean : MonoBehaviour, IStateBean, IDataBindWrapper
  List<MissionViewModel> missionList
  List<CommonShopData> shopViewModel
  ActivityFirstMapProperty mapProperty

## ActivityCommonMissionItem : MonoBehaviour
  UIStringEvent sendEvent

## EffectData_Advanced : SourceData
  bool overrideHeight
  float heightOffset

## EffectData_Projectile : SourceData
  Transform[] inactiveOnFinish

## LoginResult : 
  string uid
  string token
  bool isIdentityVerified

## PayResult : 
  PayResultStatus status
  string outTradeNo

## UIStateMachine : EnumStateMachine<StateType> where StateType : struct
  StateType fromState
  StateType toState
  float duration

## AVGShowItemPanel : ExecutorComponent
  string styleKey
  UnityEngine.Object slotPrefab

## AVGCharacterSpriteHub : MonoBehaviour
  Sprite sprite
  Texture alphaTex
  string alias
  SpriteConfig[] sprites

## AVGFakeButton : MonoBehaviour, IPointerEnterHandler, IPointerDownHandler, IPointerUpHandler, IPointerExitHandler, IEventSystemHandler
  Action onClickCB

## SnapshotParam : 
  string[] snapshots
  float[] weights

## ActionInfoAttribute : Attribute
  string Category
  string Description

## AnimationBundle : 
  string beginAnim
  string loopAnim
  string endAnim

## CharacterAnimator : SpineAnimator
  SkeletonAnimation skeleton
  Transform muzzlaTransform
  Transform hitTransform
  Transform headTransform
  Transform specialPoint0
  Transform specialPoint1

## AnimationData : 
  string animKey
  string animName
  bool loop
  float speed
  bool ignoreMissing
  float time
  bool valid

## BattleController : SingletonMonoBehaviour<BattleController>
  bool retryFailedLogs
  bool manualTrigSkill

## ReplayController : 
  bool retryFailedLogs
  bool manualTrigSkill

## CharInfo : 
  int charInstId
  string skinId
  string skillId
  int skillLvl
  int level
  EvolvePhase phase
  int potentialRank
  int favorBattlePhase

## LogItem : IComparable<LogItem>
  float timestamp
  BattleCharacterData.Signiture signiture
  OperationType op
  SharedConsts.Direction direction
  GridPosition pos

## Metadata : 
  string characterKey
  int level
  EvolvePhase phase
  int favorBattlePhase
  int potentialRank
  int playerInstId

## BattleStats : 
  string enemyId
  CounterType counterType
  string charId
  CounterType counterType
  int killedEnemiesCnt
  int unnatrualRecoveredCost
  ListCounterPool<CharStatKey> charStats
  ListCounterPool<EnemyStatKey> enemyStats
  ListCounterPool<string> skillTrigStats
  bool autoReplayCancelled

## EnemyStatKey : 
  string enemyId
  CounterType counterType

## CharStatKey : 
  string charId
  CounterType counterType

## Snapshot : 
  Dictionary<string, PlayerBuildingChar> chars
  Dictionary<string, PlayerBuildingRoomSlot> roomSlots
  PlayerBuildingRoom rooms

## ObscuredAttributesSnapshot : 
  ObscuredInt maxHp
  ObscuredInt atk
  ObscuredInt def
  ObscuredFloat magicResistance
  ObscuredInt cost
  ObscuredInt blockCnt
  ObscuredInt respawnTime
  ObscuredInt maxDeployCount
  ObscuredInt maxDeckStackCnt

## CharacterInOut : 
  AttributesData attributes
  bool excludedFromBattle

## SchedulerSnapshot : 
  float waveStartTime
  float fragmentStartTime
  float actionStartTime

## Enemy : Unit, IMovable, ILocatable
  bool unharmful
  bool alwaysCountAsKilled
  bool isHanging

## SkinEntry : 
  string theme
  string skinKey

## RebornData : 
  int modeIndex
  float rebornTime
  float hpRatio
  BuffData[] buffs
  Blackboard blackboard
  string[] effects

## BatchLevelBaker : LevelBaker
  bool enabled
  string levelId
  MapGraphic graphic
  bool enabled
  string name
  LevelPair[] levels

## LevelPair : 
  bool enabled
  string levelId
  MapGraphic graphic

## LevelGroup : 
  bool enabled
  string name
  LevelPair[] levels

## CharacterSpec : 
  string key
  GridPosition position
  SharedConsts.Direction direction

## BattleEntityData : 
  string id
  string alias
  string nameCn
  string nameEn
  AttributesData attributes

## BattleCharacterData : BattleEntityData
  uint uniqueId
  string charId
  int skillTriggerCnt
  int level
  EvolvePhase evolvePhase
  int potentialRank
  int favorBattlePhase
  string prefabKey
  string rangeId
  CharSkinData skinData
  uint uniqueId
  ProfessionCategory profession
  RarityRank rarity
  string teamKey
  bool isToken
  bool isPredefined
  bool isHidden
  bool isAssistChar
  string tokenOrHostKey
  uint tokenOrHostUniqueId
  int tokenInitialCnt
  BuildCondition buildCondition
  int mainSkillIndex
  SkillData mainSkill
  TalentData[] talents
  CharacterData.TraitData trait
  SharedData shared

## Signiture : 
  uint uniqueId
  string charId

## SharedData : 
  int skillTriggerCnt

## BattlePlayerData : 
  BattleCharacterData[] characters
  BattleCharacterData[] tokens

## ProfessionData : 
  ProfessionCategory profession
  Sprite sprite
  Color color

## BattleFailedStateParam : 
  bool isGiveUp

## BattleFinishServiceStateParam : 
  bool isGiveUp

## BattleClearStateParam : 
  bool isServiceSucceed
  bool isGiveUp
  PlayerBattleRank battleRank
  CommonFinishBattleResponse finishResponse

## UIToastController : MonoBehaviour
  ToastType toastType
  SeType seType
  string id
  string name
  string description

## BattleReward : 
  int gold
  int exp
  int apFailReturn

## UICharacterInfoPanel : MonoBehaviour
  ProfessionCategory profession
  Sprite sprite

## GridRangeDrawer : MonoBehaviour, IBattleModule
  IDrawableRange range
  Color displayColor
  Color _attackRangeColor
  Color _healRangeColor
  Color _skillRangeColor

## ArchiCostItemModel : 
  UIItemViewModel itemModel
  int costNum
  int totalNum

## NewFurnitureItemModel : 
  string name

## BStationInfoModel : 
  BuildingCharModel[] stationedChars
  int stationedNum
  int maxStationedChars

## BRoomLevelAdapter : SimpleLayoutAdapter
  Color mainColor

## DynamicBuildingContext : IBuildingContext, ITimeWatcher, IRefCountInstance
  BuildingModel model
  BuildingServiceController service

## BuildingController : SingletonMonoBehaviour<BuildingController>, ISingletonNotAutoCreate, IBuildingContext
  bool enableCharacterSleep

## BuildingStateMachine : TypeStateMachine
  TransitionType transitionType
  RoomSlotModel targetRoom
  IBuildingMode fromMode

## GridMap : 
  IList<BuildingData.ObstaclePoint> obstaclePoints
  IList<BuildingData.ObstacleRect> obstacleRects
  GridPosition from
  GridPosition to
  List<Node> nextNodes
  float weight
  EdgeNode[] edges
  uint objectId
  object objectRef
  List<GridNode> occupyGrids

## GridNode : Node, IComparable<GridNode>
  EdgeNode[] edges
  uint objectId
  object objectRef

## VCharacter : VRoom.Object, IMovable
  Vector2 idleTimeRange
  float moveSpeed
  float moveAnimScale
  float probToInteractFurniture
  VFurnitureBridge.InteractSlot interactSlot

## VFurnitureBridge : VRoom.IObject
  string animKey
  GridPosition[] startPosList
  Vector3 interactWorldPos
  Vector2 interactTime
  bool specifyDir
  SharedConsts.LeftOrRight lOrR

## InteractSlot : IItemWithWeight
  string animKey
  GridPosition[] startPosList
  Vector3 interactWorldPos
  Vector2 interactTime
  bool specifyDir
  SharedConsts.LeftOrRight lOrR

## VGridPlane : MonoBehaviour
  Rect area
  float offset
  GridPosition gridSize
  bool ignoreBuiltInObstacles
  BuildingData.ObstacleRect[] dynamicObstacleRects

## VRoomSlot : AbstractRoomSlot
  string prefabId

## VCameraController : SingletonMonoBehaviour<VCameraController>, ISingletonNotAutoCreate
  UnityEvent onDragOrPinch
  OnZoomUpdateEvent onZoomUpdate

## DIYPreset : IDIYPreset
  List<DIYPresetItem> itemList

## DIYPresetItem : 
  string id
  int pos0
  int pos1

## DIYRoom : MonoBehaviour, IFurnitureProviderListener, IDIYRoomModifierProviderListener, DIYRoomModifier.IListener, Furniture.IListener
  Vector3 _cameraOffset
  Vector3 _cameraLookOffset

## DIYRoomPrefabSettings : MonoBehaviour
  int x
  int y
  int z
  int w
  int h
  int d
  Renderer wallRenderer
  MeshFilter wallMeshFilter
  Renderer floorRenderer
  MeshFilter floorMeshFilter
  MeshFilter floorGridMeshFilter
  MeshFilter wallGridMeshFilter
  MeshFilter ceilingGridMeshFilter
  Renderer leftDoorRenderer
  Renderer rightDoorRenderer
  ObstacleItem[] obstacles

## ObstacleItem : 
  int x
  int y
  int z
  int w
  int h
  int d

## DIYRoomTemplateDatabase : IDIYRoomTemplateProvider
  RoomSlotModel roomSlotModel

## FurnitureControllerHolder : MonoBehaviour
  DIYRoom.IFurnitureController furnitureController

## FurnitureEntity : MonoBehaviour
  int x
  int y
  AttachPoint[] attachPoints

## FurniturePresetManager : IDIYPresetManager, IDIYPresetProvider
  PlayerBuildingDIYPreset buildingPreset

## FurnitureSorter : 
  FurnitureSortingOption option
  SortingMethod method
  Func<T, T, int> func

## FurnitureStorageItem : 
  string furnitureId
  int totalCount

## FurnitureTypeDatabase : IFurnitureTypeDB
  BuildingData.FurnitureType type
  List<string> names

## PerfReport : 
  string name
  int size
  bool available
  string basePath
  List<CacheItemInfo> memCacheItemInfos
  List<CacheItemInfo> localCacheItemInfos
  CacheItemInfo mapInfo

## CacheItemInfo : 
  string name
  int size
  bool available

## DIYFilterItemViewAdapter : LoopScrollAdapter<DIYFilterItemViewAdapter.ViewHolder, DIYShopFilterViewData>
  GameObject panel

## DIYShop : IDIYShop
  BuildingGetFurnitureGoodListResponse.Good good
  PlayerGoodItemData playerGoodItemData

## DIYShopBuyItemLine : MonoBehaviour
  int maxCount
  int price
  int count
  int m_buyCount

## DIYShopBuyPanel : MonoBehaviour
  IDIYShopItem shopItem
  int cashMaxCount
  int furnitureCoinMaxCount
  int hasCount
  string themeName
  string groupName

## DIYShopFilterViewData : 
  bool selected
  bool showDesc
  string description

## DIYShopGroupItemModel : 
  IFurnitureGroupData groupData
  Action<DIYShopItemViewData> selectCallback

## DIYShopItemViewAdapter : LoopScrollAdapter<DIYShopItemViewAdapter.ViewHolder, DIYShopItemViewData>
  GameObject panel

## DIYShopItemViewData : 
  int count
  int comfort

## DIYSortPanel : MonoBehaviour
  List<FilterButtonItem> filters
  FurnitureSorter.FurnitureSortingOption option
  DIYSortButton button
  FilterType filterType
  int param
  DIYFilterButton button

## SortButtonItem : 
  WorkshopFormulaSorter.WorkshopSortingOption option
  WorkshopSortButton button

## FilterButtonItem : 
  FilterType filterType
  int param
  WorkshopFilterButton button

## MockDIYPresetManager : MonoBehaviour, IDIYPresetManager, IDIYPresetProvider
  string id
  int pos0
  int pos1
  string _name
  Sprite _bgSprite
  PresetItem[] _items
  string _floorModifierId
  string _wallModifierId

## PresetItem : 
  string id
  int pos0
  int pos1

## Preset : IDIYPreset
  string _name
  Sprite _bgSprite
  PresetItem[] _items
  string _floorModifierId
  string _wallModifierId

## MockDIYRoomModifierManager : MonoBehaviour, IDIYRoomModifierManager, IDIYRoomModifierProvider
  string id
  int roomIndex

## MockDIYRoomModifierConfig : 
  string id
  int roomIndex

## MockDIYRoomTemplateDB : MonoBehaviour, IDIYRoomTemplateProvider
  int x
  int y
  int z
  int w
  int h
  int d

## DIYRoomTemplate : IDIYRoomTemplate
  int x
  int y
  int z
  int w
  int h
  int d

## MockDIYShop : MonoBehaviour, IDIYShop
  string furnitureId
  int cashCostNumber
  int furnitureCoinCostNumber
  int cashDiscountNumber
  int furnitureCoinDiscountNumber
  int buyLimitNumber
  long startTimeNumber
  long endTimeNumber

## MockFurnitureDB : MonoBehaviour, IFurnitureDataProvider
  GameObject _prefab
  FurnitureData[] _furnitureData

## FurnitureData : IFurnitureData, IDIYItem
  GameObject _prefab

## MockFurnitureFromTableManager : MonoBehaviour, IFurnitureManager, IFurnitureProvider
  string id
  int pos0
  int pos1
  int roomIndex

## MockFurnitureConfig : 
  string id
  int pos0
  int pos1
  int roomIndex

## MockFurnitureGroupDB : MonoBehaviour, IFurnitureGroupDataProvider
  int count
  int comfort

## CollectInfo : 
  int count
  int comfort

## MockFurnitureManager : MonoBehaviour, IFurnitureManager, IFurnitureProvider
  string id
  int pos0
  int pos1
  int roomIndex

## MockFurnitureStorage : MonoBehaviour, IFurnitureStorage
  string id
  int count
  Item[] _items
  bool _each99

## DIYThemeGroupItemModel : 
  IFurnitureGroupData groupData
  Action<IDIYItem> selectCallback

## DIYThemeItemViewAdapter : LoopScrollAdapter<DIYThemeItemViewAdapter.ViewHolder, DIYThemeItemViewData>
  GameObject panel

## DIYThemeItemViewData : 
  int count
  int comfort

## DIYComfortDetailView : MonoBehaviour
  string col0
  string col1
  string col2
  bool zeroColor
  bool highlight
  int curCount
  int maxCount
  int comfort
  List<DIYComfortDetailLine> subLines
  string furnitureId
  string displayName
  int count
  int comfortPer

## DIYComfortDetailLine : 
  string col0
  string col1
  string col2
  bool zeroColor
  bool highlight

## GroupLineMapItem : 
  int curCount
  int maxCount
  int comfort
  List<DIYComfortDetailLine> subLines

## DIYFurnitureFilterGroup : MonoBehaviour
  GameObject selectGameObject
  GameObject unselectGameObject

## FilterGroupItem : 
  GameObject selectGameObject
  GameObject unselectGameObject

## DIYFurnitureScrollAdapter : LoopScrollAdapter<DIYFurnitureScrollAdapter.ViewHolder, DIYItemViewData>
  GameObject panel

## DIYPage : BuildingCommonPage, DIYRoom.IListener
  BuildingData.FurnitureType furnitureType
  IFurnitureTypeDB furnitureTypeDB
  UIDIYFurnitureTypeIconHub iconHub
  string text
  DIYRoomPart roomPart
  Sprite icon
  BuildingData.CustomData.ThemeData themeData
  SpriteHub spriteHub
  Vector3 offset
  Vector3 lookOffset
  List<DIYPresetItem> presetItems
  DIYRoom.IFurnitureController furnitureController
  int pos0
  int pos1

## FurnitureCategoryViewData : DIYItemViewData
  BuildingData.FurnitureType furnitureType
  IFurnitureTypeDB furnitureTypeDB
  UIDIYFurnitureTypeIconHub iconHub

## UnequipModifierViewData : DIYItemViewData
  string text
  DIYRoomPart roomPart
  Sprite icon

## FurnitureThemeViewData : DIYItemViewData
  BuildingData.CustomData.ThemeData themeData
  SpriteHub spriteHub

## CameraState : 
  Vector3 offset
  Vector3 lookOffset

## ThemePreset : IDIYPreset
  List<DIYPresetItem> presetItems

## DIYPresetPanel : MonoBehaviour
  int index
  IDIYPreset preset
  Sprite emptyIcon
  bool selected
  Sprite imageSpriteCached
  bool spriteNeedDestroy

## DIYRoomIndexConfig : MonoBehaviour
  string roomId
  int index

## DIYRoomIndicatorButton : MonoBehaviour
  ButtonType buttonType

## FurnitureGenreConfig : MonoBehaviour
  List<BuildingData.FurnitureType> furnitureTypes
  FurnitureGenre[] genres

## FurnitureGenre : 
  List<BuildingData.FurnitureType> furnitureTypes

## UIDIYFurnitureTypeIconHub : MonoISpriteHub
  BuildingData.FurnitureType furnitureType
  Sprite icon
  Sprite whiteIcon

## UIDIYRoomHomeState : UIPopupState
  RoomSlotModel roomSlotModel
  string themeId
  int level
  string name
  string desc
  bool canLevelup
  Sprite backgroundSprite

## UIDIYRoomLevelupState : UIPopupState
  RoomSlotModel roomSlotModel
  bool canLevelup
  string themeId
  int level
  bool showConditionPanel
  int conditionLevel
  List<LevelInfoItem> infoItemList
  List<ArchiCostItemModel> costList
  List<NewFurnitureItemModel> newFurnitureList
  Sprite backgroundSprite

## BuildingPrefabMaker : ScriptableObject
  float buildingSpineScale
  float battleSpineScale
  float moveSpeed

## CharacterSpecEntry : 
  float buildingSpineScale
  float battleSpineScale
  float moveSpeed

## BuildingAssistantModel : 
  BuildingAssistantType type
  BuildingCharModel charModel
  int index

## BuildingCharModel : 
  int instId
  string charId
  CharUISkinStruct skinInfo
  string name
  long lastManpower
  long maxManpower
  long powerCost
  string slotId
  int stationIndex
  DateTime lastApAddTime
  DateTime stateFinishTime
  bool isTraining
  bool canGainIntimacy
  bool assistIntimacy
  string extension

## BuildingCharMPHelper : 
  Action onManpowerChanged

## BuildingLaborViewModel : 
  Action<BuildingLaborViewModel> onValueTick
  Action<BuildingLaborViewModel> onValueChanged

## BuildingModel : StateMachine.IBlackboard
  RoomSlotGraph slotGraph
  List<RoomSlotModel> layout
  ListDict<string, StoreyViewModel> storeys

## BuildingVisitorModel : 
  string uid
  string nickName
  string charId
  string skinId
  int level

## RoomSlotGraph : 
  SharedConsts.Direction direction
  string toSlot

## RoomSlotModel : 
  string slotId
  BuildingData.RoomType roomId
  RoomSlotState slotState
  DateTime constructCompleteTime
  int level
  ShallowEqualArray<BuildingCharModel> stationedChars
  int stationedNum

## PlayerSlotStatus : 
  string slotId
  BuildingData.RoomType roomId
  RoomSlotState slotState
  DateTime constructCompleteTime
  int level
  ShallowEqualArray<BuildingCharModel> stationedChars
  int stationedNum

## StoreyViewModel : 
  string id
  string name
  bool isUnlocked
  int requireLevel
  int yOffset
  bool isUnderground

## BuildingSceneParam : UIPageControllerParam
  bool isVisit
  bool hasVisitedToday
  string visitUid
  BuildingData.RoomType autoFocusRoom
  VisitBuildingResponse visitResponse
  BuildingVisitContext visitContext

## BuildingRoomInfoModel : 
  string slotId
  BuildingData.RoomType roomId
  string name
  int level
  BuildingData.RoomData.PhaseData phaseData
  BuildingData.LayoutData.StoreyData storeyData

## BuildingVisitContext : 
  string uid
  int level
  string charId
  string skinId
  string nickName
  string uid
  bool isSharing
  bool isVisited
  int rawIndex
  int nextIndex
  PlayerInfo playerInfo
  List<FriendInfo> sortedFriendList

## PlayerInfo : 
  string uid
  int level
  string charId
  string skinId
  string nickName

## FriendInfo : 
  string uid
  bool isSharing
  bool isVisited
  int rawIndex

## BuildingModeRaycastManager : 
  Mode modeType
  bool isBlocked

## BuildingBuffDescStruct : 
  bool isUnlocked
  string buffId
  string name
  string iconId
  string desc
  BuildingData.RoomType roomType
  Color color
  Color textColor
  CharacterData.UnlockCondition currentUnlockCond
  string nextLevelBuff
  CharacterData.UnlockCondition nextUnlockCond

## FloatRoomDetailModel : 
  RoomSlotModel slotModel
  bool isShow
  Color levelColor
  Color emptyColor

## FloatStationViewModel : 
  bool isShow
  RoomSlotModel slotModel

## BasicRoomInfoModel : 
  string slotId
  int level
  int maxLevel
  string name
  int yOffset
  bool isUpgrading
  int index
  bool hasTrackPoint

## StationBPViewModel : 
  int totalStationNum
  int totalStationNumLimit
  GridPosition totalSize
  ListDict<string, StationBPSlotStructModel> slots

## StationBPSlotStructModel : 
  string slotId
  BuildingData.RoomType roomId
  GridPosition offset
  GridPosition size
  bool isUnlocked
  bool isSelected

## BuildingBuffedValueView : MonoBehaviour
  string content
  Color bkgColor
  Color textColor

## BuildingCharAvatar : MonoBehaviour, ITimeWatcher
  CharManpowerState state
  Sprite icon
  Action<BuildingCharModel, object> onAvatarClicked
  Action<object> onLockClicked

## BuildingCharMPStateBar : MonoBehaviour
  CharManpowerState state
  int displayCurAp
  int displayMaxAp
  CharManpowerState state
  Sprite icon

## Model : 
  CharManpowerState state
  int displayCurAp
  int displayMaxAp

## BuildingStationBPSlot : MonoBehaviour
  Color light
  Color normal
  Color lockedLight
  Color lockedNormal

## BuildingUIFloatRoomDetailView : DataBinder<FloatRoomDetailViewProperty>
  Action requestToClose

## BuildingUIFloatStationItem : MonoBehaviour
  Action<BuildingCharModel, int> onItemClicked
  Action<BuildingCharModel, int> onRemoveClicked

## BuildingUIFloatStationView : DataBinder<FloatStationViewProperty>
  Action requestToClose

## BuildingUIResItem : MonoBehaviour
  bool disableTextDelay
  int startCount
  int targetCount

## BuildingUIResMenu : PageSingleComponent
  int gold
  int diamond
  int dmdShd
  int socialPt
  int miscItems
  Sprite icon
  Vector2 size
  BuildingData.RoomType roomId
  ItemType itemType
  Vector2 anchorOnScreen
  int count
  string slotId
  BuildingData.RoomType roomId
  Vector2 anchorOnScreen
  string itemId
  ItemType itemType
  int count

## SyncSettleInfo : 
  BuildingData.RoomType roomId
  ItemType itemType
  Vector2 anchorOnScreen
  int count

## AsyncSettleInfo : 
  string slotId
  BuildingData.RoomType roomId
  Vector2 anchorOnScreen
  string itemId
  ItemType itemType
  int count

## BuildingUIRoomTab : MonoBehaviour
  string slotId
  int index
  int level
  bool isSelected
  int maxLevel
  bool hasTrackPoint
  Action<string> onRoomSelected

## BuildingUIRoomTabGroup : DataBinder<GroupProperty> where GroupModel : IBasicRoomGroupModel where GroupProperty : DynamicBindProperty<GroupProperty, GroupModel>
  Action<string> onRoomSelected

## BuildingUIFilterItem : MonoBehaviour
  Action<FilterEnum> onFilterClicked

## BuildingUISortItem : MonoBehaviour where SortEnum : IComparable
  Action<SortEnum> onSortClicked

## UIArchiConditionItem : MonoBehaviour
  string name
  BuildingData.RoomType roomType
  int level
  int count

## ConditionContentItem : 
  string name
  BuildingData.RoomType roomType
  int level
  int count

## RoomPanelInfo : 
  BuildingData.RoomData roomData
  RoomLevelConditionCheckingResult checkingResult
  int currentCount

## UIArchitectureLevelupView : UIArchitectureBaseView<UIArchitectureLevelupView.Argument>
  RoomSlotModel roomSlotModel
  BuildingData.RoomType roomType
  Sprite icon
  Sprite bg
  int level0
  int level1
  List<LevelInfoItem> infoItemList
  List<ArchiCostItemModel> costList
  bool levelupInValid
  UIArchiConditionItem.ConditionContentItem[] conditionContent

## LevelInfoItem : 
  LevelInfoType type
  string val0
  string val1
  bool single

## UIBuildingLevelPanelAdapter : SimpleLayoutAdapter
  int level
  int maxLevel
  Color color
  Color emptyColor

## UIFurnitureIconSpriteHub : MonoISpriteHub
  string furnitureId
  Sprite icon

## UILevelInfoItemView : MonoBehaviour
  LevelInfoType type
  Sprite icon
  bool single
  Color color
  List<LevelInfoTypeConfig> levelInfoTypeConfig

## LevelInfoTypeConfig : 
  LevelInfoType type
  Sprite icon
  bool single
  Color color

## BuildingCommonPage : StateEnginePage, IBuildingPage
  Action eventPlayerDataChanged

## MeetingViewModel : 
  int creditFromAssist
  int creditFromAssistMax
  int creditFromDorm
  int creditFromDormMax
  int creditFromVisit
  int creditFromVisitMax
  int totalCredit
  int totalCreditMax
  bool hasCreditSettled
  int visitNum
  RoomSlotModel slotModel

## VisitAlertViewModel : 
  int socialPtAdded
  int socialPt
  string desc

## HiringSnapshot : IHotfixable
  bool isHiring
  float speed
  DateTime lastUpdateTime
  long totalRequirePoint
  double processPoint
  int refreshCount
  int refreshCountLimit
  bool isBuffed
  bool isEmpty

## PowerRoomViewModel : IHotfixable
  int totalPower
  int providedPower
  float baseBuffSpeed
  float specBuffSpeed

## ControlRoomViewModel : IHotfixable
  long mpReducePerHour
  long mpCostPerHourBase
  long mpCostPerHourBuff

## BuildingLaborAccelState : PopupFloatState
  bool hasResult
  int resultCount
  string resultName
  string resultUnit

## AccelResultOptions : 
  bool hasResult
  int resultCount
  string resultName
  string resultUnit

## LaborAccelStateBean : IStateBean
  string descTitle
  int accelTimeUnit
  int laborCostUnit
  double remainPoint
  DateTime lastUpdateTime
  double speed
  double curRemainPoint
  int maxAccelCount
  Action eventOnCountInvalid

## BuildingManufactPage : BuildingCommonPage
  string roomSlotId

## MFormulaSortFilterStateBean : IStateBean
  FormulaOrderStruct orderStruct
  bool isConfirmed

## MFormulaStateBean : IStateBean
  ManufactInfoViewModel curInfo
  BuildingData.ManufactFormula selectedFormula
  bool isConfirmed
  Input input
  Output output
  MFormulaGroupProperty formulaGroupProperty

## MFormulaViewModel : 
  int formulaSortId
  BuildingData.ManufactFormula formula
  List<FormulaCostStruct> costs
  BuildingData.FormulaItemType formulaType
  bool isUnlocked
  ItemRarity rarity
  long costTime
  int availableCount
  string name
  string unlockCond
  bool isAccelerated

## FormulaCostStruct : 
  string itemId
  ItemType itemType
  int costCount
  int reserveCount

## FormulaOrderStruct : 
  int filterMask
  FormulaSortType sortType
  BuildingData.FormulaItemType formulaType
  bool isInverse

## MFormulaGroupViewModel : 
  List<MFormulaViewModel> rawFormulas
  string selectedItemId

## MHomeStateBean : IStateBean
  MRoomGroupViewProperty roomGroupProperty
  MRoomViewPropety selectedRoomProperty
  MItemInputSlotProperty[] inputSlotProperties

## MRoomViewModel : IBasicRoomModel
  BasicRoomInfoModel basicInfo
  ManufactInfoViewModel info
  MRoomEditStruct initEditInfo
  MRoomEditStruct editInfo

## MRoomGroupViewModel : IBasicRoomGroupModel
  int maxManufactNum
  ListDict<string, MRoomViewModel> rooms
  string selectedSlotId

## MItemInputSlotStruct : 
  string itemId
  ItemType itemType
  int itemCount
  int itemCost
  int itemReserve

## ManufactSnapshot : IHotfixable
  DateTime time
  string formulaId
  int weight
  int outputSolutionCount
  int remainSolutionCount
  int nextRemainSecs
  double baseRemainPoint
  int totalRemainSecs
  long saveTime
  ShallowEqualArray<ItemBundle> costs

## ManufactInfoViewModel : IHotfixable
  ManufactSnapshot serviceSnapshot
  float baseSpeed
  float buffSpeed
  float baseBuffSpeed
  float specBuffSpeed
  float secPerItem
  int maxProductWeight
  long mpCostPerHourBase
  long mpCostPerHourBaseBuff
  long mpCostPerHourSpecBuff
  BuildingData.ManufactFormula formula
  bool isWorking
  int maxChars
  int finalMaxChars
  BuildingCharModel[] chars
  int stationedNum

## BuildingManufactFormulaCategoryTab : DataBinder<MFormulaGroupProperty>
  Action<BuildingData.FormulaItemType> onItemTypeClicked

## BuildingManufactFormulaItemView : MonoBehaviour
  Action<MFormulaViewModel> onFormulaClicked

## BuildingManufactFormulaList : DataBinder<MFormulaGroupProperty>
  Action<MFormulaViewModel> onFormulaClicked

## BuildingManufactFormulaSortBar : DataBinder<MFormulaGroupProperty>
  Action<FormulaSortType> onSortClicked

## BuildingManufactListAdapter : LoopScrollAdapter<BuildingManufactListAdapter.ViewHolder, MFormulaViewModel>
  BuildingManufactFormulaItemView itemView
  string selectedItemId
  Action<MFormulaViewModel> onFormulaClicked

## BuildingManufactOutputSlot : DataBinder<MRoomViewPropety>
  Action onEditFormula

## BuildingManufactRemainCountView : DataBinder<MRoomViewPropety>
  Action<int> onChangeCount
  Action onConfirmChange
  Action onCancelChange
  Listener listeners

## BuildingManufactStationView : DataBinder<MRoomViewPropety>, BuildingCharAvatarStationAdatper.IProvider
  Action<BuildingCharModel, int> onCharClicked

## BuildingMeetingPage : BuildingCommonPage
  IMeetingSession session
  string title
  int level
  int maxLevel

## ClueProducerInfo : 
  Sprite icon
  int level
  int evolve

## TransferResult : 
  long endTime
  int visitNumber
  int socialPoint
  List<IPeer> visitors

## MeetingClueAdapter : LoopScrollAdapter<MeetingClueAdapter.ViewHolder, IMeetingClue>
  int overrideBonus

## MeetingFloatStateCornerView : MonoBehaviour
  Image characterImage
  Image emptyImage

## CharacterView : 
  Image characterImage
  Image emptyImage

## MeetingPeerClueOwnView : MonoBehaviour
  int _category
  Text _numberLabel
  GameObject _ownPanel
  GameObject _canHelpPanel
  GameObject _canNotHelpPanel

## MeetingTransferStateView : MonoBehaviour
  Action expired

## BuildingManufactGainNotify : UINotifyView<BuildingManufactGainNotify.Param>
  string itemId
  int itemCount

## BuildingTwoContentNotify : UINotifyView<BuildingTwoContentNotify.Param>
  string mainContent
  string subContent

## BuildingWorkshopBySideNotify : UINotifyView<BuildingWorkshopBySideNotify.Param>
  string itemId
  int itemCount

## OverviewStoreyViewModel : 
  string id
  bool isUnlocked
  string name
  int requireLevel
  int yOffset
  int xMin
  int xMax
  bool isUnderground

## OverviewViewModel : 
  GridPosition totalSize
  OverviewRoomViewMode controlRoom
  List<OverviewRoomViewMode> rooms
  List<OverviewStoreyViewModel> storeys

## RoomInfoViewModel : 
  BuildingData.RoomType type
  int count
  int maxCount
  ListDict<BuildingData.RoomType, Item> roomInfos

## BuildingOverviewComponent : MonoBehaviour
  BuildingData.RoomType type
  Sprite sprite
  bool isEarth
  bool isUnderground
  Rect rect

## RoomLevelConditionCheckingResult : 
  BuildingData.RoomUnlockCond.CondItem condition
  int currentRoomCount
  int currentRoomLevel
  bool passed
  Reason[] reasons
  string roomName
  int level

## BuildCostCheckingResult : 
  bool isLabor
  string itemId
  int currentCount
  int targetCount
  bool passed
  Reason[] reasons

## CleanConditionCheckingResult : 
  Reason reason
  int targetLevel

## LevelConditionCheckItem : 
  RoomSlotModel roomSlotModel
  int fakeLevel
  BuildingData.RoomType fakeRoomType

## BuildingShopPage : BuildingCommonPage
  string roomSlotId

## SFormulaSortFilterStateBean : IStateBean
  FormulaOrderStruct orderStruct
  bool isConfirmed

## SFormulaStateBean : IStateBean
  ShopStockInfoViewModel curInfo
  BuildingData.ShopFormula selectedFormula
  bool isConfirmed
  Input input
  Output output
  SFormulaGroupProperty formulaGroupProperty

## SFormulaViewModel : 
  int formulaSortId
  BuildingData.ShopFormula formula
  string itemId
  ItemType itemType
  ItemBundle gainItem
  bool isUnlocked
  ItemRarity rarity
  long costTime
  int availableCount
  string name
  string unlockCond
  bool isAccelerated

## SFormulaGroupViewModel : 
  List<SFormulaViewModel> rawFormulas
  string selectedFormulaId

## SHomeStateBean : IStateBean
  SRoomGroupViewProperty roomGroupProperty
  SRoomViewProperty selectedRoomProperty
  SStockViewProperty[] stockSlotProperties

## SStockViewModel : 
  ShopStockInfoViewModel info
  SRoomEditStruct initEditInfo
  SRoomEditStruct editInfo

## SRoomViewModel : IBasicRoomModel
  BasicRoomInfoModel basicInfo
  ShopInfoViewModel shopInfo

## SRoomGroupViewModel : IBasicRoomGroupModel
  int maxShopRoom
  ListDict<string, SRoomViewModel> rooms
  string selectedSlotId

## ShopStockSnapshot : 
  DateTime time
  string itemId
  string formulaId
  int remainCount
  double baseRemainPoint
  int additionOutput
  int nextRemainSecs
  int totalRemainSecs

## ShopStockInfoViewModel : 
  ShopStockSnapshot serviceSnapshot
  int index
  float buffSpeed
  float baseSpeed
  bool isWorking
  BuildingCharModel character
  BuildingData.ShopFormula formula
  int maxCount
  bool isUnlocked
  int secsPerItem

## ShopInfoViewModel : 
  ListDict<ItemType, int> serverOutput
  int capacity
  int unlockStockNum
  List<ShopStockInfoViewModel> stocks

## BuildingShopFormulaAdapter : LoopScrollAdapter<BuildingShopFormulaAdapter.ViewHolder, SFormulaViewModel>
  BuildingShopFormulaItemView itemView
  Action<SFormulaViewModel> onFormulaClicked

## BuildingShopFormulaCategoryTab : DataBinder<SFormulaGroupProperty>
  Action<BuildingData.FormulaItemType> onItemTypeClicked

## BuildingShopFormulaItemView : MonoBehaviour
  Action<SFormulaViewModel> onFormulaClicked

## BuildingShopFormulaList : DataBinder<SFormulaGroupProperty>
  Action<SFormulaViewModel> onFormulaClicked

## BuildingShopFormulaSortBar : DataBinder<SFormulaGroupProperty>
  Action<FormulaSortType> onSortClicked

## BuildingShopStockView : DataBinder<SStockViewProperty>, ITimeWatcher
  Action<SStockViewModel, int> onCountChanged
  Action<SStockViewModel> onFormulaClicked
  Action<SStockViewModel> onCharClicked
  Action<SStockViewModel> onEditConfirmed
  Action<SStockViewModel> onEditCancelled
  Listeners listeners

## StationHomeStateBean : IStateBean
  StationBPProperty layoutViewProperty
  ListDict<string, StationStoreyViewProperty> storeyProperties
  StationRoomProperty selectedRoomProperty

## StationStoreyViewModel : 
  string id
  string name
  int yOffset
  string selectedSlotId
  List<StationRoomStructModel> rooms

## StationRoomStructModel : 
  string slotId
  BuildingData.RoomType roomId
  string name
  int level
  int stationedCharNum
  int maxStationedCharNum
  int finalMaxCharNum
  string storeyId
  bool isUpgrading
  bool isRemoveMode
  ShallowEqualArray<StationCharStructModel> chars

## StationCharStructModel : 
  BuildingCharModel charModel
  StationedCharState state
  bool isUnlocked
  bool willBeUnlocked
  bool isRemovable
  string roomSlotId
  int index

## StationCharSlotPosition : 
  string roomSlotId
  int index

## BuildingSMRoomInfoItem : MonoBehaviour
  CharManpowerState state
  Sprite icon

## StateConfig : 
  CharManpowerState state
  Sprite icon

## BuildingSMRoomInfoList : DataBinder<StationRoomProperty>
  List<BuildingSMRoomInfoItem> activeItems

## BuildingSMRoomItemView : MonoBehaviour
  BuildingData.RoomType roomId
  Color color
  Sprite bkgImg
  Action<StationRoomStructModel> onRoomClicked
  Action<BuildingCharModel, object> onCharClicked
  Action<StationRoomStructModel> onRemoveAllClicked

## BuildingSMStoreyView : DataBinder<StationStoreyViewProperty>
  Action<StationRoomStructModel> onRoomClicked
  Action<BuildingCharModel, object> onCharClicked
  Action<StationRoomStructModel> onRemoveAllClicked
  Listeners listeners

## BuildingStationSelectPage : BuildingCommonPage
  string slotId
  int index

## StationSelectSortFilterStateBean : IStateBean
  StationOrderStruct orderStruct
  bool isConfirmed

## StationSelectStateBean : IStateBean, IHotfixable
  int maxSelectCount
  List<int> selectedChars
  string slotId
  int index
  Input stateInput
  StationCharGroupProperty charGroupProperty
  StationBPProperty blueprintProperty

## StationCharViewModel : 
  string name
  string iconId
  BuildingData.RoomType roomType
  BuildingData.BuffCategory category
  Color color
  Color textColor
  BuildingCharModel buildingChar
  CharacterCardViewModel commonChar
  BuildingData.RoomType roomType
  BuildingData.RoomCategory roomCategory
  long apForSort
  StationedCharState stateForSort
  List<BuffStruct> unlockedBuffs

## BuildingStationSelectCharAdapter : LoopScrollAdapter<BuildingStationSelectCharAdapter.ViewHolder, StationCharViewModel>
  BuildingStationSelectCharItemView view
  Action<StationCharViewModel> onCharClicked
  int maxSelectCount

## BuildingStationSelectCharCard : MonoBehaviour, ITimeWatcher
  BuildingData.RoomType type
  Sprite icon
  Color color
  Action<int> onCardClicked

## BuildingStationSelectCharItemView : MonoBehaviour
  Action<StationCharViewModel> onCharClicked

## BuildingStationSelectCharList : DataBinder<StationCharGroupProperty>
  Action<StationCharViewModel> onCharClicked

## BuildingStationSelectSortBar : DataBinder<StationCharGroupProperty>
  Action<CharSortType> onSortClicked

## BuildingToDoNotifyModel : IHotfixable
  List<string> slots
  int count

## BuildingToDoNotifyItemModel : IHotfixable
  BuildingToDoType type
  string desc
  int count
  string clickDesc
  List<string> slots

## BuildingToDoNotifyItemView : MonoBehaviour
  BuildingToDoType type
  Sprite icon

## BuildingTradingPage : BuildingCommonPage
  string roomSlotId

## TradingInfoViewStruct : IHotfixable
  string roomSlotId
  int maxChars
  int finalMaxChars
  BuildingCharModel[] chars
  long mpCostPerHourBase
  long mpCostPerHourBuffSpec
  long mpCostPerHourBuffBase
  float orderSpeedBuffBase
  float orderSpeedBuffSpec
  BuildingData.OrderType preferredType
  bool isStrategyEnabled
  int orderNumLimit
  ListDict<long, TradingOrderStruct> orders
  long nextOrder
  TradingGainOrderSnapshot gainSnapshot

## TradingGainOrderSnapshot : IHotfixable
  DateTime lastUpdateTime
  double processPoint
  double speed
  int totalPoint
  bool isWorking

## TradingOrderStruct : IHotfixable
  long orderId
  BuildingData.OrderType type
  ShallowEqualArray<TradingOrderRequireStruct> requires
  TradingOrderReward rewardType
  int rewardCount
  long sortId
  bool isComplete

## TradingOrderRequireStruct : 
  string itemId
  ItemType itemType
  int requireCount
  int reserve

## TradingNegoiationBean : IStateBean
  string roomSlotId
  BuildingData.OrderType orderType

## TRoomViewModel : IBasicRoomModel
  BasicRoomInfoModel basicInfo
  TradingInfoViewStruct info

## TRoomGroupViewModel : IBasicRoomGroupModel
  int maxTradingRoom
  ListDict<string, TRoomViewModel> rooms
  string selectedSlotId

## TOrderSlotStruct : 
  OrderStatus status
  long orderId
  int slotIndex

## TOrderSlotGroupViewModel : IHotfixable
  TradingInfoViewStruct info
  int nonEmptySlotCount
  bool hasGainingSlot
  List<TOrderSlotStruct> slots

## TradingStateBean : IStateBean
  TRoomGroupViewProperty roomsProp
  TRoomViewProperty selectedRoomProp
  TOrderSlotGroupViewProperty orderSlotProp

## BuildingTradingDeliveryController : PageSingleComponent
  BuildingTradingOrderView orderView
  TradingOrderStruct orderStruct

## BuildingTradingGainedOrderView : MonoBehaviour
  TradingOrderReward reward
  Sprite icon
  Action onFinishClicked
  Action onDeleteClicked

## BuildingTradingGainingOrderView : MonoBehaviour
  Action onLaborAccelClicked

## BuildingTradingOrderList : DataBinder<TOrderSlotGroupViewProperty>, IHotfixable
  Action<long> onDeleteClicked
  Action<long> onFinishClicked
  Action onLaborAccelClicked
  OrderViewAction action
  BuildingTradingOrderView view
  int dataIndex
  int nonEmptySlotCount
  bool hasGainingSlot
  List<TOrderSlotStruct> slots
  TradingInfoViewStruct info

## BuildingTradingOrderView : MonoBehaviour
  Action<long> onDeleteClicked
  Action<long> onFinishClicked
  Action onLaborAccelClicked

## BuildingTradingStationView : DataBinder<TRoomViewProperty>, BuildingCharAvatarStationAdatper.IProvider
  Action<BuildingCharModel, int> onCharClicked

## BuildingTradingStatusView : DataBinder<TRoomViewProperty>
  TradingOrderViewType viewType
  Sprite image

## BuildingTrainingStateBean : MonoBehaviour, IStateBean, IDataBindWrapper
  SkillGroupViewProperty skillProperty
  int traineeInstId
  int selectSkillIndex
  int targetSkillLevel
  int targetSpecialLevel

## LevelUpSnapshot : IHotfixable
  bool isTraining
  int charInstId
  int skillIndex
  float speed
  DateTime lastUpdateTime
  long totalRequirePoint
  double processPoint
  bool isBuffed

## BuildingTrainSelectIndexState : State
  BuildingModel buildingModel

## TrainSelectStateBean : IStateBean
  int traineeInstId
  int trainerInstId
  string slotId

## BuildingWorkshopModel : IWorkshopSession
  BasicRoomInfoModel roomInfo

## WorkshopFormulaSorter : 
  WorkshopSortingOption option
  SortingMethod method
  Func<T, T, int> func

## BuildingWorkshopHomeState : State
  Transform container
  float scale
  UIItemCard card
  Text name
  Text storage
  GameObject emptyHint

## FormulaItemGroup : 
  Transform container
  float scale
  UIItemCard card
  Text name
  Text storage
  GameObject emptyHint

## MockWorkshopSession : MonoBehaviour, IWorkshopSession
  string _id
  int _count
  int _storage
  int _filterIndex
  string _unlockMessage
  int _apCost
  string id
  int count

## Formula : IWorkshopFormula
  string _id
  int _count
  int _storage
  int _filterIndex
  string _unlockMessage
  int _apCost

## ItemBundle : 
  string id
  int count

## WorkshopFormulaView : MonoBehaviour
  IWorkshopFormula formula

## WorkshopSortPanel : MonoBehaviour
  List<FilterButtonItem> filters
  WorkshopFormulaSorter.WorkshopSortingOption option
  WorkshopSortButton button
  FilterType filterType
  int param
  WorkshopFilterButton button

## PlayResult : 
  CharWordData data
  float length

## GameFlowController : SingletonMonoBehaviour<GameFlowController>, ISingletonNotAutoCreate
  ISceneParam param
  bool unloadAllAssets
  bool reloadAllAssets
  bool stopMusic
  bool notUseEmptySceneToClear
  Mode mode
  UIMaskType maskType

## RedirectBundle : 
  string sceneName
  GameFlowController.Options options

## SceneBundle : 
  string fromScene
  string toScene
  ISceneParam param

## CameraGyroController : MonoBehaviour
  Transform targetCamera
  Transform cameraAim
  Vector2 cameraOffset
  Vector2 aimOffset
  Vector2 maxAttitude
  float maxSpeedFactor
  float minSpeedFactor
  float maxSpeedDistance
  float minSpeedDistance

## GyroControllerTest : MonoBehaviour
  Transform targetCamera
  Transform cameraAim
  Vector2 cameraOffset
  Vector2 aimOffset
  float speedFactor

## GyroControllerTest2 : MonoBehaviour
  Transform targetCamera
  Transform cameraAim
  Vector2 cameraOffset
  Vector2 aimOffset
  float maxSpeedFactor
  float minSpeedFactor
  float maxSpeedDistance
  float minSpeedDistance

## GachaDB : ConstTable<GachaData, GachaDB>
  string id
  bool isAvailable

## BasicPoolInfo : 
  string id
  bool isAvailable

## ElementInfo : 
  float damageScale
  float fireScale
  float waterScale
  float windScale
  float earthScale

## BuffData : 
  AttributeModifierData attributes
  string buffKey
  bool loadFromDB
  string templateKey
  bool disableOverride
  string overrideKey
  OverrideType overrideType
  int maxStackCnt
  string overrideEffectKey
  string audioSignal
  string durationKey
  LifeType lifeTimeType
  LifeType triggerLifeType
  float lifeTime
  int priority
  int triggerCnt
  float triggerInterval
  bool waitFirstTriggerInterval
  bool stripBlackboardParamsWithBuffKey
  List<Blackboard.DataPair> blackboard

## SkillData : 
  string prefabKey
  int priority
  float cooldown
  float initCooldown
  Blackboard blackboard

## GachaDemo : MonoBehaviour
  string characterId
  EvolvePhase evolvePhase
  bool isNew
  bool isSkippable

## GachaController : PersistentSingleton<GachaController>
  string charId
  EvolvePhase evolvePhase
  string skinId
  bool isNew
  bool isAutoExit
  bool isSkippable
  GameObject disableTarget
  CharacterConfig characterConfig
  ItemBundle[] itemGet
  CharacterConfig characterConfig
  ItemBundle[] itemGet
  int newCnt

## CharacterConfig : 
  string charId
  EvolvePhase evolvePhase
  string skinId

## GachaSceneParam : ISceneParam
  GachaController.PlayMode playMode
  GachaController.Input input
  string nextScene
  GameFlowController.Options nextOptions
  Action<GachaController.Output> endCb

## PanelCharacterInfo : MonoBehaviour
  ProfessionCategory profession
  Sprite sprite

## BagLightController : MonoBehaviour
  float minProgress
  GameObject gameObject
  string audioSignal

## FolderMultiSkin : MonoBehaviour
  string skin
  string slot
  string attachment

## GachaPhase0 : GachaController.GachaPhase
  float zipperSpeed
  float zipperAutoThreshold
  float zipperAutoFlyCriteria
  float zipperAutoFlyAttenuate
  float zipperHoldStillTime
  FxDelay zipperGuide
  GameObject[] zipperEffects
  float probToShowLowerBagLightWhenTopRarity
  GameObject[] gachaEffects
  BagLightController[] bagLights
  Transform folderContainer
  SkeletonAnimation folderSpine
  FolderMultiSkin folderSkin
  float folderEndTime
  Action<PointerEventData> onDrag
  Action<PointerEventData> onBeginDrag
  Action<PointerEventData> onEndDrag
  PeriodicTimer zipperHoldStillTimer

## MsgBundle : IMsgBundle
  T data

## RequestResult : 
  Func<bool> beforeRequest
  MockMeta mockMeta

## WebHttpResult : 
  Action<WebHttpResponse> response
  Func<string, string, bool> beforeRequest
  Action onCanceled

## LoginInfo : 
  string uid
  string secret

## HotUpdateInfo : 
  string name
  string hash
  string md5
  long totalSize
  ABInfo fullPack
  string versionId
  List<ABInfo> abInfos

## ABInfo : 
  string name
  string hash
  string md5
  long totalSize

## PersistentResInfo : 
  List<HotUpdateInfo.ABInfo> abInfos

## BundleInfo : 
  string name
  bool isCacheable
  int sccIndex

## BundleMeta : 
  string name
  string hash
  string md5
  bool isCacheable
  int sccIndex

## AssetToBundleMeta : 
  string assetName
  string bundleName

## CommonSettingData : 
  float seVolume
  float musicVolume
  float voiceVolumn
  bool seFlag
  bool musicFlag
  bool voiceFlag
  bool limitFpsFlag
  bool bloomFlag

## PersonalSettingData : 
  bool rollbackToDefaultSpeedAfterSlowMotion
  bool leaveBuildingHintFlag
  bool manufactureAnnounceFlag
  bool tradingAnnounceFlag
  bool buildingCharTired

## ServiceAlertStruct : 
  string text
  string[] param

## GridPosition : IComparable<GridPosition>
  int row
  int col

## ActivityItemModel : ISharedItemModel, IGachaResultHolder
  ItemType type
  string id
  GachaResult charGet
  int count

## GetOpenServerCheckInRewardRequest : 
  int index

## GetOpenServerCheckInRewardResponse : PlayerDeltaResponse
  ActivityItemModel reward

## GetChainLogInRewardRequest : 
  int index

## GetChainLogInRewardResponse : PlayerDeltaResponse
  ActivityItemModel reward

## GetChainLogInFinalRewardsResponse : PlayerDeltaResponse
  List<ActivityItemModel> rewards

## PlayerDeltaResponse : 
  PlayerDataDelta playerDataDelta

## BuildingUpgradeRoomRequest : BuildingRequest
  string roomSlotId
  int targetLevel

## BuildingUpgradeRoomResponse : PlayerDeltaResponse
  int result

## BuildingDegradeRoomRequest : BuildingRequest
  string roomSlotId
  int targetLevel

## BuildingCleanRoomRequest : BuildingRequest
  string roomSlotId

## BuildingCleanRoomResponse : PlayerDeltaResponse
  int result

## BuildingBuildRoomRequest : BuildingRequest
  string roomSlotId
  string roomId

## BuildingBuildRoomResponse : PlayerDeltaResponse, IAlertResponse
  int result
  List<ServiceAlertStruct> alert

## BuildingUpgradeCompleteRoomRequest : BuildingRequest
  string roomSlotId
  int targetLevel

## BuildingUpgradeCompleteRoomResponse : PlayerDeltaResponse, IAlertResponse
  int result
  List<ServiceAlertStruct> alert

## BuildingDIYChangeDIYSolutionRequest : BuildingRequest
  string roomSlotId
  PlayerBuildingDIYSolution solution

## BuildingDIYSavePresetSolutionRequest : BuildingRequest
  int solutionId
  string name
  PlayerBuildingDIYSolution solution
  string thumbnail

## BuildingDIYSavePresetSolutionResponse : PlayerDeltaResponse
  int result

## BuildingDIYRenamePresetSolutionRequest : BuildingRequest
  int solutionId
  string name

## BuildingDIYRenamePresetSolutionResponse : PlayerDeltaResponse
  int result

## BuildingDIYGetPresetThumbnailUrlRequest : BuildingRequest
  List<int> solutionId

## BuildingDIYGetPresetThumbnailUrlResponse : 
  List<string> url

## BuildingGetFurnitureGoodListResponse : PlayerDeltaResponse, IShopGetResposne
  string goodId
  string furniId
  string displayName
  FurnShopDisplayPlace shopDisplay
  int priceCoin
  int priceDia
  int discount
  int originPriceCoin
  int originPriceDia
  long begin
  long end
  int count
  List<Good> goods

## Good : 
  List<ShopItemModel> items
  List<ShopItemModel> checkInItems

## BuildingBuyFurnitureGoodRequest : BuildingRequest
  string goodId
  int buyCount
  CostType costType

## BuildingSettleManufactRequest : BuildingRequest
  List<string> roomSlotIdList

## BuildingSettleSaleRequest : BuildingRequest
  List<string> roomSlotIdList

## BuildingChangeManufactRequest : BuildingRequest
  string roomSlotId
  string targetFormulaId
  int solutionCount

## BuildingChangeManufactResponse : PlayerDeltaResponse
  bool change

## BuildingChangeShopRequest : BuildingRequest
  string roomSlotId
  int stockIndex
  string targetFormulaId
  int solutionCount

## BuildingChangeShopResponse : PlayerDeltaResponse
  bool change

## BuildingAssignCharRequest : BuildingRequest
  string roomSlotId
  List<int> charInstIdList

## CharBuildIncIntimacyRequest : BuildingRequest
  int charInstId

## CharBuildIncAssistIntimacyRequest : BuildingRequest
  int charInstId

## BuildingWorkshopSynthesisRequest : BuildingRequest
  string formulaId
  int times

## BuildingWorkshopSynthesisResponse : PlayerDeltaResponse
  ItemBundle results
  List<ItemBundle> additional

## BuildingWorkshopDecompositionRequest : BuildingRequest
  string furniId
  int times

## BuildingWorkshopDecompositionResponse : PlayerDeltaResponse
  ItemBundle results

## BuildingTradingDeliveryRequest : 
  string slotId
  long orderId

## BuildingTradingChangeStrategyRequest : 
  string slotId
  BuildingData.OrderType strategy

## BuildingTradingDeleteOrderRequest : 
  string slotId
  long orderId

## BuildingTradingLaborAccelRequest : 
  string slotId
  long orderId
  int cost

## BuildingTradingLaborAccelResponse : PlayerDeltaResponse
  int result

## BuildingManufactLaborAccelRequest : 
  string slotId
  int cost

## BuildingBuyLaborRequest : 
  int count
  long ts

## BuildingManuFactureItemReport : 
  int count
  int time

## BuildingTradingReport : 
  int count
  int order

## BuildingDormReport : 
  int comf
  int max

## BuildingDailyReport : 
  long ts
  Dictionary<string, BuildingManuFactureItemReport> manufacture
  Dictionary<string, BuildingTradingReport> trading
  Dictionary<string, BuildingDormReport> dormitory

## BuildingAssistReportResponse : 
  List<BuildingDailyReport> reports

## BuildingSetAssistRequest : 
  int type
  int charInstId

## BuildingMeetingClueDeleteOwnClueRequest : BuildingRequest
  string clueId

## BuildingMeetingClueDeleteReceiveClueRequest : BuildingRequest
  string clueId

## BuildingMeetingCluePutClueToTheBoardRequest : BuildingRequest
  string clueId

## BuildingMeetingClueSendClueRequest : BuildingRequest
  string friendId
  string clueId

## BuildingMeetingClueGetMeetingRoomRewardRequest : BuildingRequest
  List<int> type

## BuildingMeetingClueGetMeetingRoomRewardResponse : PlayerDeltaResponse
  List<ItemBundle> rewards

## BuildingMeetingClueUpdateWaitingClueResponse : PlayerDeltaResponse
  string id
  string type
  int number
  int uid
  int nickNum
  string name
  List<PlayerBuildingMeetingClueChar> chars
  int inUse
  long ts
  List<Clue> box

## Clue : 
  string id
  string type
  int number
  int uid
  int nickNum
  string name
  List<PlayerBuildingMeetingClueChar> chars
  int inUse
  long ts

## BuildingMeetingClueReceiveClueToStockRequest : BuildingRequest
  List<string> clues

## BuildingMeetingClueTakeClueFromBoardRequest : BuildingRequest
  string type

## BuildingMeetingClueGetInfoShareVisitorsResponse : 
  int num

## BuildingMeetingClueReceiveInfoShareRewardResponse : PlayerDeltaResponse
  string uid
  string nickName
  int nickNumber
  int level
  string alias
  long ts
  List<VisitorInfo> list

## VisitorInfo : 
  string uid
  string nickName
  string nickNumber
  string secretary
  string secretarySkinId
  int level
  long ts

## BuildingGetRecentVisitorsResponse : 
  string uid
  string nickName
  int nickNumber
  string secretary
  string secretarySkinId
  int level
  long ts
  List<Visitor> visitors

## Visitor : 
  string uid
  string nickName
  int nickNumber
  string secretary
  string secretarySkinId
  int level
  long ts

## CampaignConfirmBreakRewardRequest : 
  string stageId
  int index

## CampaignConfirmBreakRewardResponse : PlayerDeltaResponse
  ItemType type
  string id
  GachaResult charGet
  int count
  int feeAdd
  List<RewardItem> items

## RewardItem : ISharedItemModel, IGachaResultHolder
  ItemType type
  string id
  GachaResult charGet
  int count

## CampaignFinishBattleResponse : CommonFinishBattleResponse
  int currentFeeBefore
  int currentFeeAfter

## ChangeCharSkinRequest : 
  int charInstId
  string skinId

## EvolveCharRequest : 
  int charInstId
  EvolvePhase destEvolvePhase

## BattleData : 
  string isCheat
  long completeTime
  BattleLogger.BattleStats stats

## RewardModel : ISharedItemModel, IGachaResultHolder
  string id
  ItemType type
  int count
  GachaResult charGet

## DeleteFriendRequest : 
  string friendId

## SendFriendRequest : 
  string friendId
  int afterBattle

## SendFriendResponse : PlayerDeltaResponse
  int result

## ProcessFriendRequest : 
  string friendId
  FriendDealEnum action

## ProcessFriendResponse : PlayerDeltaResponse
  int result

## GetSortListInfoRequest : 
  FriendServiceType type
  List<string> sortKeyList
  Dictionary<string, string> param

## GetSortListInfoResponse : PlayerDeltaResponse
  List<FriendSortViewModel> result

## SearchPlayerRequest : 
  List<string> idList

## SearchPlayerResponse : 
  List<FriendData> players
  List<FriendStatus> friendStatusList
  List<string> resultIdList

## GetFriendListRequest : 
  List<string> idList

## GetFriendListResponse : PlayerDeltaResponse
  List<FriendDataWithNameCard> friends
  List<string> friendAlias
  List<string> resultIdList

## GetFriendRequestListRequest : 
  List<string> idList

## GetFriendRequestResponse : PlayerDeltaResponse
  List<FriendData> requestList
  List<string> resultIdList

## SetAssistCharListRequest : 
  List<AssistCharList> assistCharList

## SetFriendAliasRequest : 
  string friendId
  string alias

## SetAssistAliasResponse : 
  int result

## CancelNormalGachaRequest : 
  int slotId

## CancelNormalGachaResponse : PlayerDeltaResponse
  int result

## RefreshTagsGachaRequest : 
  int slotId

## BuyRecruitSlotRequest : 
  int slotId

## NormalGachaRequest : 
  int slotId
  int[] tagList
  int specialTagId
  long duration

## FinishNormalGachaRequest : 
  int slotId

## FinishNormalGachaResponse : PlayerDeltaResponse
  int result
  GachaResult charGet

## BoostNormalGachaRequest : 
  int slotId
  int buy

## BoostNormalGachaResponse : PlayerDeltaResponse
  int result

## GachaResult : 
  int charInstId
  string charId
  bool isNew
  ItemBundle[] itemGet

## AdvancedGachaRequest : 
  string poolId
  bool useTkt

## AdvancedGachaResponse : PlayerDeltaResponse, IGachaResultHolder
  GachaResult charGet

## TenAdvancedGachaRequest : 
  string poolId
  bool useTkt

## TenAdvancedGachaResponse : PlayerDeltaResponse
  GachaResult[] gachaResultList

## HandBookMissionReward : ISharedItemModel, IGachaResultHolder
  ItemType type
  string id
  GachaResult charGet
  int count

## ReceiveTeamCollectionRewardRequest : 
  string rewardId

## ReceiveTeamCollectionRewardResponse : PlayerDeltaResponse
  List<HandBookMissionReward> items

## CheckInResponse : PlayerDeltaResponse
  ItemType type
  string id
  GachaResult charGet
  int count
  ItemModel[] signInRewards
  ItemModel[] subscriptionRewards

## ItemModel : ISharedItemModel, IGachaResultHolder
  ItemType type
  string id
  GachaResult charGet
  int count

## PlayerSyncStatusRequest : 
  long modules
  Dictionary<long, PlayerSyncParam> paramDict

## PlayerSyncStatusResponse : PlayerDeltaResponse
  string announcementVersion
  long ts
  Dictionary<long, JObject> result

## PlayerSyncGoodPurchaseParam : PlayerSyncParam
  ShopPurchaseState goodIdMap

## PlayerSyncAnnounceVersionResult : PlayerSyncResult
  string announcementVersion

## PlayerSyncGoodPurchaseResult : PlayerSyncResult
  GetGoodPurchaseStateResponse goodPurchaseState

## ListMailBoxRequest : 
  List<int> mailIdList

## MailMetaInfo : 
  int mailId
  MailState state
  DateTime createTime
  bool hasItem

## MailGet : ISharedItemModel, IGachaResultHolder
  ItemType type
  string id
  GachaResult charGet
  int count

## ListMailBoxResponse : PlayerDeltaResponse
  ItemType type
  string id
  int count
  int mailId
  string uid
  List<MailReward> items
  string from
  string subject
  string content
  DateTime createAt
  DateTime expireAt
  DateTime receiveAt
  int state
  List<MailItem> mailList

## MailReward : 
  ItemType type
  string id
  int count

## MailItem : 
  int mailId
  string uid
  List<MailReward> items
  string from
  string subject
  string content
  DateTime createAt
  DateTime expireAt
  DateTime receiveAt
  int state

## ReceiveMailRequest : 
  int mailId

## ReceiveMailResponse : PlayerDeltaResponse
  int result
  List<MailGet> items

## RemoveAllRecievedMailRequest : 
  List<int> mailIdList

## ReceiveAllMailRequest : 
  List<int> mailIdList

## ReceiveAllMailResponse : PlayerDeltaResponse
  List<MailGet> items

## GetMetaInfoListRequest : 
  long from

## GetMetaInfoListResponse : 
  List<MailMetaInfo> result

## ConfirmMissionRequest : 
  string missionId

## ExchangeMissionRewardsRequest : 
  string targetRewardsId

## ConfirmMissionGroupRequest : 
  string missionGroupId

## SellCharRequest : 
  int[] charInstIdList

## BuyCashGoodRequest : 
  string goodId

## BuyCashGoodResponse : PlayerDeltaResponse
  List<ShopItemModel> items

## BuySkinGoodRequest : 
  string goodId

## BuyGPGoodRequest : 
  string goodId

## BuyGPGoodResponse : PlayerDeltaResponse
  List<ShopItemModel> items

## BuyLowGoodRequest : 
  string goodId
  int count

## BuyLowGoodResponse : PlayerDeltaResponse
  List<ShopItemModel> items

## BuyExtraGoodRequest : 
  string goodId
  int count

## BuyExtraGoodResponse : PlayerDeltaResponse
  List<ShopItemModel> items

## BuyHighGoodRequest : 
  string goodId
  int count

## BuyHighGoodResponse : PlayerDeltaResponse
  List<ShopItemModel> items

## BuySocialGoodRequest : 
  string goodId
  int count

## BuySocialGoodResponse : PlayerDeltaResponse
  List<ShopItemModel> items

## DecomposePotentialItemRequest : 
  List<string> charInstIdList

## DecomposePotentialItemResponse : PlayerDeltaResponse
  List<ShopItemModel> items

## ShopSlot : 
  int price
  string displayName
  ItemBundle item

## CommonShopData : 
  string goodId
  string goodType
  int availCount
  ShopSlot slotItem
  float discount
  int originPrice

## ShopItemModel : ISharedItemModel, IGachaResultHolder
  ItemType type
  string id
  GachaResult charGet
  int count

## ShopSkinItemViewModel : 
  string goodId
  int slotId
  string skinId
  int originPrice
  int price
  float discount
  string skinName
  ShopHonourPriceType currencyUnit
  long startDateTime
  long endDateTime

## GetSkinGoodListRequest : 
  List<string> charIdList

## GetSkinGoodListResponse : PlayerDeltaResponse, IShopGetResposne
  List<ShopSkinItemViewModel> goodList

## QCObject : 
  string goodId
  ItemBundle item
  string progressGoodId
  string displayName
  int slotId
  int originPrice
  int price
  int availCount
  float discount
  int priority
  int number
  string groupId
  long goodStartTime
  long goodEndTime
  ShopQCGoodType goodType

## QCProgressGoodItem : 
  int order
  int price
  string displayName
  ItemBundle item

## CashShopObject : 
  string goodId
  int slotId
  int price
  int doubleCount
  int diamondNum
  int plusNum
  string desc

## GetCashGoodListResponse : PlayerDeltaResponse, IShopGetResposne
  List<CashShopObject> goodList

## GetHighGoodListResponse : PlayerDeltaResponse, IShopGetResposne
  List<QCObject> goodList

## GetExtraGoodListResponse : PlayerDeltaResponse, IShopGetResposne
  List<QCObject> goodList
  long shopEndTime

## GetLowGoodListResponse : PlayerDeltaResponse, IShopGetResposne
  List<QCObject> goodList
  List<string> groups
  long shopEndTime

## SocialShopData : 
  string goodId
  string displayName
  ItemBundle item
  int price
  int availCount
  ShopSlot slotItem
  float discount
  int originPrice

## GetSocialGoodListResponse : PlayerDeltaResponse, IShopGetResposne
  List<SocialShopData> goodList
  Dictionary<string, int> charPurchase
  int costSocialPoint
  string creditGroup

## ShopCashGoodPurchaseResponse : PlayerDeltaResponse
  string productId
  string productName
  List<ShopItemModel> items
  List<ShopItemModel> checkInItems
  List<Good> receiveCashGoodResult

## MonthlySubItem : NormalGPItem
  string cardId
  ItemBundle[] dailyBonus

## LevelGPItem : NormalGPItem
  int playerLevel

## NormalGPItem : 
  string goodId
  string giftPackageId
  int priority
  string displayName
  ShopHonourPriceType currencyUnit
  int availCount
  int price
  int originPrice
  float discount
  ItemBundle[] items

## PeriodicityGPItem : NormalGPItem
  string groupId

## PeriodicityGroup : 
  string groupId
  long startDateTime
  long endDateTime
  Dictionary<string, PeriodicityGPItem> packages

## GetGPGoodListResponse : PlayerDeltaResponse, IShopGetResposne
  PeriodicityGroup weeklyGroup
  PeriodicityGroup monthlyGroup
  List<MonthlySubItem> monthlySub
  List<LevelGPItem> levelGP
  List<NormalGPItem> oneTimeGP

## ShopPurchaseState : 
  List<string> lowQCShop
  List<string> highQCShop
  List<string> extraQCShop
  List<string> furnShop
  List<string> giftShop
  List<string> socialShop

## GetGoodPurchaseStateRequest : 
  ShopPurchaseState goodIdMap

## GetGoodPurchaseStateResponse : IShopGetResposne
  Dictionary<string, int> result

## ReceiveSocialPointResponse : PlayerDeltaResponse
  List<ShopItemModel> reward

## SquadFormationRequest : 
  int charInstId
  int skillIndex
  string squadId
  SquadSlot[] slots
  bool changeSkill

## SquadSlot : 
  int charInstId
  int skillIndex

## SquadRenameRequest : 
  string squadId
  string name

## SquadRenameResponse : PlayerDeltaResponse
  int result

## SquadFriendData : FriendCommonData
  SharedCharData assistChar
  int assistSlotIndex

## GetFriendAssistCharListResponse : 
  SquadFriendData[] assistFriendCharList
  string[] friendAliasList
  SquadFriendData[] assistNotFriendCharList
  int refreshTimes

## GetFriendAssistCharListRequest : 
  bool refresh

## SquadSlotModel : 
  int charInstId
  int skillIndex

## SquadModel : 
  string squadId
  string name
  List<SquadSlotModel> slots

## SyncDataResponse : 
  PlayerDataModel user
  long ts

## UpgradeCharRequest : 
  string id
  int count
  int charInstId
  ExpMat[] expMats

## ExpMat : 
  string id
  int count

## VisitBuildingRequest : 
  string friendId

## VisitBuildingResponse : PlayerDeltaResponse
  Dictionary<string, PlayerBuildingChar> chars
  Dictionary<string, PlayerBuildingRoomSlot> roomSlots
  PlayerBuildingRoom rooms
  string uid
  string nickName
  string nickNumber
  string secretary
  string secretarySkinId
  int level
  long ts
  Snapshot snapshot
  List<VisitorInfo> visitorList
  ItemBundle[] rewards

## PlayerStatus : 
  string nickName
  string nickNumber
  string serverName
  int ap
  DateTime lastApAddTime
  DateTime lastRefreshTs
  int level
  int exp
  int maxAp
  int practiceTicket
  long gold
  int crystal
  int diamondShard
  int recruitLicense
  int gachaTicket
  int tenGachaTicket
  int instantFinishTicket
  int hggShard
  int lggShard
  int socialPoint
  int buyApRemainTimes
  bool apLimitUpFlag
  long registerTs
  string secretary
  string secretarySkinId
  string resume
  DateTime monthlySubscriptionEndTime
  DateTime monthlySubscriptionStartTime
  int progress
  string mainStageProgress
  Dictionary<string, bool> flags
  List<PlayerFriendAssist> friendAssist

## PlayerSquadItem : 
  int charInstId
  int skillIndex

## PlayerFriendAssist : 
  int charInstId
  int skillIndex

## PlayerSquad : 
  int squadId
  string name
  PlayerSquadItem[] slots

## PlayerCheckIn : 
  bool canCheckIn
  string checkInGroupId
  int checkInRewardIndex
  List<bool> checkInHistory

## PlayerMonthlySubPer : 
  long monthlySubscriptionEndTime
  long monthlySubscriptionStartTime

## PlayerCharSkill : 
  bool unlock
  string skillId
  int specializeLevel

## PlayerCharacter : 
  int instId
  string charId
  int level
  int exp
  int boostPotentialFailCnt
  EvolvePhase evolvePhase
  int potentialRank
  int defaultSkillIndex
  int favorPoint
  int mainSkillLvl
  long gainTime
  string skin
  PlayerCharSkill[] skills

## PlayerOpenServer : 
  OpenServerChainLogin chainLogin
  OpenServerCheckIn checkIn

## PlayerActivity : 
  int coin
  Dictionary<string, int> shop
  ListDict<string, PlayerDefaultActivity> defaultActivityList
  ListDict<string, PlayerMissionOnlyTypeActivity> missionOnlyActivityList

## PlayerDefaultActivity : 
  int coin
  Dictionary<string, int> shop

## OpenServerChainLogin : 
  bool isAvailable
  int nowIndex
  List<bool> history
  FINALREWARDTYPE finalReward

## OpenServerCheckIn : 
  bool isAvailable
  List<bool> history

## PlayerDungeon : 
  Dictionary<string, PlayerStage> stages
  ListDict<string, PlayerZone> zones
  PlayerCampaign campaigns

## PlayerZone : 
  int completeTimes

## PlayerStage : 
  string stageId
  int completeTimes
  PlayerStageState state
  bool hasBattleReplay
  int noCostCnt

## PlayerCampaign : 
  int maxKills
  int[] rewardStatus
  int campaignCurrentFee
  int campaignTotalFee
  string activeGroupId
  ListDict<string, Instance> instances

## PlayerRecruit : 
  int tagId
  bool pick
  State state
  bool canBuy
  int[] tags
  TagItem[] selectTags
  DateTime startTs
  DateTime maxFinishTs
  DateTime realFinishTs
  int durationInSec
  ListDict<string, SlotModel> slots
  NormalModel normal

## NormalModel : 
  int tagId
  bool pick
  State state
  bool canBuy
  int[] tags
  TagItem[] selectTags
  DateTime startTs
  DateTime maxFinishTs
  DateTime realFinishTs
  int durationInSec
  ListDict<string, SlotModel> slots

## SlotModel : 
  int tagId
  bool pick
  State state
  bool canBuy
  int[] tags
  TagItem[] selectTags
  DateTime startTs
  DateTime maxFinishTs
  DateTime realFinishTs
  int durationInSec

## TagItem : 
  int tagId
  bool pick

## PlayerGacha : 
  long start
  long end
  bool openFlag
  int cnt
  PlayerNewbeeGachaPool newbee

## PlayerNewbeeGachaPool : 
  long start
  long end
  bool openFlag
  int cnt

## PlayerSocialReward : 
  bool canReceive
  int assistAmount
  int comfortAmount

## PlayerSocial : 
  AssistCharList[] assistCharList
  PlayerSocialReward yesterdayReward

## PlayerTroop : 
  int troopCapacity
  int curSquadCount
  int curCharInstCount
  Dictionary<string, PlayerSquad> squads
  Dictionary<string, PlayerCharacter> chars

## PlayerGoodItemData : 
  string id
  int count

## PlayerGoodProgressData : 
  int count
  int order

## PlayerCommonShopProgressData : 
  string curShopId
  List<PlayerGoodItemData> info

## PlayerLowQCShopProgressData : PlayerCommonShopProgressData
  string curGroupId

## PlayerHighQCShopProgressData : 
  List<PlayerGoodItemData> info
  Dictionary<string, PlayerGoodProgressData> progressInfo

## PlayerCashProgressData : 
  List<PlayerGoodItemData> info

## PlayerGiftProgressPerData : 
  List<PlayerGoodItemData> info

## PlayerSocialShopData : 
  List<PlayerGoodItemData> info

## PlayerFurnitureShopData : 
  List<PlayerGoodItemData> info

## PlayerGiftProgressData : 
  PlayerGiftProgressPerData oneTime
  PlayerGiftProgressPerData level
  PlayerGiftProgressPerData weekly
  PlayerGiftProgressPerData monthly

## PlayerShop : 
  PlayerLowQCShopProgressData lowQCShop
  PlayerHighQCShopProgressData highQCShop
  PlayerCommonShopProgressData extraQCShop
  PlayerCashProgressData cashShop
  PlayerGiftProgressData giftShop
  PlayerSocialShopData socialShop
  PlayerFurnitureShopData furnitureShop

## PlayerPushFlags : 
  bool hasGifts
  bool hasFriendRequest
  bool hasClues
  bool hasFreeLevelGP

## PlayerEvents : 
  DateTime building

## PlayerBuildingLabor : 
  float buffSpeed
  int value
  int maxValue
  DateTime lastUpdateTime
  double processPoint

## PlayerBuildingStatus : 
  PlayerBuildingLabor labor

## PlayerBuildingCharBubble : 
  int add

## PlayerBuildingChar : 
  PlayerBuildingCharBubble normal
  PlayerBuildingCharBubble assist
  string charId
  DateTime lastApAddTime
  long ap
  string roomSlotId
  int index
  int changeScale
  BubbleContainer bubble
  string skinIdInVisit

## PlayerBuildingRoomSlot : 
  int level
  PlayerRoomSlotState state
  BuildingData.RoomType roomId
  int[] charInstIds
  DateTime completeConstructTime

## PlayerBuildingFurnitureInfo : 
  int count
  int inUse

## PlayerEnemyHandBook : 
  Dictionary<string, int> enemies

## PlayerFormulaUnlockRecord : 
  Dictionary<string, int> manufacture
  Dictionary<string, int> workshop

## PlayerDexNav : 
  PlayerEnemyHandBook enemy
  PlayerFormulaUnlockRecord formula

## PlayerSkins : 
  ListDict<string, int> characterSkins

## PlayerCollection : 
  Dictionary<string, int> team

## PlayerBuildingManufactureBuff : 
  float speed
  int capacity

## PlayerBuildingManufacture : 
  PlayerBuildingManufactureBuff buff
  PlayerRoomState state
  string formulaId
  int remainSolutionCnt
  int outputSolutionCnt
  DateTime lastUpdateTime
  double processPoint
  long saveTime
  DateTime completeWorkTime
  int capacity
  int apCost

## PlayerBuildingShopStock : 
  float buffSpeed
  PlayerRoomState state
  string formulaId
  int itemCnt
  double processPoint
  DateTime lastUpdateTime
  long saveTime
  DateTime completeWorkTime

## PlayerBuildingShopOutputItem : 
  ItemType type
  int count

## PlayerBuildingShop : 
  PlayerBuildingShopStock[] stock
  List<PlayerBuildingShopOutputItem> outputItem

## PlayerBuildingPowerBuff : 
  float laborSpeed

## PlayerBuildingPower : 
  PlayerBuildingPowerBuff buff

## PlayerBuildingControlBuff : 
  int apCost
  Global global

## PlayerBuildingControl : 
  PlayerBuildingControlBuff buff
  int apCost

## PlayerBuildingWorkshopBuff : 
  ListDict<string, float> rate

## PlayerBuildingWorkshop : 
  PlayerBuildingWorkshopBuff buff

## PlayerBuildingMeetingClueChar : 
  string charId
  int level
  int evolvePhase

## PlayerBuildingMeetingClue : 
  string id
  string type
  int number
  int uid
  int nickNum
  string name
  List<PlayerBuildingMeetingClueChar> chars
  int inUse
  long ts

## PlayerBuildingMeetingSocialReward : 
  bool daily
  bool search

## PlayerBuildingMeetingInfoShareState : 
  long ts
  int reward

## PlayerBuildingMeetingBuff : 
  float speed

## PlayerBuildingMeeting : 
  List<string> visitedUser
  PlayerBuildingMeetingBuff buff
  int state
  int processPoint
  float speed
  List<PlayerBuildingMeetingClue> ownStock
  List<PlayerBuildingMeetingClue> receiveStock
  Dictionary<string, string> board
  PlayerBuildingMeetingSocialReward socialReward
  int expiredReward
  int received
  PlayerBuildingMeetingInfoShareState infoShare
  DateTime lastUpdateTime
  PlayerBuildingMeetingClue dailyReward

## PlayerBuildingHireBuff : 
  float speed

## PlayerBuildingHire : 
  PlayerBuildingHireBuff buff
  int recruitSlotId
  PlayerBuildingHiringState state
  double processPoint
  float speed
  DateTime lastUpdateTime
  int refreshCount
  DateTime completeWorkTime

## PlayerBuildingTradingOrder : 
  long instId
  BuildingData.OrderType type
  ItemBundle[] delivery
  ItemBundle gain

## PlayerBuildingTradingBuff : 
  float speed
  int limit

## PlayerBuildingTradingNext : 
  long order
  double processPoint
  double speed
  int maxPoint

## PlayerBuildingTrading : 
  PlayerBuildingTradingBuff buff
  PlayerRoomState state
  DateTime lastUpdateTime
  BuildingData.OrderType strategy
  int stockLimit
  int apCost
  List<PlayerBuildingTradingOrder> stock
  PlayerBuildingTradingNext next

## PlayerBuildingGridPosition : 
  int x
  int y

## PlayerBuildingFurniturePositionInfo : 
  string id
  PlayerBuildingGridPosition coordinate

## PlayerBuildingDIYSolution : 
  string wallPaper
  string floor
  List<PlayerBuildingFurniturePositionInfo> carpet
  List<PlayerBuildingFurniturePositionInfo> other

## PlayerBuildingDIYPreset : 
  string name
  PlayerBuildingDIYSolution solution
  string thumbnail

## PlayerBuildingDormitory : 
  string target
  int value
  int all
  SingleTarget single
  APCost apCost
  Buff buff
  int comfort
  PlayerBuildingDIYSolution diySolution

## PlayerBuildingTrainer : 
  PlayerBuildingTrainerState state
  int charInstId

## PlayerBuildingTrainee : 
  PlayerBuildingTraineeState state
  int charInstId
  double processPoint
  float speed
  int targetSkill

## PlayerBuildingTrainingBuff : 
  float speed

## PlayerBuildingTraining : 
  PlayerBuildingTrainingBuff buff
  DateTime lastUpdateTime
  PlayerBuildingTrainer trainer
  PlayerBuildingTrainee trainee
  DateTime completeWorkTime

## PlayerBuildingRoom : 
  ListDict<string, PlayerBuildingManufacture> manufact
  ListDict<string, PlayerBuildingShop> shop
  ListDict<string, PlayerBuildingPower> power
  ListDict<string, PlayerBuildingControl> control
  ListDict<string, PlayerBuildingMeeting> meeting
  ListDict<string, PlayerBuildingHire> hire
  ListDict<string, PlayerBuildingDormitory> dorm
  ListDict<string, PlayerBuildingTraining> training
  ListDict<string, PlayerBuildingWorkshop> workshop
  ListDict<string, PlayerBuildingTrading> trading

## PlayerBuilding : 
  PlayerBuildingStatus status
  Dictionary<string, PlayerBuildingChar> chars
  List<int> assist
  Dictionary<string, PlayerBuildingRoomSlot> roomSlots
  PlayerBuildingRoom rooms
  Dictionary<string, PlayerBuildingFurnitureInfo> furniture
  Dictionary<string, PlayerBuildingDIYPreset> diyPresetSolutions

## MissionCalcState : 
  int target
  int value
  string compare

## MissionPlayerState : 
  MissionHoldingState state
  List<MissionCalcState> progress

## MissionDailyRewards : 
  int dailyPoint
  int weeklyPoint

## MissionPlayerData : 
  MissionPlayerDataGroup missions
  MissionDailyRewards missionRewards
  Dictionary<string, MissionGroupState> missionGroups

## PlayerDataModel : 
  PlayerEvents events
  PlayerPushFlags pushFlags
  PlayerStatus status
  Dictionary<string, PlayerMonthlySubPer> monthlySub
  PlayerTroop troop
  PlayerDungeon dungeon
  PlayerCheckIn checkIn
  PlayerOpenServer openServer
  PlayerActivity activity
  PlayerDexNav dexNav
  PlayerSkins skin
  PlayerCollection collectionReward
  Dictionary<string, int> inventory
  PlayerShop shop
  PlayerRecruit recruit
  PlayerGacha gacha
  PlayerSocial social
  MissionPlayerData mission
  PlayerBuilding building

## PlayerDataDelta : 
  JObject modified
  JObject deleted

## DefaultShopData : 
  string goodId
  int slotId
  int price
  int availCount
  string overrideName
  ItemBundle item

## DefaultZoneData : 
  string zoneId
  string zoneIndex
  string zoneName
  string zoneDesc
  List<string> itemDropList

## DefaultFirstData : 
  List<DefaultZoneData> zoneList
  List<DefaultShopData> shopList

## ActivityTable : 
  string id
  ActivityType type
  string name
  long startTime
  long endTime
  long rewardEndTime
  bool displayOnHome
  Dictionary<string, DefaultFirstData> defaultActivityData
  ListDict<string, BasicData> basicInfo
  ListDict<string, string> zoneToActivity
  List<MissionData> missionData
  List<MissionGroup> missionGroup
  ActivityDetailTable activity

## BasicData : 
  string id
  ActivityType type
  string name
  long startTime
  long endTime
  long rewardEndTime
  bool displayOnHome

## ActivityDetailTable : 
  Dictionary<string, DefaultFirstData> defaultActivityData

## PreAnnounceData : 
  string preAnnounceId
  PreAnnounceType preAnnounceType
  string preAnnounceUrl

## AnnounceData : 
  List<AnnounceSinglePageData> announceList
  string focusAnnounceId

## AnnounceSinglePageData : 
  string announceId
  string title
  bool isWebUrl
  AnnounceGroup group
  string webUrl
  int day
  int month

## AttributesData : 
  Undefinable<int> maxHp
  Undefinable<int> atk
  Undefinable<int> def
  Undefinable<float> magicResistance
  Undefinable<int> cost
  Undefinable<int> blockCnt
  Undefinable<float> moveSpeed
  Undefinable<float> attackSpeed
  Undefinable<float> baseAttackTime
  Undefinable<int> respawnTime
  Undefinable<float> hpRecoveryPerSec
  Undefinable<float> spRecoveryPerSec
  Undefinable<int> maxDeployCount
  Undefinable<int> massLevel
  Undefinable<bool> stunImmune
  Undefinable<bool> silenceImmune

## AttributeModifierData : 
  AttributeType attributeType
  FormulaItemType formulaItem
  float value
  bool loadFromBlackboard
  bool fetchBaseValueFromSourceEntity
  AbnormalFlag[] abnormalFlags
  AttributeModifier[] attributeModifiers

## DataPair : 
  string key
  float value
  string valueStr

## BuildingData : 
  GridPosition offset
  byte edgeWalkableMask
  GridPosition pos
  GridPosition size
  byte edgeWalkableMask
  List<ObstaclePoint> floorObstacles
  List<ObstaclePoint> backwallObstacles
  string id
  string blueprintRoomOverrideId
  GridPosition size
  GridPosition floorGridSize
  GridPosition backWallGridSize
  string obstacleId
  RoomType type
  int level
  int count
  string id
  ListDict<int, CondItem> number
  ItemBundle[] items
  long time
  int labor
  string overrideName
  string overridePrefabId
  string unlockCondId
  BuildCost buildCost
  int electricity
  int maxStationedNum
  long manpowerCost
  RoomType id
  string name
  string description
  string defaultPrefabId
  bool canLevelDown
  int maxCount
  RoomCategory category
  GridPosition size
  PhaseData[] phases
  string id
  string cleanCostId
  int costLabor
  int provideLabor
  GridPosition size
  GridPosition offset
  RoomCategory category
  string storeyId
  ItemBundle[] items
  string id
  ListDict<int, CountCost> number
  string id
  int yOffset
  int unlockControlLevel
  Type type
  string id
  Dictionary<string, RoomSlot> slots
  Dictionary<string, SlotCleanCost> cleanCosts
  ListDict<string, StoreyData> storeys
  string charId
  long maxManpower
  List<BuildingBuffCharSlot> buffChar
  string buffId
  CharacterData.UnlockCondition cond
  List<SlotItem> buffData
  string buffId
  string buffName
  string buffIcon
  string buffColor
  string textColor
  BuffCategory buffCategory
  RoomType roomType
  string description
  List<TParam> phases
  int basicCostBuff
  float basicSpeedBuff
  float speed
  int outputCapacity
  int counterNum
  float speed
  int moneyCapacity
  float basicSpeedBuff
  float economizeRate
  int resSpeed
  int refreshTimes
  int manpowerRecover
  int decorationLimit
  float basicSpeedBuff
  int friendSlotInc
  int maxVisitorNum
  int gatheringSpeed
  float basicSpeedBuff
  float orderSpeed
  int orderLimit
  int orderRarity
  float manpowerFactor
  float basicSpeedBuff
  int specSkillLvlLimit
  float basicSpeedBuff
  string id
  string name
  string iconId
  FurnitureType type
  FurnitureLocation location
  FurnitureCategory category
  int rarity
  string themeId
  int width
  int depth
  int height
  int comfort
  string usage
  string description
  string obtainApproach
  string processedProductId
  int processedProductCount
  int processedByProductPercentage
  List<WorkshopExtraWeightItem> processedByProductGroup
  bool canBeDestroy
  string id
  string name
  string desc
  List<ThemeQuickSetupItem> quickSetup
  string id
  string name
  string themeId
  int comfort
  int count
  List<string> furniture
  string furnitureId
  int pos0
  int pos1
  FurnitureType type
  string name
  string furnitureId
  int xOffset
  int yOffset
  string defaultPrefabId
  Dictionary<string, FurnitureData> furnitures
  ListDict<string, ThemeData> themes
  ListDict<string, GroupData> groups
  ListDict<string, FurnitureTypeData> types
  RoomType roomId
  int roomLevel
  int roomCount
  string stageId
  int rank
  string formulaId
  string itemId
  int count
  int weight
  long costPoint
  FormulaItemType formulaType
  string buffType
  List<ItemBundle> costs
  List<UnlockRoom> requireRooms
  List<UnlockStage> requireStages
  int weight
  string itemId
  int itemCount
  RoomType roomId
  int roomLevel
  int roomCount
  string stageId
  int rank
  string formulaId
  int rarity
  string itemId
  int count
  long goldCost
  long apCost
  FormulaItemType formulaType
  string buffType
  float extraOutcomeRate
  List<WorkshopExtraWeightItem> extraOutcomeGroup
  List<ItemBundle> costs
  List<UnlockRoom> requireRooms
  List<UnlockStage> requireStages
  RoomType roomId
  int roomLevel
  string formulaId
  string itemId
  FormulaItemType formulaType
  long costPoint
  ItemBundle gainItem
  List<UnlockRoom> requireRooms
  int basic
  int addition
  ListDict<int, ValueModel> initiative
  ListDict<int, ValueModel> passive
  string controlSlotId
  string meetingSlotId
  int initMaxLabor
  int laborRecoverTime
  int manufactInputCapacity
  int shopCounterCapacity
  int comfortLimit
  int creditInitiativeLimit
  int creditPassiveLimit
  int creditComfortFactor
  int creditGuaranteed
  int creditCeiling
  string manufactUnlockTips
  string shopUnlockTips
  float manufactStationBuff
  int comfortManpowerRecoverFactor
  int manpowerDisplayFactor
  ListDict<string, int> shopOutputRatio
  ListDict<string, int> shopStackRatio
  int basicFavorPerDay
  int humanResourceLimit
  long tiredApThreshold
  int processedCountRatio
  int tradingStrategyUnlockLevel
  int tradingReduceTimeUnit
  int tradingLaborCostUnit
  int manufactReduceTimeUnit
  int manufactLaborCostUnit
  int laborAssistUnlockLevel
  int apToLaborUnlockLevel
  int apToLaborRatio
  int socialResourceLimit
  int socialSlotNum
  int furniDuplicationLimit
  int[] manufactManpowerCostByNum
  int[] tradingManpowerCostByNum
  Dictionary<string, RoomUnlockCond> roomUnlockConds
  Dictionary<string, RoomData> rooms
  Dictionary<string, LayoutData> layouts
  Dictionary<string, PrefabInfo> prefabs
  ControlRoomBean controlData
  ManufactRoomBean manufactData
  RoomBean<ShopPhase> shopData
  HireRoomBean hireData
  RoomBean<DormPhase> dormData
  MeetingRoomBean meetingData
  TradingRoomBean tradingData
  RoomBean<WorkshopPhase> workshopData
  TrainingBean trainingData
  PowerRoomBean powerData
  Dictionary<string, BuildingCharacter> chars
  Dictionary<string, BuildingBuff> buffs
  CustomData customData
  Dictionary<string, ManufactFormula> manufactFormulas
  Dictionary<string, ShopFormula> shopFormulas
  Dictionary<string, WorkshopFormula> workshopFormulas
  CreditFormula creditFormula
  Dictionary<string, int> goldItems
  List<int> assistantUnlock

## ObstacleData : 
  List<ObstaclePoint> floorObstacles
  List<ObstaclePoint> backwallObstacles

## PrefabInfo : 
  string id
  string blueprintRoomOverrideId
  GridPosition size
  GridPosition floorGridSize
  GridPosition backWallGridSize
  string obstacleId

## CondItem : 
  RoomType type
  int level
  int count

## RoomData : 
  ItemBundle[] items
  long time
  int labor
  string overrideName
  string overridePrefabId
  string unlockCondId
  BuildCost buildCost
  int electricity
  int maxStationedNum
  long manpowerCost
  RoomType id
  string name
  string description
  string defaultPrefabId
  bool canLevelDown
  int maxCount
  RoomCategory category
  GridPosition size
  PhaseData[] phases

## PhaseData : 
  string characterPrefabKey
  string rangeId
  int maxLevel
  AttributesKeyFrame attributesKeyFrames
  ItemBundle[] evolveCost

## LayoutData : 
  string id
  string cleanCostId
  int costLabor
  int provideLabor
  GridPosition size
  GridPosition offset
  RoomCategory category
  string storeyId
  ItemBundle[] items
  string id
  ListDict<int, CountCost> number
  string id
  int yOffset
  int unlockControlLevel
  Type type
  string id
  Dictionary<string, RoomSlot> slots
  Dictionary<string, SlotCleanCost> cleanCosts
  ListDict<string, StoreyData> storeys

## RoomSlot : 
  string id
  string cleanCostId
  int costLabor
  int provideLabor
  GridPosition size
  GridPosition offset
  RoomCategory category
  string storeyId

## SlotCleanCost : 
  ItemBundle[] items
  string id
  ListDict<int, CountCost> number

## StoreyData : 
  string id
  int yOffset
  int unlockControlLevel
  Type type

## BuildingCharacter : 
  string charId
  long maxManpower
  List<BuildingBuffCharSlot> buffChar

## BuildingBuffCharSlot : 
  string buffId
  CharacterData.UnlockCondition cond
  List<SlotItem> buffData

## SlotItem : 
  string buffId
  CharacterData.UnlockCondition cond

## BuildingBuff : 
  string buffId
  string buffName
  string buffIcon
  string buffColor
  string textColor
  BuffCategory buffCategory
  RoomType roomType
  string description

## ControlRoomBean : RoomBean<ControlRoomPhase>
  int basicCostBuff

## ManufactRoomBean : RoomBean<ManufactPhase>
  float basicSpeedBuff

## ManufactPhase : RoomBeanParam
  float speed
  int outputCapacity

## ShopPhase : RoomBeanParam
  int counterNum
  float speed
  int moneyCapacity

## HireRoomBean : RoomBean<HirePhase>
  float basicSpeedBuff

## HirePhase : RoomBeanParam
  float economizeRate
  int resSpeed
  int refreshTimes

## DormPhase : RoomBeanParam
  int manpowerRecover
  int decorationLimit

## MeetingRoomBean : RoomBean<MeetingPhase>
  float basicSpeedBuff

## MeetingPhase : RoomBeanParam
  int friendSlotInc
  int maxVisitorNum
  int gatheringSpeed

## TradingRoomBean : RoomBean<TradingPhase>
  float basicSpeedBuff

## TradingPhase : RoomBeanParam
  float orderSpeed
  int orderLimit
  int orderRarity

## WorkshopPhase : RoomBeanParam
  float manpowerFactor

## TrainingBean : RoomBean<TrainingPhase>
  float basicSpeedBuff

## TrainingPhase : RoomBeanParam
  int specSkillLvlLimit

## PowerRoomBean : RoomBean<PowerPhase>
  float basicSpeedBuff

## CustomData : 
  string id
  string name
  string iconId
  FurnitureType type
  FurnitureLocation location
  FurnitureCategory category
  int rarity
  string themeId
  int width
  int depth
  int height
  int comfort
  string usage
  string description
  string obtainApproach
  string processedProductId
  int processedProductCount
  int processedByProductPercentage
  List<WorkshopExtraWeightItem> processedByProductGroup
  bool canBeDestroy
  string id
  string name
  string desc
  List<ThemeQuickSetupItem> quickSetup
  string id
  string name
  string themeId
  int comfort
  int count
  List<string> furniture
  string furnitureId
  int pos0
  int pos1
  FurnitureType type
  string name
  string furnitureId
  int xOffset
  int yOffset
  string defaultPrefabId
  Dictionary<string, FurnitureData> furnitures
  ListDict<string, ThemeData> themes
  ListDict<string, GroupData> groups
  ListDict<string, FurnitureTypeData> types

## ThemeData : 
  string id
  string name
  string desc
  List<ThemeQuickSetupItem> quickSetup

## GroupData : 
  string id
  string name
  string themeId
  int comfort
  int count
  List<string> furniture

## ThemeQuickSetupItem : 
  string furnitureId
  int pos0
  int pos1

## FurnitureTypeData : 
  FurnitureType type
  string name

## DormitoryDefaultFurnitureItem : 
  string furnitureId
  int xOffset
  int yOffset
  string defaultPrefabId

## ManufactFormula : 
  RoomType roomId
  int roomLevel
  int roomCount
  string stageId
  int rank
  string formulaId
  string itemId
  int count
  int weight
  long costPoint
  FormulaItemType formulaType
  string buffType
  List<ItemBundle> costs
  List<UnlockRoom> requireRooms
  List<UnlockStage> requireStages

## UnlockStage : 
  string stageId
  int rank

## WorkshopExtraWeightItem : 
  int weight
  string itemId
  int itemCount

## WorkshopFormula : 
  RoomType roomId
  int roomLevel
  int roomCount
  string stageId
  int rank
  string formulaId
  int rarity
  string itemId
  int count
  long goldCost
  long apCost
  FormulaItemType formulaType
  string buffType
  float extraOutcomeRate
  List<WorkshopExtraWeightItem> extraOutcomeGroup
  List<ItemBundle> costs
  List<UnlockRoom> requireRooms
  List<UnlockStage> requireStages

## ShopFormula : 
  RoomType roomId
  int roomLevel
  string formulaId
  string itemId
  FormulaItemType formulaType
  long costPoint
  ItemBundle gainItem
  List<UnlockRoom> requireRooms

## CreditFormula : 
  int basic
  int addition
  ListDict<int, ValueModel> initiative
  ListDict<int, ValueModel> passive

## ValueModel : 
  int basic
  int addition

## CharWordData : 
  string charWordId
  string charId
  string voiceId
  string voiceText
  string voiceTitle
  int voiceIndex
  CharWordVoiceType voiceType
  DataUnlockType unlockType
  List<CharWordUnlockParam> unlockParam
  string lockDescription
  CharWordShowType placeType
  string voiceAsset

## CharWordUnlockParam : 
  string valueStr
  int valueInt

## BattleVoiceData : 
  float crossfade
  float minTimeDeltaForEnemyEncounter
  int minSpCostForImportantPassiveSkill
  List<BattleVoiceOption> voiceTypeOptions

## CharacterData : 
  EvolvePhase phase
  int level
  TalentData[] candidates
  UnlockCondition unlockCondition
  int requiredPotentialRank
  Blackboard blackboard
  TraitData[] candidates
  string characterPrefabKey
  string rangeId
  int maxLevel
  AttributesKeyFrame attributesKeyFrames
  ItemBundle[] evolveCost
  UnlockCondition unlockCond
  int lvlUpTime
  ItemBundle[] levelUpCost
  string skillId
  SpecializeLevelData[] specializeLevelUpData
  UnlockCondition initialUnlockCond
  TypeEnum type
  string description
  ExternalBuff buff
  ItemBundle[] equivalentCost
  string itemId
  float percent
  UnlockCondition unlockCond
  ItemBundle[] lvlUpCost
  string name
  string description
  bool canUseGeneralPotentialItem
  string potentialItemId
  int team
  string displayNumber
  string tokenKey
  string appellation
  string position
  string[] tagList
  string displayLogo
  string itemUsage
  string itemDesc
  string itemObtainApproach
  int maxPotentialLevel
  RarityRank rarity
  ProfessionCategory profession
  TraitDataBundle trait
  PhaseData[] phases
  MainSkill[] skills
  TalentDataBundle[] talents
  PotentialRank[] potentialRanks
  AttributesDeltaKeyFrame favorKeyFrames
  SkillLevelCost[] allSkillLvlup

## TalentDataBundle : 
  TalentData[] candidates

## TraitData : 
  UnlockCondition unlockCondition
  int requiredPotentialRank
  Blackboard blackboard

## TraitDataBundle : 
  TraitData[] candidates

## SpecializeLevelData : 
  UnlockCondition unlockCond
  int lvlUpTime
  ItemBundle[] levelUpCost

## SkillLevelCost : 
  UnlockCondition unlockCond
  ItemBundle[] lvlUpCost

## CharacterInst : 
  string characterKey
  int level
  EvolvePhase phase
  int favorBattlePhase
  int potentialRank
  int playerInstId
  Metadata inst
  int skillIndex
  int mainSkillLvl
  string skinId

## MonthlySignInData : 
  string itemId
  ItemType itemType
  int count

## MonthlySignInGroupData : 
  string groupId
  string title
  string description
  long signStartTime
  long signEndTime
  List<MonthlySignInData> items

## CheckInTable : 
  Dictionary<string, MonthlySignInGroupData> groups
  string currentMonthlySubId

## EnemyDatabase : 
  string AssignName
  Undefinable<string> name
  Undefinable<string> description
  Undefinable<string> prefabKey
  AttributesData attributes
  Undefinable<int> lifePointReduce
  Undefinable<float> rangeRadius
  Blackboard talentBlackboard
  LevelData.EnemyData.SkillData[] skills
  int level
  EnemyData enemyData
  Undefinable<int> maxHp
  Undefinable<int> atk
  Undefinable<int> def
  Undefinable<float> magicResistance
  Undefinable<int> cost
  Undefinable<int> blockCnt
  Undefinable<float> moveSpeed
  Undefinable<float> attackSpeed
  Undefinable<float> baseAttackTime
  Undefinable<int> respawnTime
  Undefinable<float> hpRecoveryPerSec
  Undefinable<float> spRecoveryPerSec
  Undefinable<int> maxDeployCount
  Undefinable<int> massLevel
  Undefinable<bool> stunImmune
  Undefinable<bool> silenceImmune

## EnemyDataMetaAttribute : Attribute
  string AssignName

## EnemyData : 
  string prefabKey
  int priority
  float cooldown
  float initCooldown
  Blackboard blackboard
  string name
  string description
  string key
  AttributesData attributes
  string alias
  int lifePointReduce
  float rangeRadius
  Blackboard talentBlackboard
  SkillData[] skills

## EnemyLevel : 
  int level
  EnemyData enemyData

## EnemyHandBookData : 
  string enemyId
  string enemyIndex
  int sortId
  string name
  string enemyRace
  EnemyLevelType enemyLevel
  string description
  string attackType
  string endure
  string attack
  string defence
  string resistance
  string ability

## FavorData : 
  int favorPoint
  int percent
  int battlePhase

## GachaTag : 
  int tagId
  string tagName
  int tagGroup

## GachaPoolData : 
  string charId
  string charName
  RarityRank rarity
  string professionName
  int weight
  float dedicatedRate
  float rateLockRatio
  float computedRate
  Dictionary<int, float> baseRarityRate
  string gachaPoolId
  GachaPoolItem[] gachaPoolItems
  GachaPoolConstants gachaPoolConstants

## GachaPoolItem : 
  string charId
  string charName
  RarityRank rarity
  string professionName
  int weight
  float dedicatedRate
  float rateLockRatio
  float computedRate

## GachaPoolConstants : 
  Dictionary<int, float> baseRarityRate

## GachaPoolClientData : IComparable<GachaPoolClientData>
  string gachaPoolId
  int gachaIndex
  long openTime
  long endTime
  string gachaPoolName
  string gachaPoolSummary
  string gachaPoolDetail

## NewbeeGachaPoolClientData : IComparable<NewbeeGachaPoolClientData>
  string gachaPoolId
  int gachaIndex
  string gachaPoolName
  string gachaPoolDetail
  int gachaPrice
  int gachaTimes
  string gachaOffset

## BasedRecruitPool : 
  string charId
  int weight
  Dictionary<int, int> tagPriceList
  int maxRecruitTime
  RecruitConstants recruitConstants

## RecruitCharacter : 
  string charId
  int weight

## RecruitConstants : 
  Dictionary<int, int> tagPriceList
  int maxRecruitTime

## RecruitPool : BasedRecruitPool
  int timeLength
  int recruitPrice
  RecruitTime[] recruitTimeTable

## RecruitTime : 
  int timeLength
  int recruitPrice

## SpecialRecruitPool : BasedRecruitPool
  int timeLength
  int recruitPrice
  ItemBundle[] itemCosts
  string recruitId
  string tagName
  int tagId
  int order
  long startDateTime
  long endDateTime
  SpecialRecruitCostData[] recruitTimeTable

## SpecialRecruitCostData : 
  int timeLength
  int recruitPrice
  ItemBundle[] itemCosts

## GachaData : 
  int rarityStart
  int rarityEnd
  string poolId
  int index
  long startTime
  long endTime
  string spriteId
  GachaPoolClientData[] gachaPoolClient
  NewbeeGachaPoolClientData[] newbeeGachaPoolClient
  SpecialRecruitPool[] specialRecruitPool
  GachaTag[] gachaTags
  GachaPoolData[] gachaPools
  RecruitPool recruitPool
  PotentialMaterialConverterConfig potentialMaterialConverter
  Dictionary<int, RecruitRange> recruitRarityTable
  string recruitDetail
  List<CarouselData> carousel

## RecruitRange : 
  int rarityStart
  int rarityEnd

## CarouselData : 
  string poolId
  int index
  long startTime
  long endTime
  string spriteId

## GameDataConsts : 
  int Hour
  int Minute
  int maxPlayerLevel
  int[] playerExpMap
  int[] playerApMap
  int[] charSellGold
  float completeGainBonus
  int playerApRegenSpeed
  int maxPracticeTicket
  int advancedGachaCrystalCost
  int completeCrystalBonus
  int initPlayerGold
  int initPlayerCrystal
  int initPlayerDiamondShard
  int initCampaignTotalFee
  int[] initRecruitTagList
  string[] initCharIdList
  float attackMax
  float defMax
  float hpMax
  float reMax
  int diamondToShdRate
  int baseMaxFriendNum
  int hardDiamondDrop
  int instFinDmdShdCost
  int diamondMaterialToShardExchangeRatio
  int apBuyCost
  int apBuyThreshold
  int creditLimit
  int monthlySubRemainTimeLimitDays
  List<int> friendAssistRarityLimit
  Dictionary<string, string> richTextStyles
  List<CharAssistRefreshTimeState> charAssistRefreshTime
  List<string> normalRecruitLockedString
  int useAssistSocialPt
  int useAssistSocialPtMaxCount
  ListDict<int, int> assistBeUsedSocialPt
  float[] pushForces
  int pushForceZeroIndex
  int[] normalGachaUnlockPrice
  float[] pullForces
  int pullForceZeroIndex
  string[] multiInComeByRank

## CharAssistRefreshTimeState : 
  int Hour
  int Minute

## HandbookCardData : 
  string charID
  float xPos
  float yPos
  int sixPosX
  int sixPosY
  float lvl
  int teamID
  string name
  string cardID

## HandBookInfoTextViewData : 
  string infoText
  string audioName
  List<InfoTextAudio> infoList
  bool unLockorNot
  DataUnlockType unLockType
  string unLockParam
  int unLockLevel
  int unLockLevelAdditive
  string unLockString

## InfoTextAudio : 
  CharWordData sourceData

## HandBookStoryViewData : 
  string storyText
  DataUnlockType unLockType
  string unLockParam
  string unLockString
  List<StoryText> stories
  string storyTitle
  bool unLockorNot

## HandbookInfoData : 
  string charID
  string drawName
  string infoName
  HandBookStoryViewData[] storyTextAudio

## HandbookTeamMission : 
  string id
  int teamId
  ItemBundle item
  int favorPoint

## HandbookInfoTable : 
  Dictionary<string, HandbookInfoData> handbookDict
  Dictionary<string, NPCData> npcDict
  Dictionary<string, HandbookTeamMission> teamMissionList

## HandbookTeamData : 
  int teamID
  int teamSort
  string teamName
  string color
  string teamKey

## InventoryData : 
  Dictionary<string, ItemData> items
  Dictionary<string, ExpItemFeature> expItems

## ItemData : 
  string stageId
  OccPer occPer
  BuildingData.RoomType roomType
  string formulaId
  string itemId
  string name
  string description
  ItemRarity rarity
  string iconId
  string overrideBkg
  string stackIconId
  int sortId
  string usage
  string obtainApproach
  ItemType itemType
  List<StageDropInfo> stageDropList
  List<BuildingProductInfo> buildingProductList

## StageDropInfo : 
  ItemBundle[] firstPassRewards
  List<DisplayRewards> displayRewards
  List<DisplayDetailRewards> displayDetailRewards

## BuildingProductInfo : 
  BuildingData.RoomType roomType
  string formulaId

## WeightItemBundle : 
  string id
  ItemType type
  StageDropType dropType
  int count
  int weight

## ExpItemFeature : 
  string id
  int gainExp

## CharItemFeature : 
  string id
  string charId

## RouteData : 
  CheckpointType type
  float time
  GridPosition position
  Vector2 reachOffset
  bool randomizeReachOffset
  float reachDistance
  MotionMode motionMode
  GridPosition startPosition
  GridPosition endPosition
  Vector2 spawnRandomRange
  Vector2 spawnOffset
  CheckpointData[] checkpoints
  bool allowDiagonalMove
  bool visitEveryTileCenter
  bool visitEveryNodeCenter

## CheckpointData : 
  CheckpointType type
  float time
  GridPosition position
  Vector2 reachOffset
  bool randomizeReachOffset
  float reachDistance

## LevelData : 
  string name
  string rangeId
  string description
  SkillType skillType
  SpData spData
  string prefabId
  float duration
  Blackboard blackboard

## EnemyDataDbReference : 
  bool useDb
  string id
  int level
  EnemyDatabase.EnemyData overwrittenData

## WaveData : 
  ActionType actionType
  bool managedByScheduler
  string key
  int count
  float preDelay
  float interval
  int routeIndex
  bool blockFragment
  bool autoPreviewRoute
  bool isUnharmfulAndAlwaysCountAsKilled
  float preDelay
  ActionData[] actions
  float preDelay
  float postDelay
  float maxTimeWaitingForNextWave
  FragmentData[] fragments

## FragmentData : 
  ActionType actionType
  bool managedByScheduler
  string key
  int count
  float preDelay
  float interval
  int routeIndex
  bool blockFragment
  bool autoPreviewRoute
  bool isUnharmfulAndAlwaysCountAsKilled
  float preDelay
  ActionData[] actions

## ActionData : 
  ActionType actionType
  bool managedByScheduler
  string key
  int count
  float preDelay
  float interval
  int routeIndex
  bool blockFragment
  bool autoPreviewRoute
  bool isUnharmfulAndAlwaysCountAsKilled

## GlobalBuffData : 
  string prefabKey
  List<Blackboard.DataPair> blackboard

## PredefinedData : 
  bool hidden
  string alias
  GridPosition position
  SharedConsts.Direction direction
  int initialCnt
  PredefinedCharacter[] characterInsts
  PredefinedCharacter[] tokenInsts
  PredefinedCard[] characterCards
  PredefinedTokenCard[] tokenCards

## PredefinedCharacter : PredefinedInst
  GridPosition position
  SharedConsts.Direction direction

## MapEffectData : 
  string key
  Vector3 offset
  SharedConsts.Direction direction

## TileData : 
  string tileKey
  HeightType heightType
  BuildableType buildableType
  MotionMask passableMask
  List<Blackboard.DataPair> blackboard
  MapEffectData[] effects

## MapData : 
  GridPosition pos
  SharedConsts.Direction direction
  MotionMask blockMask
  TileData[] tiles
  Edge[] blockEdges
  MapEffectData[] effects

## MeetingClueData : 
  string clueId
  string clueName
  string clueType
  int number
  int weight
  string clueType
  int clueNumber
  int receiveTimes
  int receiveBonus
  List<ClueData> clues
  List<ClueTypeData> clueTypes
  List<ReceiveTimeBonus> receiveTimeBonus
  int inventoryLimit
  int outputBasicBonus
  int outputOperatorsBonus
  int cluePointLimit
  int expiredDays
  int transferBonus
  int recycleBonus
  int expiredBonus
  int communicationDuration
  int initiatorBonus
  int participantsBonus
  float monthlyCardBonus
  int weeklyCycle

## ClueData : 
  string clueId
  string clueName
  string clueType
  int number
  int weight

## ClueTypeData : 
  string clueType
  int clueNumber

## MissionTable : 
  Dictionary<string, MissionData> missions
  Dictionary<string, MissionGroup> missionGroups
  Dictionary<string, MissionDailyRewardConf> periodicalRewards
  Dictionary<string, MissionWeeklyRewardConf> weeklyRewards

## MissionData : 
  string id
  string title
  int sortId
  string description
  MissionType type
  List<string> preMissionIds
  string template
  string[] param
  string unlockCondition
  string[] unlockParam
  string missionGroup
  string toPage
  int periodicalPoint
  List<MissionDisplayRewards> rewards
  string backImagePath

## MissionGroup : 
  string id
  string title
  MissionType type
  string preMissionGroup
  int[] period
  List<MissionDisplayRewards> rewards
  string[] missionIds
  long startTs
  long endTs

## MissionDailyRewardConf : 
  string groupId
  string id
  int periodicalPointCost
  MissionType type
  int sortIndex
  int[] period
  List<MissionDisplayRewards> rewards

## MissionWeeklyRewardConf : 
  string groupId
  string id
  int periodicalPointCost
  long beginTime
  long endTime
  MissionType type
  int sortIndex
  List<MissionDisplayRewards> rewards

## MissionDisplayRewards : ISharedItemModel
  ItemType type
  string id
  int count

## NPCUnlock : 
  DataUnlockType unLockType
  string unLockParam
  string unLockString

## NPCData : 
  string npcId
  string npcCharId
  string name
  string appellation
  ProfessionCategory profession
  string illust
  string cv
  string displayNumber
  int team
  string handbookLogo
  Dictionary<string, NPCUnlock> unlockDict

## OpenServerItemData : 
  string itemId
  ItemType itemType
  int count

## ChainLoginData : 
  int order
  OpenServerItemData item
  int colorId

## TotalCheckinData : 
  int order
  OpenServerItemData item
  int colorId

## OpenServerData : 
  MissionGroup openServerMissionGroup
  List<MissionData> openServerMissionData
  List<TotalCheckinData> checkInData
  List<ChainLoginData> chainLoginData
  ChainLoginData finalLoginData

## OpenServerScheduleItem : 
  string id
  int startTs
  int endTs
  string totalCheckinDescption
  string chainLoginDescription
  string charImg

## OpenServerSchedule : 
  List<OpenServerScheduleItem> schedule
  Dictionary<string, OpenServerData> dataMap

## RangeData : 
  string id
  SharedConsts.Direction direction
  List<GridPosition> grids
  List<Rect> boundingBoxes

## RuneData : 
  string key
  LevelData.Difficulty difficultyMask
  ProfessionCategory professionMask
  BuildableType buildableMask
  Blackboard blackboard

## ShopKeeperWord : 
  string id
  string text

## ShopClientData : 
  List<ShopKeeperWord> welcomeWords
  List<ShopKeeperWord> clickWords
  List<ShopRecommendItem> recommendList
  Dictionary<string, ShopCreditUnlockGroup> creditUnlockGroup
  ShopKeeperData shopKeeperData
  List<ShopCarouselData> carousels
  Dictionary<string, ShopUnlockType> shopUnlockDict

## ShopKeeperData : 
  List<ShopKeeperWord> welcomeWords
  List<ShopKeeperWord> clickWords

## ShopRecommendItem : 
  string tagId
  string displayType
  string tagName
  RecommendItemTagTips itemTag
  int orderNum
  long startDatetime
  long endDatetime
  List<ShopRecommendGroup> groupList
  ShopKeeperWord tagWord

## ShopRecommendGroup : 
  int[] recommendGroup
  List<ShopRecommendData> dataList

## ShopRecommendData : 
  string imgId
  int slotIndex
  ShopRouteTarget cmd
  string param1
  string param2
  string skinId
  bool islocked

## ShopCreditUnlockItem : 
  int sortId
  int unlockNum
  string charId

## ShopCreditUnlockGroup : 
  string id
  string index
  long startDateTime
  List<ShopCreditUnlockItem> charDict

## ShopCarouselData : 
  string spriteId
  long startTime
  long endTime
  ShopRouteTarget cmd
  string param1
  string skinId
  List<Item> items

## SpData : 
  SpType spType
  ItemBundle[] levelUpCost
  int maxChargeTime
  int spCost
  int initSp
  float increment

## SkillDataBundle : ISkillData
  string name
  string rangeId
  string description
  SkillType skillType
  SpData spData
  string prefabId
  float duration
  Blackboard blackboard
  string skillId
  string iconId
  bool hidden
  List<LevelData> levels

## CharSkinData : 
  string skinName
  List<string> colorList
  List<string> titleList
  string modelName
  string drawerName
  string skinGroupId
  string skinGroupName
  int skinGroupSortIndex
  string content
  string dialog
  bool overwritePrefab
  string skinOrPrefabId
  string skinId
  string charId
  string tokenSkinId
  DisplaySkin displaySkin

## DisplaySkin : 
  string skinName
  List<string> colorList
  List<string> titleList
  string modelName
  string drawerName
  string skinGroupId
  string skinGroupName
  int skinGroupSortIndex
  string content
  string dialog

## BattleSkin : 
  bool overwritePrefab
  string skinOrPrefabId

## SkinTable : 
  Dictionary<string, CharSkinData> charSkins

## StageData : 
  ItemType type
  string id
  StageDropType dropType
  OccPer occPercent
  float GetPercent
  float CannotGetPercent
  ItemBundle[] firstPassRewards
  List<DisplayRewards> displayRewards
  List<DisplayDetailRewards> displayDetailRewards
  string stageId
  PlayerBattleRank completeState
  StageType stageType
  LevelData.Difficulty difficulty
  List<ConditionDesc> unlockCondition
  string stageId
  string levelId
  string zoneId
  string code
  string name
  string description
  string hardStagedId
  string dangerLevel
  float dangerPoint
  string loadingPicId
  bool canPractice
  bool canBattleReplay
  int apCost
  int apFailReturn
  int diamondOnceDrop
  int practiceTicketCost
  int dailyStageDifficulty
  int expGain
  int goldGain
  int loseExpGain
  int loseGoldGain
  int passFavor
  int completeFavor
  int apProtectTimes
  string displayMainItem
  bool hilightMark
  bool bossMark
  StageDropInfo stageDropInfo
  string mainStageId

## DisplayRewards : 
  ItemType type
  string id
  StageDropType dropType

## DisplayDetailRewards : DisplayRewards
  OccPer occPercent
  float GetPercent
  float CannotGetPercent

## CampaignData : 
  ItemBundle[] firstPassRewards
  List<StageData.DisplayDetailRewards> displayDetailRewards
  int killCnt
  int breakFeeAdd
  ItemBundle[] rewards
  int killCnt
  CampaignDropInfo dropInfo
  int killCnt
  int apFailReturn
  int favor
  int expGain
  int goldGain
  string stageId
  List<GainLadder> gainLadders
  List<BreakRewardLadder> breakLadders
  List<DropLadder> dropLadders
  List<StageData.DisplayRewards> displayRewards

## CampaignDropInfo : 
  ItemBundle[] firstPassRewards
  List<StageData.DisplayDetailRewards> displayDetailRewards

## BreakRewardLadder : 
  int killCnt
  int breakFeeAdd
  ItemBundle[] rewards

## CampaignGroupData : 
  string groupId
  string[] activeCamps
  long startTs
  long endTs

## MapThemeData : 
  string themeId
  string unitColor

## StageTable : 
  Dictionary<string, StageData> stages
  Dictionary<string, CampaignData> campaigns
  Dictionary<string, CampaignGroupData> campaignGroups
  Dictionary<string, MapThemeData> mapThemes

## StoryData : 
  TriggerType type
  string key
  bool useRegex
  string stageId
  PlayerStageState minState
  PlayerStageState maxState
  int minProgress
  int maxProgress
  int minPlayerLevel
  string[] requiredFlags
  string[] excludedFlags
  StageCondition[] requiredStages
  string id
  bool needCommit
  bool repeatable
  bool disabled
  Trigger trigger
  Condition condition
  int setProgress
  string[] setFlags
  ItemBundle[] completedRewards
  bool forceOmitCommit

## StageCondition : 
  string stageId
  PlayerStageState minState
  PlayerStageState maxState

## TalentData : 
  CharacterData.UnlockCondition unlockCondition
  int requiredPotentialRank
  string prefabKey
  string name
  string description
  string rangeId
  Blackboard blackboard

## TipData : IItemWithWeight
  string tip
  float weight
  Category category

## TorappuAudioData : 
  BGMBank[] bgmBanks
  SoundFXBank[] soundFXBanks
  SoundFXCtrlBank[] soundFXCtrlBanks
  SnapshotBank[] snapshotBanks
  BattleVoiceData battleVoice

## SnapshotBank : Bank
  string targetSnapshot
  string hookSoundFxBank
  float delay
  float duration
  Bank targetFxBank

## SnapshotAudioAtom : AudioAtom
  SnapshotBank snapshotBank

## ZoneData : 
  string zoneID
  int zoneIndex
  ZoneType type
  string zoneNameFirst
  string zoneNameSecond
  string zoneNameTitleCurrent
  string zoneNameTitleUnCurrent
  string zoneNameTitleEx
  string zoneNameThird
  string lockedText
  bool canPreview

## WeeklyZoneData : 
  int[] daysOfWeek
  WeeklyType type

## ZoneTable : 
  Dictionary<string, ZoneData> zones
  ListDict<string, WeeklyZoneData> weeklyAdditionInfo

## BindPosition : 
  bool isDynamic
  GameObject bindGameObject
  MonoBehaviour bindComponent
  string bindFieldName
  int bindListIndex

## StateMachine : 
  Action<int> onStarted
  Action<int, int> onStateChanged
  Action<int> onTerminated

## ActivityStageBridge : 
  ActivityBasicInfo basicInfo

## ActivityBasicInfo : 
  string activityId
  ActivityType activityType
  DateTime startTime
  DateTime endTime
  DateTime rewardEndTime
  bool displayOnHome
  string name

## ActivityZoneViewModel : ZoneViewModel
  string activityId

## BattleFinishHomeStateBean : SingletonMonoBehaviour<BattleFinishHomeStateBean>, IStateBean, IDataBindWrapper
  BoolProperty saveAutoBattleProperty
  UIItemDescViewProperty itemDescProperty
  BattleInfoViewModel battleInfoModel
  DropInfoGroupViewModel dropInfoModel
  UIExpBarController.ControlModel expBarControlModel

## BattleInfoViewModel : 
  AttackRangeDescModel attackRange

## DropInfoViewModel : 
  UIItemViewModel itemModel
  bool isFirstDrop
  bool isUnusual
  StageDropType dropType
  PlayerCharacter charInst
  GachaResult gachaResult

## DropInfoGroupViewModel : 
  List<DropInfoViewModel> dropItems
  PlayerBattleRank rank
  float goldRate
  float expRate

## BattleFinishFriendView : MonoBehaviour
  int index

## BattleFinishInfoView : MonoBehaviour
  RectTransform holder
  Text stageCode
  Text stageName
  BattleFinishRankGroup rankGroup
  GameObject fourStarRankGroup
  RectTransform holder
  Text stageCode
  Text stageName

## StageInfoView : ISubInfoView
  RectTransform holder
  Text stageCode
  Text stageName
  BattleFinishRankGroup rankGroup
  GameObject fourStarRankGroup

## CampaignInfoView : ISubInfoView
  RectTransform holder
  Text stageCode
  Text stageName

## CampaignSaveBattleLogCharCardView : MonoBehaviour
  ProfessionCategory profession
  Sprite sprite
  Color color

## AttributeViewModel : 
  int level
  int maxLevel
  float expProgress
  string expDesc
  string maxExpDesc
  int maxHp
  int atk
  int def
  float res
  string respawnTime
  int cost
  EvolvePhase evolvePhase
  ProfessionCategory professionID
  int potentialRank
  int favorPercent
  int favorBattlePhase
  string descrption
  AttributesData favorDelta
  int mainSkillLvl
  string atkSpeed
  string blockNum
  string position
  string tagsContent

## CharacterTalentViewModel : 
  string name
  string content
  CharacterData.UnlockCondition unlockPhase
  TalentUnlockType unlock

## CharacterProfileViewModel : 
  string nickName
  string realName
  RarityRank rarity
  CharacterTalentViewModel[] talentDescs
  string featureDesc
  Sprite campLogo

## CharacterInfoPage : StateEnginePage
  int charInstId
  List<int> charList

## CharacterDetailViewModel : MonoBehaviour, IDataBindWrapper
  AttributeViewProperty attributeProperty
  CharacterProfileViewProperty profileProperty
  SkillGroupViewProperty skillProperty
  BattleInfoViewProperty battleProperty
  CharacterIllustViewProperty illustProperty
  BoolProperty isCharacterLocked
  int charInstId
  string charId
  bool isReachMaxEvolve
  EvolvePhase evolvePhase
  CharacterData charDataCache

## CharacterInfoHomeBean : MonoBehaviour, IStateBean, IDataBindWrapper
  CharacterProfileViewProperty profileProperty
  AttributeViewProperty attributeProperty
  SkillGroupViewProperty skillProperty
  BattleInfoViewProperty battleProperty
  CharacterIllustViewProperty illustProperty
  BoolProperty isCharacterLocked
  int charInstId
  string charId
  bool isReachMaxEvolve

## CharacterInfoPotentialStateBean : MonoBehaviour, IStateBean
  PlayerCharacter chara
  string charaName

## CharacterInfoEvolveStateBean : MonoBehaviour, IStateBean, IDataBindWrapper
  int chrInstId
  string chrRealName
  string charId
  EvolveAttributeViewModel evolveAttrs
  RequireViewModel[] evolveRequires
  string oldIllustId
  CharUISkinStruct oldSkinStruct
  string newIllustId
  CharUISkinStruct newSkinStruct
  bool afterEvolveFlag
  EvolvePhase evolvePhase
  PlayerCharacter cachePlayerData

## EvolveAttributeViewModel : 
  EvolvePhase targetEvolvePhase

## CharacterInfoSelectSkillBean : MonoBehaviour, IStateBean, IDataBindWrapper
  SkillGroupViewProperty skillProperty
  int charInstId
  int skillIndex
  int targetSkillLevel
  int targetSpecialLevel

## RequireViewModel : 
  LvlUpRequireType requireType
  UIItemViewModel itemModel
  string textTitle
  bool isSatisfied
  long currentCount
  EvolvePhase evolvePhase
  long requireCount
  bool showRequireCount

## CharacterInfoUplevelStateBean : MonoBehaviour, IStateBean, IDataBindWrapper
  UplevelAttrViewProperty attrProperty
  UplevelItemGroupViewProperty itemGroupProperty
  int chrInstId
  string charId
  int potentialRank
  int mainSkillLvl

## UplevelAttrViewModel : 
  int level
  int exp
  int maxExp
  long requiredGold
  UplevelAttribute currentAttr
  int currentLevel
  UplevelAttribute targetAttr
  int targetLevel
  int targetExp
  int maxExp
  float currentExpProgress
  float targetExpProgress
  int additionExpValue
  bool isMax
  long requiredGold
  EvolvePhase evolvePhase

## UplevelItemViewModel : 
  bool isDisabled

## UplevelItemGroupViewModel : 
  int maxCount
  UplevelItemViewModel[] cadidateItems

## UplevelItemHeapViewModel : 
  List<UplevelItemHeapCategoryViewModel> selectedCategories

## UplevelItemHeapCategoryViewModel : 
  Sprite itemIcon
  int count
  UIItemViewModel itemModel

## CharacterDetailView : MonoBehaviour
  TrackPointViewProperty potentialTrackProp
  Action onUpLevel
  Action onSkillSelect
  Action onEvolve
  Action OnPotential

## CharacterIllustItem : MonoBehaviour
  Action<int> OnSelect

## CharacterInfoBuildingBuffUnlockNotifyView : UINotifyView<CharacterInfoBuildingBuffUnlockNotifyView.Param>
  string buffId

## CharacterInfoBuildingBuffUpgradeNotifyView : UINotifyView<CharacterInfoBuildingBuffUpgradeNotifyView.Param>
  string buffId

## CharacterInfoLevelUpNotifyView : UINotifyView<CharacterInfoLevelUpNotifyView.Param>
  int level

## CharacterInfoPotentialNotifyView : UINotifyView<CharacterInfoPotentialNotifyView.Param>
  bool isSuc

## CharacterInfoSkillUnlockNotifyView : UINotifyView<CharacterInfoSkillUnlockNotifyView.Param>
  string skillId

## CharacterInfoTalentUnlockNotifyView : UINotifyView<CharacterInfoTalentUnlockNotifyView.Param>
  TalentData talentData

## CharacterInfoPotentialLevelUpItem : MonoBehaviour
  UIItemViewModel itemViewModel
  RequireViewModel requireItem

## CharacterInfoSelectSkillItemView : MonoBehaviour
  Action<int> onToggleClick

## CharacterInfoSelectSkillView : MonoBehaviour
  Action<int> onToggleClick

## CharacterInfoSkillRequireItemView : MonoBehaviour
  Action<int> onItemClicked

## CharacterInfoUpLevelItemCard : MonoBehaviour
  Action<int> onBtnReduceClicked
  Action<int> onItemClicked

## CharacterInfoUplevelItemHeap : DataBinder<UplevelItemHeapViewProperty>
  string itemId
  List<CardItem> itemCards
  CharacterInfoUplevelItemHeapCard view
  int centerPointIndex

## CharacterRepoHomeState : CharacterRepoCommonState
  float scrollPosition
  CharacterFilterViewModel filter
  CharacterSortType sortType

## StateRuntime : 
  string selectedZoneId

## CharacterRepoCardGroupViewModel : 
  bool disableLockAndInSquad

## CharacterRepoStateBean : MonoBehaviour, IStateBean, IDataBindWrapper
  CharacterRepoCardGroupViewProperty cardGroupProperty

## CharacterRepoGridAdapter : UICharacterCardScrollAdapter<CharacterRepoGridAdapter.ViewHolder>
  CharacterRepoCardView panel

## UICharacterSelectState : UIPopupState
  CharSelectStateBean charSelectStateBean

## CardGroupViewModel : CharacterCardGroupViewModel
  bool showSelectOrder
  string noCharText
  Dictionary<int, CharacterCardViewModel> instMap

## CharAttrViewModel : 
  bool isFocused
  int chrInstId
  string realName
  int currentLevel
  int maxLevel
  int maxHp
  int atk
  int def
  int res
  string respawnTimeDesc
  int cost
  int blockNum
  string attackSpeedDesc
  AttackRangeDescModel attackRange
  CharSelectSkillGroupViewModel skillGroupModel

## CharSelectSkillItemViewModel : SkillItemViewModel
  bool isEnabled
  string disableText
  bool isShowSpecLevel

## CharSelectSkillGroupViewModel : 
  string selectedSkillId
  CharSelectSkillItemViewModel[] skills
  int skillAllLevel
  string charId
  bool isEnabled
  string disableText

## CharSelectStateBean : PageComponent, IStateBean, IDataBindWrapper
  bool isSingleMode
  int maxSelectNum
  ListDict<int, string> selectedChars
  List<CharacterCardViewModel> candidates
  CharacterSortType defaultSortType
  bool isConfirm
  List<CharacterCardViewModel> selectedChars
  Input inputClosure
  IntProperty cardSortType
  CharAttrViewProperty attrProperty
  CardGroupViewProperty cardGroupProperty
  Output outputParam
  int maxSelectNum

## CharSelectCardListAdapter : UICharacterCardScrollAdapter<CharSelectCardListAdapter.ViewHolder>
  CharSelectCardView cardView

## CharSelectSkillGroup : MonoBehaviour
  CharSelectSkillGroupViewModel viewModel
  CharSelectSkillGroup closure

## CharacterShowPage : StateEnginePage
  CharacterShowViewModel viewModel

## CharacterShowView : MonoBehaviour
  Action onExit

## CharacterShowModel : MonoBehaviour, IDataBindWrapper, IHotfixable
  AttributeViewProperty attributeProperty
  CharacterProfileViewProperty profileProperty
  BattleInfoViewProperty battleProperty
  string charId
  bool isReachMaxEvolve
  EvolvePhase evolvePhase
  CharacterData charDataCache
  SkillItemViewModel skillViewModel

## CharacterShowViewModel : 
  string skillId
  int specializeLevel
  bool isSharedFlag
  string charId
  int potentialRank
  CharShowSkillData skill
  int mainSkillLvl
  EvolvePhase evolvePhase
  int level
  int favorPoint
  int exp

## CharShowSkillData : 
  string skillId
  int specializeLevel

## BattleInfoCache : Singleton<BattleInfoCache>
  StageId stage
  ISceneParam stageSceneParam
  int playerLevel
  int playerExp
  int playerMaxAp

## Data : 
  StageId stage
  ISceneParam stageSceneParam
  int playerLevel
  int playerExp
  int playerMaxAp

## EvolvePhaseAndLevel : 
  EvolvePhase evolvePhase
  int level

## CharUISkinStruct : 
  string charId
  string skinId

## BasicCharInfoModel : 
  int instId
  string charId
  string skinId
  string name
  RarityRank rarity
  ProfessionCategory profession
  EvolvePhase evolvePhase
  int potentialRank
  string description
  string positionStr
  int level
  float expPercent
  DateTime gainTime
  int cost
  int maxHp
  int atk
  int def
  int magicRes
  int favorPoint

## CharacterCardGroupViewModel : 
  CharacterFilterViewModel filter
  List<int> selectedChrInstIds

## CharacterCardViewModel : IBasicCharInfo
  string portraitId
  string professionIconId
  int mainSkillLvl
  int defaultSkillIndex
  bool isInSquad

## CharacterFilterViewModel : 
  bool isAll

## CharacterFilterElement : 
  CharacterFilterIdent ident
  ProfessionCategory profession

## UICharacterSortFilterStateBean : MonoBehaviour, IStateBean, IDataBindWrapper
  CharacterSortType sortType
  CharacterFilterViewModel filter

## UICharIllustAdditionOffset : MonoBehaviour
  bool enablePos
  Vector2 position
  bool enableSize
  Vector2 size

## UICharRarityImage : MonoBehaviour
  RarityRank rarity
  Sprite sprite

## UICharacterCardPanel : MonoBehaviour
  GameObject[] views
  bool disablePotential
  bool disableSkill

## UICharacterFilterItemOnFloat : MonoBehaviour
  Action<CharacterFilterElement, bool> onFilterChanged

## UICharacterSortTypeItem : MonoBehaviour
  Action<CharacterSortType> onSortTypeChanged

## UIPageController : SingletonMonoBehaviour<UIPageController>, ISingletonNotAutoCreate
  string name
  UIPage pageInst

## UIPageControllerParam : ISceneParam
  UIPageStackParam stackParam

## StateCache : 
  Type stateType
  StateSource source
  object cache

## StateEngineRuntime : 
  List<StateCache> stateRuntimes

## StateTransOptions : 
  bool fastMode

## StateCacheHandler : IStateCacheHandler
  Func<BundleType> onSave
  Action<BundleType> onLoad

## SpriteItem : 
  string guid
  Sprite sprite

## BakeInfo : 
  string id
  string holderName

## UIItemDescViewModel : 
  bool isShowDesc
  float itemCardScale
  bool enableDropRoute

## UIItemViewModel : ISharedItemModel
  string itemId
  string itemIconId
  string stackIconId
  ItemType type
  string name
  string description
  string usage
  string obtainApproach
  int gainExp
  int sortId
  ItemRarity rarity
  RarityRank charRarity
  int furnitureRarity
  List<ItemData.StageDropInfo> stageDrop
  List<ItemData.BuildingProductInfo> buildingProduct
  long maxItemCount
  long selectedCount
  long itemCount

## UIItemCard : MonoBehaviour
  ItemType type
  string itemId
  long count
  Action<int> onItemClick
  Action<int> onBtnReduceClick

## SkillTagViewModel : 
  SkillTagType type
  Color color
  string content

## SkillItemViewModel : 
  string id
  string name
  int spCost
  int initCost
  int specLevel
  bool isUnlocked
  List<SkillTagViewModel> tags
  string desc
  string initialUnlockCond
  int skillAllLevel
  int specializedState
  int trainingSlotLevel

## SkillGroupViewModel : 
  string selectedSkillId
  SkillItemViewModel[] skills
  int skillAllLevel
  string charId

## UISkillTagGroup : MonoBehaviour
  SkillTagType type
  bool isIdle
  UISkillTagView view

## ResultHandler : 
  LoadMaskType loadMaskType
  ConcurrentType concurrentType

## MIMEResultHandler : ResultHandler<MIMEObject>
  MIMECategory category
  Type jsonType

## PlayerSyncStatusViewModel : 
  long ts
  PlayerSyncGoodPurchaseResult goodPurchaseResult
  string announcementVersion

## UISyncDataUtil : Singleton<UISyncDataUtil>
  int missedCount
  DateTime lastSyncTime

## ActionPointViewModel : PageSingleComponent, ITimeWatcher, IPlayerDataListener, IDataBindWrapper, IHotfixable
  IntProperty apProperty
  IntProperty maxApProperty

## ResourceBarViewModel : 
  int resourceFlags
  long gold
  int crystal
  int diamondShard
  int recruitLicense
  int ap
  int maxAp
  int practiseTicket
  int LGG
  int HGG
  int EGG
  int SocialPoint
  int FurnitureCoin
  int convertDiamondShardResult

## RichTextModel : 
  int typeFlags
  bool bold
  bool italic
  int size
  Color color
  string content

## UIPopupState : State
  State otherState
  TransitionType transType
  TransActionListener callback
  TransitionType transType

## UIGainItemCard : MonoBehaviour
  UIItemViewModel model
  float delay
  float itemScaleFactor
  bool isShowEffect

## UIGainItemPage : UIPage
  UIGainItemFloatPanel.Style style
  List<UIItemViewModel> itemModels
  Action onConfirm

## UIExpBarController : 
  int level
  int exp
  int startLevel
  int startExp
  int maxLevel
  Dictionary<int, LevelModel> levelMap

## LevelModel : 
  int level
  int exp

## ControlModel : 
  int startLevel
  int startExp
  int maxLevel
  Dictionary<int, LevelModel> levelMap

## UIInfo : 
  RectTransform transform
  Vector2 anchoredPosition
  Vector2 sizeDelta
  Text text
  int fontSize
  bool isBestFit
  LayoutElement layoutElement
  Vector2 preferredSize
  Vector3 minSize
  LayoutGroup layoutGroup
  Vector4 padding

## EnemyHandBookItemView : MonoBehaviour
  Action<int, EnemyHandBookEverViewModel> onClick
  EnemyHandBookEverViewModel cacheData

## EnemyHandBookEverViewModel : IComparable<EnemyHandBookEverViewModel>
  EnemyHandBookData data
  bool unlockType

## EnemyHandBookShowViewModel : 
  List<EnemyHandBookEverViewModel> enemyList

## EnemyHandBookStateBean : MonoBehaviour, IStateBean, IDataBindWrapper
  EnemyHandBookShowProperty property

## FriendCommonData : 
  string nickName
  string uid
  string serverName
  string nickNumber
  int level
  DateTime lastOnlineTime
  bool recentVisited

## SharedCharData : 
  string skillId
  int specializeLevel
  string charId
  string skinId
  int potentialRank
  SharedCharSkillData[] skills
  int skillIndex
  int mainSkillLvl
  int evolvePhase
  int level
  int favorPoint

## SharedCharSkillData : 
  string skillId
  int specializeLevel

## AssistCharList : 
  int charInstId
  int skillIndex

## FriendData : FriendCommonData
  List<SharedCharData> assistCharList
  List<string> board
  long infoShare

## FriendDataWithNameCard : FriendData
  DateTime registerTs
  string mainStageProgress
  int charCnt
  int furnCnt
  string secretary
  string secretarySkinId
  string resume
  Dictionary<int, int> team

## FriendListStateBean : MonoBehaviour, IStateBean, IDataBindWrapper
  string searchWord
  int selectedAssistIndex
  SharedCharData[] selectedAssist
  TrackPointViewProperty friendTrackProp
  FriendListProperty friendListProperty

## FriendListViewModel : 
  List<FriendSortViewModel> myFriendsIdList
  List<FriendSortViewModel> friendSearchIdList
  List<FriendSortViewModel> friendRequestIdList
  List<FriendStatus> friendSearchState
  List<string> friendAlias
  SharedCharData[] mySharedChar
  string friendSearchData
  bool myFriendsListChangeFlag
  bool friendRequestListChangeFlag
  bool friendSearchResultChangeFlag
  bool myFriendsListRefreshFlag
  bool friendRequestListRefreshFlag
  bool friendSearchResultRefreshFlag
  bool friendAssistChangeFlag
  bool friendAssistUnSaveFlag

## FriendSortViewModel : 
  string uid
  int level
  long infoShare
  bool recentVisited

## NameCardStateBean : MonoBehaviour, IStateBean
  NameCardViewModel nameCardViewModel

## NameCardViewModel : 
  HandbookTeamData teamData
  int teamCount
  int totalCount
  bool isSelf
  string name
  DateTime registerDate
  string nickNameId
  int level
  string id
  string serverName
  string resume
  string lastMissionCode
  int charCount
  int furnCount
  List<NameCardTeamViewModel> teamCountList
  CharUISkinStruct homeIllustChar
  List<AssistCharList> sharedCharDataSelf
  List<SharedCharData> sharedCharDataFriend

## NameCardTeamViewModel : IComparable<NameCardTeamViewModel>
  HandbookTeamData teamData
  int teamCount
  int totalCount

## FriendAssistView : DataBinder<FriendListProperty>
  FriendAssistTab[] _assistTabs

## FriendListItem : MonoBehaviour
  FriendListState state
  FriendListView parentView
  int index

## FriendListItemHolder : 
  FriendListItem item

## FriendListRepoGridAdapter : RecycleLoopScrollAdapter<FriendListItemHolder, KeyValuePair<FriendData, string>>
  FriendListItem panel
  int indexFlag

## FriendListRequestItem : FriendListItem
  Action<FriendData, FriendDealEnum> DealAction

## FriendListSearchItem : FriendListItem
  Action<FriendData> DealAction

## FriendListRequestItemHolder : 
  FriendListRequestItem item

## FriendRequestGridAdapter : RecycleLoopScrollAdapter<FriendListRequestItemHolder, FriendData>
  Action<FriendData, FriendDealEnum> DealAction

## FriendListSearchItemHolder : 
  FriendListSearchItem item

## FriendSearchGridAdapter : RecycleLoopScrollAdapter<FriendListSearchItemHolder, KeyValuePair<FriendData, FriendStatus>>
  Action<FriendData> DealAction

## HandbookTeamIconData : 
  int teamID
  int iconType
  Vector3 iconPos
  Vector3 iconDestination
  Vector3 LargeMark

## HandBookMissionGroup : MonoBehaviour
  UIStringEvent clickEvent

## HandBookMissionStateBean : MonoBehaviour, IStateBean
  List<HandBookMissionViewModel> missionList
  Dictionary<string, HandBookCardViewModel> cardList
  Dictionary<int, HandBookCommonStateBean.HandBookTeamViewModel> friendshipTeamData
  bool isInited

## HandBookMissionViewModel : 
  int teamId
  int teamFavorTotal
  float teamPer
  List<HandBookCardViewModel> viewModelList
  HandbookTeamMission teamMissionData
  int isAvailable

## HandBookCardView : MonoBehaviour
  string m_charId
  float m_lvl
  float m_friendship
  int m_coorX
  int m_coorY
  List<HandBookLineViewModel> lines

## HandBookTeamEditor : MonoBehaviour
  int teamID
  HandBookTeamView teamView
  Transform teamDestination
  Transform teamImage

## HandBookTouchView : MonoBehaviour
  HandBookCommonStateBean statebean

## HandBookCommonLineRender : MonoBehaviour
  HandBookLineViewModel viewModel

## HandBookCardViewModel : 
  string characterKey
  string portraitId
  ProfessionCategory profession
  string displayNumber
  HandBookRank showRank
  bool getFlag
  bool isNPC
  int getConnectFlag
  string nickName
  string realName
  string displayLogo
  int chrinstID
  float favorPercent
  int teamID
  EvolvePhase maxEvolvePhase
  int level

## HandBookCommonStateBean : PageComponent, IStateBean, IDataBindWrapper
  int teamNum
  float friendship
  int friendPoint
  Dictionary<string, HandBookCardViewModel> cardList
  HandBookScrollViewProperty scrollViewModel
  Dictionary<int, HandBookTeamViewModel> friendshipTeamData

## HandBookTeamViewModel : 
  int teamNum
  float friendship
  int friendPoint

## HandBookInfoStateBean : MonoBehaviour, IStateBean, IDataBindWrapper
  List<HandBookInfoTextViewModel> infoList
  List<HandBookStoryViewModel> storyList
  HandBookCardViewModel selectedCard
  CharacterIllustViewProperty illustProperty
  string drawName
  string infoName

## HandBookLineViewModel : 
  int ID
  string point1
  string point2
  int lineType
  int point1NextID
  int point2NextID

## HandBookScrollViewModel : 
  HandBookCardView SelectedCardData
  bool lastSelected
  bool quickAnim

## HandBookInfoTextViewModel : 
  CharWordData sourceData
  List<InfoTextAudio> infoList
  bool unLockorNot
  string unLockString
  DataUnlockType unLockType
  List<CharWordUnlockParam> unLockParam

## HandBookStoryViewModel : 
  List<HandBookStoryViewData.StoryText> stories
  string storyTitle
  bool unlockFlag
  bool initFlag

## AutoPopupItem : 
  AutoPopupType type

## UIMailSenderConfig : MonoBehaviour
  string id
  string name
  Sprite avatar

## SenderInfo : 
  string id
  string name
  Sprite avatar

## HomeMainStateBean : MonoBehaviour, IStateBean, IDataBindWrapper
  string activityOpenId
  TrackPointViewProperty mailTrackProp
  TrackPointViewProperty recruitTrackProp
  TrackPointViewProperty charRepoTrackProp
  TrackPointViewProperty buildingTrackProp
  TrackPointViewProperty missionTrackProp
  TrackPointViewProperty friendTrackProp
  TrackPointViewProperty openServerTrackProp
  TrackPointViewProperty shopTrackProp
  ActivityOnBattleViewProperty actOnBattleProp

## HomeMailDetailStateBean : MonoBehaviour, IStateBean
  MailItemViewModel viewModel
  int index

## HomeMailStateBean : MonoBehaviour, IStateBean, IDataBindWrapper
  MailItemGroupViewProperty mailGroupProperty

## MailItemGroupViewModel : 
  int dataIndex
  List<MailItemViewModel> mails
  List<MailMetaInfo> metaList

## MailItemViewModel : 
  int mailId
  List<UIItemViewModel> gains
  string fromName
  Sprite avatarSprite
  DateTime createTime
  DateTime receiveTime
  DateTime expireTime
  string mailTitle
  string content
  bool isReceived

## MailItemMetaViewModel : 
  int id
  bool state
  DateTime createTime

## ActivityViewEntryProviderGacha : ActivityViewEntryProvider
  SpriteHub spriteHub
  string spriteId
  string gachaPoolId
  int index

## ActivityViewEntryProviderMainStage : ActivityViewEntryProvider
  SpriteHub spriteHub
  string targetZone

## ActivityViewEntryProviderShop : ActivityViewEntryProvider
  SpriteHub spriteHub
  string spriteId
  ShopRouteTarget shopTarget
  string goodId

## ActivityViewEntryProviderTrain : ActivityViewEntryProvider
  SpriteHub spriteHub
  string zoneId

## HomeMailItemView : MonoBehaviour
  Action<int> onMailClick
  Action<int> onMailDetailClick

## HomeMailItemViewHolder : 
  HomeMailItemView item

## HomeMailRecycleAdapter : RecycleLoopScrollAdapter<HomeMailItemViewHolder, MailItemViewModel>
  Action<MailItemViewModel> DealAction

## OpenServerChainLoginItemView : MonoBehaviour
  Action<int> OnGetChainLogin

## OpenServerChainLoginView : MonoBehaviour
  Action<int> OnGetChainLogin

## OpenServerMissionItemView : MonoBehaviour
  Action<string> onGetMission

## OpenServerMissionView : MonoBehaviour
  Action<string> OnGetMissionReward

## OpenServerTotalCheckInItemView : MonoBehaviour
  Action<int> OnGetCheckIn

## OpenServerTotalCheckInView : MonoBehaviour
  Action<int> OnGetCheckIn

## ActivityViewEntryBackup : ActivityViewEntry
  Sprite image

## HomeIllustrateStateBean : MonoBehaviour, IStateBean
  HomeIllustStruct homeIllust
  List<Sprite> spriteList

## HomeIllustrateListItem : MonoBehaviour, IBasicCharInfo
  Action<int> onClick

## HotUpdateViewController : MonoBehaviour
  Image fillImage
  Text thumbText
  HotUpdater.UpdateState state
  GameObject panel

## ItemCardGroupViewModel : 
  List<UIItemViewModel> items

## ItemRepoCardGroupAdapter : RecycleLoopScrollAdapter<ItemRepoCardGroupAdapter.ViewHolder, UIItemViewModel>
  UIItemCard itemCard
  Action<int, UIItemCard> onItemCardClick

## LoginViewController : SingletonMonoBehaviour<LoginViewController>, ISingletonNotAutoCreate
  Action<float> onProgress
  string testUid

## MissionBook : MonoBehaviour
  Canvas canvas
  Sprite background
  MissionDoublePage[] missionBookPages
  bool interactable
  bool enableShadowEffect
  int currentPage
  Image clippingPlane
  Image nextPageClip
  Image shadow
  Image shadowLTR
  Image left
  Image leftNext
  Image right
  Image rightNext
  UnityEvent onFlip
  float otherScale

## MissionSlideView : MonoBehaviour
  Transform maskContainer
  UnityEvent OnFlip
  float otherScale
  Vector3 ans

## MissionModel : PageSingleComponent, IStateBean, IDataBindWrapper
  List<MissionViewModel> startMissions
  MissionViewModel mainMissions
  List<MissionViewModel> branchMissions
  List<MissionViewModel> dailyMissions
  List<MissionViewModel> weeklyMissions
  MissionDailyRewards dailyReward
  Action<MissionType> missionTypeRefresh

## MissionViewModel : 
  string missionText
  string stringPath
  MissionHoldingState state
  int target
  int value
  MissionData data
  List<MissionDisplayRewards> rewardList

## MissionBookPageSimpleConfig : 
  MissionSinglePage pagePrefab
  MissionPageType pageType
  string pageName
  Sprite icon

## MissionBookPageConfig : 
  MissionDoublePage pagePrefab
  MissionPageType pageType
  string pageName

## RecruitPage : StateEnginePage
  bool isNormal
  string targetGachaPool

## BuildInfoViewModel : 
  int buildingNum
  int finishNum

## BuildSlotViewModel : BuildConfigCostViewModel
  DateTime maxFinishTime
  long remainTimeReal
  long remainTimeShow
  int selectCostMinutes
  BuildTagModel[] selectTags

## BuildSlotGroupViewModel : 
  List<BuildSlotViewModel> buildSlots

## BuildTagModel : 
  int tagId
  bool isSpecial
  BuildTagType type
  string content

## BuildConfigRarityViewModel : 
  GachaData.RecruitRange normalRankList
  List<int> specialRankList

## BuildConfigTagGroupViewModel : 
  BuildConfigTagViewModel[] tags
  BuildConfigTagViewModel specialTag

## BuildConfigTagViewModel : 
  int index
  bool isActive
  bool isSpecialTag
  int tagId
  string content
  bool isSelected

## RecruitBuildConfigStateBean : MonoBehaviour, IStateBean, IDataBindWrapper
  bool isConfirmed

## RecruitStateBean : SingletonMonoBehaviour<RecruitStateBean>, ISingletonNotAutoCreate, IStateBean, IDataBindWrapper
  GachaResult[] gachaResult
  GachaController.Output gachaOutput
  BuildSlotGroupViewProperty slotGroupProperty
  BuildInfoViewProperty buildInfoProperty

## RecruitBuildSlotView : MonoBehaviour
  Action<int> fastFinishListener
  Action<int> stopRecruitListener
  Action<int> startRecruitListener
  Action<int> buildTimeUpListener
  Action<int> finishBuildListener
  Action<int> buySlotListener

## RecruitBuyDiamondShardView : PageSingleComponent
  Action<string> action
  string inputPoolId

## RecruitGachaConfirmView : PageSingleComponent
  Action<string> action
  string inputPoolId

## RecruitImageData : 
  List<RecruitImage> imageList
  List<RecruitImage> spinePath

## RecruitImage : 
  RectTransform image
  Vector2 pagePos
  float deltaX

## RecruitGachaItemView : MonoBehaviour
  UIStringEvent onClick
  UIStringEvent onTenClick

## CashItemViewModel : IHotfixable
  CashShopObject cacheData
  bool isDouble

## CashStateBean : MonoBehaviour, IStateBean, IHotfixable
  List<CashItemViewModel> viewModelList

## CashPurchaseOptions : 
  string productId
  Action<PayConfirmOrderResponse> callback

## ShopGetServiceCenter : PageSingleComponent, IHotfixable
  string serviceCode
  long ts
  IShopGetResposne response
  string serviceCode
  long lastTs
  Action<RespType, bool> callback

## DetailCommonViewModel : IHotfixable
  string goodId
  string giftPackageId
  ShopType shopType
  ShopDetailType type
  ShopDetailPriceType priceType
  int price
  int originPrice
  float discount
  long endTime
  int availCount
  string displayName
  ItemBundle soldItem

## DetailGPViewModel : DetailCommonViewModel, IHotfixable
  ItemBundle[] itemList

## DetailMonthlySubViewModel : DetailCommonViewModel, IHotfixable
  PlayerMonthlySubPer playerInfo
  MonthlySubItem subItem

## DetailProgressViewModel : DetailCommonViewModel, IHotfixable
  QCShopObjProgressViewModel viewModel

## CharDetailViewModel : DetailCommonViewModel, IHotfixable
  string charId

## FurnitureDetailViewModel : DetailCommonViewModel, IHotfixable
  string furnitureId
  int originDiamPrice
  int diamPrice
  int originCoinPrice
  int coinPrice

## ShopFurnitureStateBean : MonoBehaviour, IStateBean
  List<BuildingGetFurnitureGoodListResponse.Good> resultList

## ShopGPCommonItemViewModel : IHotfixable
  GPType type
  int priority
  bool isAvail

## ShopGPPeriodItemViewModel : ShopGPCommonItemViewModel, IHotfixable
  PeriodicityGPItem item
  PlayerGoodItemData playerInfo
  long endTime

## ShopGPLevelItemViewModel : ShopGPCommonItemViewModel, IHotfixable
  LevelGPItem item
  PlayerGoodItemData playerInfo

## ShopGPMonthlySubItemViewModel : ShopGPCommonItemViewModel, IHotfixable
  MonthlySubItem item
  PlayerMonthlySubPer playerInfo

## ShopGPOnceItemViewModel : ShopGPCommonItemViewModel, IHotfixable
  NormalGPItem item
  PlayerGoodItemData playerInfo

## ShopGPStateBean : MonoBehaviour, IStateBean, IHotfixable
  List<ShopGPCommonItemViewModel> shopItemList
  List<ShopGPCommonItemViewModel> soldOutItemList

## QCShopExtraViewModel : MonoBehaviour
  List<QCCommonObj> commonObjList

## QCShopObjViewModel : 
  QCObject objData
  PlayerGoodItemData playerShop

## QCShopObjProgressViewModel : 
  QCObject objData
  List<QCProgressGoodItem> progressData
  PlayerGoodProgressData playerShop

## QCCommonObj : 
  int priority
  int number
  ShopQCGoodType goodType
  QCShopObjViewModel commonObj
  QCShopObjProgressViewModel progressObj

## QCShopHighViewModel : MonoBehaviour
  List<QCCommonObj> commonObjList

## QCShopLowViewGroup : MonoBehaviour
  string cacheGroupId

## QCShopLowGroup : 
  string groupId
  bool isLocked
  List<QCCommonObj> objList

## QCShopLowViewModel : MonoBehaviour
  List<QCShopLowGroup> lowGroupList
  string currentGroup

## ShopQCViewModel : IHotfixable
  string charId
  string potentialId
  UIItemViewModel potentialItem
  UIItemViewModel item

## ShopQCConvertStateBean : PageSingleComponent, IStateBean, IHotfixable
  List<ShopQCViewModel> objList
  List<UIItemViewModel> itemList

## ShopRecommendLayoutView : MonoBehaviour
  UIRecommendEvent onClickEvent

## ShopRecommendStateBean : PageSingleComponent, IStateBean, IHotfixable
  List<ShopRecommendViewModel> onShowList
  List<ShopKeeperWord> shopKeeperClickWords
  List<ShopKeeperWord> shopKeeperWelcomeWords
  Dictionary<string, int> resultList

## ShopRecommendViewModel : 
  bool isNew
  ShopRecommendItem recommendItem
  Dictionary<int, ShopRecommendData> imgList

## ShopRecommendTabButton : MonoBehaviour, IHotfixable
  UIStringEvent onClickEvent
  ShopRecommendViewModel cacheData

## ShopKeeperGraphic : MonoBehaviour
  string startAnim
  string idleAnim
  string interactAnim

## ShopPage : StateEnginePage, IBuildingPage, IHotfixable
  ShopRouteTarget targetShop
  string targetGoodId
  bool isParamForBack

## ShopStateItemContainer : PageSingleComponent, IHotfixable
  ShopType overrideBackPressed

## SwitchStateOptions : 
  ShopType overrideBackPressed

## ShopViewModel : IHotfixable
  CommonShopData[] shopData
  ShopType priceType
  long refreshTime

## SkinShopPerItemView : MonoBehaviour
  UIStringEvent clickEvent

## SkinShopStateBean : MonoBehaviour, IStateBean
  List<SkinShopViewModel> skinList

## SkinShopViewModel : 
  bool isAchieved
  string skinId
  ShopSkinItemViewModel shopViewModel
  CharSkinData skinData
  CharUISkinStruct skinStruct
  string skinGroup

## ShopSocialStateBean : MonoBehaviour, IStateBean
  long refreshTime
  List<ShopCreditViewModel> shopCreditList
  Dictionary<string, int> charUnlockState
  bool ableToGet
  int socialFromAssist
  int socialFromDorm
  int creditUsed
  string creditGroup

## ShopCreditViewModel : 
  SocialShopData socialViewModel
  int buyCount

## SocialUnlockStateBean : MonoBehaviour, IStateBean
  Dictionary<string, int> charUnlockState
  string currentGroupId
  Dictionary<int, CreditGroupObjViewModel> groupList
  int maxLength
  int minLength
  float maxPercent
  int creditUsed
  string creditGroup

## CreditCharObjViewModel : 
  bool isGet
  int sortNum
  string charId

## CreditGroupObjViewModel : 
  float linePercent
  int creditProgress
  List<CreditCharObjViewModel> charList

## ShopQCState : ShopCommonState
  QCShopDetailShopEnum currentState

## SkinPage : StateEnginePage
  bool flagFromChar
  List<string> charList
  bool secretaryFlag
  List<ShopSkinItemViewModel> skinGoodList
  List<SkinShopViewModel> skinList
  string focusSkinId

## SkinGroupCommonView : MonoBehaviour
  List<Image> listImage
  int index

## SkinSelectScrollItemView : MonoBehaviour
  int index
  float sortingIndex
  int skinIndex
  string skinId
  Action<float> OnClickEvent

## SkinSelectScrollView : MonoBehaviour, IBeginDragHandler, IDragHandler, IEndDragHandler, IEventSystemHandler
  float m_state

## SkinSelectStateBean : MonoBehaviour, IStateBean
  List<SkinSelectViewModel> viewModelList
  SkinSelectViewModel selectViewModel

## SkinGroupViewModel : 
  string name
  int startIndex
  int endIndex
  string groupId

## SkinSelectViewModel : 
  int index
  SkinState state
  CharSkinData skinData
  int price
  Sprite portraitImage
  Sprite avatarImage
  SkinShopViewModel skinShopData

## SquadSceneParam : ISceneParam
  ISceneParam backParam
  string stageId
  bool isPractice

## SquadPage : StateEnginePage
  StageId stage
  bool isPractice
  bool isAutoBattle

## SquadPromptExcludeCharState : PopupFloatState
  bool isConfirm

## StateBean : IStateBean
  bool isConfirm

## SquadGroupViewModel : 
  int selectedIndex
  SquadViewModel[] squads
  SquadFriendData assistCharModel
  bool isFriendAssist

## SquadHomeStateBean : MonoBehaviour, IStateBean, IDataBindWrapper
  SquadGroupViewProperty squadGroupProperty
  SquadLayoutProperty squadLayoutProperty
  int renameSquadId
  GetFriendAssistCharListResponse friendDataCache
  SquadMode squadMode

## SquadLayoutModel : 
  bool showStartBattle
  bool showSquadGroupPadding

## SquadViewModel : 
  int id
  string name
  SquadItemStruct[] members

## StageSceneParam : ISceneParam
  StateEngineRuntime stageSERuntime
  bool isJumpFromBattleFinish
  List<string> alertsAfterBattle

## StagePreviewState : StageBaseState
  StageId selectedStage
  string focusStageId

## StageZoneSelectState : StageTabBaseState
  string activityId
  string focusedZoneId

## StageZoneState : StageTabBaseState
  string selectedZoneId

## ActivityGroupViewModel : 
  List<ActivityInfoViewModel> activities

## ActivityInfoViewModel : 
  string name
  string zoneId
  Sprite icon

## CampaignViewModel : 
  int killCnt
  int breakFeeAdd
  UIItemViewModel[] rewards
  State state
  int index
  string id
  int curMaxKillCnt
  List<BreakLadderViewModel> breakLadders
  List<StageRewardViewModel> displayRewards

## BreakLadderViewModel : 
  int killCnt
  int breakFeeAdd
  UIItemViewModel[] rewards
  State state
  int index

## PreviewConfigViewModel : 
  string stageId
  bool isAutoBattle
  bool canAutoBattle
  bool shouldAutoBattleHidden
  bool canPractice
  bool canReplayStory
  bool canHardBattle
  bool hasHardToShow
  bool isHard
  int noCostCnt

## StageRewardStateBean : MonoBehaviour, IStateBean
  List<StageRewardDetailViewModel> rewardList
  bool isGet

## StageStateBean : MonoBehaviour, IStateBean, IDataBindWrapper, IHotfixable
  ZoneViewProperty selectedZoneProperty
  PreviewConfigViewProperty previewConfigProperty
  TrackPointViewProperty trainTrackPointProp
  ListDict<ZoneType, ZoneGroupViewProperty> zoneGroups

## StageViewModel : 
  bool isEmpty
  bool isAutoBattle
  string id
  string levelId
  string zoneId
  string stageCode
  string stageName
  string stageDesc
  string hardStageId
  List<StageRewardViewModel> displayRewards
  List<StoryData> replayStoryData
  string dangerDesc
  StageType stageType
  bool isMainProgress
  string mainRewardItem
  string rewardCharId
  bool hasBoss
  bool isHilighted
  int apCost
  int ptCost
  bool isUnlocked
  PlayerStageState stageState
  LevelData.Difficulty stageDifficulty
  bool hasHardToShow
  bool isRecentAutoBattle
  int noCostCnt

## StageRewardViewModel : 
  UIItemViewModel itemModel
  bool isOnce

## StageRewardDetailViewModel : 
  UIItemViewModel itemModel
  bool isOnce
  OccPer occPercent
  StageDropType dropType

## ZoneGroupViewModel : 
  ZoneType zoneType
  string focusZoneId
  List<ZoneViewModel> zones

## ZoneTabGroupViewModel : 
  ZoneTabViewModel mainlineTab
  ZoneTabViewModel weeklyMtlTab
  ZoneTabViewModel weeklyEvolveTab
  ZoneTabViewModel trainingTab
  ZoneTabViewModel campaignTab
  List<ActivityTablViewModel> activityTabs

## ZoneTabViewModel : 
  bool isUnlocked
  bool isSelected
  string id

## ActivityTablViewModel : ZoneTabViewModel
  ActivityBasicInfo activityInfo

## ZoneViewModel : IComparable<ZoneViewModel>
  string lastPlayedStage
  StageViewModel selectedStageNormal
  StageViewModel selectedStageHard
  bool isSelectingHard
  string id
  bool isUnlock
  string defaultFocusStage
  ZoneData zoneData
  ListDict<string, StageViewModel> stages
  ListDict<string, StageViewModel> stageEntries
  SelectedStageViewModel selectedViewModel
  string focusStageId

## SelectedStageViewModel : 
  StageViewModel selectedStageNormal
  StageViewModel selectedStageHard
  bool isSelectingHard

## WeeklyZoneViewModel : ZoneViewModel
  bool isFuncUnLocked
  bool isOpen
  WeekStruct<bool> weekOpenInfo
  WeeklyType weeklyType

## CampaignZoneViewModel : ZoneViewModel
  DateTime nextRefreshDateTime
  ListDict<string, CampaignViewModel> campaigns
  int campaignTotalFee
  int campaignCurrentFee
  CampaignGroupViewModel currentActiveGroup

## CampaignGroupViewModel : 
  DateTime nextRefreshDateTime

## StageActivityLoader : PageSingleComponent
  string activityId
  ActivityStageController newController
  ActivityStageController oldController
  LoadOpt pendingOpt

## StagePreviewCampaignBreakDetailWidget : MonoBehaviour
  IList<UIItemViewModel> itemModels

## MainStageButtonOnMap : StageButtonOnMap
  bool isTraining
  bool isHilighted
  bool hasBoss
  string stageId
  string mainRewardItem
  string rewardCharId
  PlayerStageState stageState
  bool isSelected
  bool isPassed

## StageMainZoneMap : MonoBehaviour
  float start
  float end
  Sprite image
  string startStage
  string endStage

## StageMainZoneMapContainer : DataBinder<ZoneViewProperty>, IStageMainZoneMapController, IPointerUpHandler, IPointerDownHandler, IDragHandler, IEndDragHandler, IEventSystemHandler
  float startVal
  float endVal
  float startTime
  float endTime
  Interpolator.EasingFunction easeFunc

## StageButtonOnMap : MonoBehaviour
  bool isUnlocked
  string stageId
  string name
  string code
  bool isSelected

## StagePreviewInfoBasicPanel : DataBinder<ZoneViewProperty>
  Sprite[] enemySprites
  List<StageRewardViewModel> cardModels

## StageRankViewViaSwitch : MonoBehaviour
  Image icon
  int rank

## StageZoneActivityTabView : StageZoneTabView, IHotfixable
  string iconId
  string timeStr
  string activityName

## StageTrainingButtonOnMap : StageButtonOnMap
  bool isUnlocked
  bool isChainedLocked
  bool isSingleLocked
