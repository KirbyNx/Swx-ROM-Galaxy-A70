.class public Lcom/android/server/sepunion/SemExclusiveTaskManagerService;
.super Lcom/samsung/android/sepunion/ISemExclusiveTaskManager$Stub;
.source "SemExclusiveTaskManagerService.java"

# interfaces
.implements Lcom/android/server/sepunion/AbsSemSystemService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;,
        Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;,
        Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;,
        Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;
    }
.end annotation


# static fields
.field private static final A11Y_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.accessibility"

.field private static final AIR_MOTION_ENGINE:Ljava/lang/String; = "air_motion_engine"

.field private static final AIR_MOTION_WAKE_UP:Ljava/lang/String; = "air_motion_wake_up"

.field private static final ASSISTANT_MENU:Ljava/lang/String; = "assistant_menu"

.field public static final BABYCRYING_START_TYPE:I = 0x1

.field private static final BLUE_LIGHT_FILTER:Ljava/lang/String; = "blue_light_filter"

.field public static final BROADCAST_BABYCRYING_START:Ljava/lang/String; = "com.samsung.settings.action.sound_detector.start"

.field public static final BROADCAST_DOORBELL_START:Ljava/lang/String; = "com.samsung.settings.action.doorbell_detector.start"

.field public static final BROADCAST_ONE_HAND_MODE:Ljava/lang/String; = "com.samsung.intent.action.ONEHAND_REDUCE_SCREEN_STATUS"

.field public static final BROADCAST_TURN_OFF_ALL_SOUND:Ljava/lang/String; = "android.settings.ALL_SOUND_MUTE"

.field private static final COLOR_ADJUSTMENT_DEFAULT:I = 0x2

.field private static final COLOR_ADJUSTMENT_GRAY_SCALE:I = 0x0

.field private static final COLOR_BLIND:Ljava/lang/String; = "color_blind"

.field private static final COLOR_LENS:Ljava/lang/String; = "color_lens"

.field public static final COMPONENT_NAME_ASSISTANT_MENU:Ljava/lang/String; = "com.samsung.accessibility/.assistantmenu.serviceframework.AssistantMenuService"

.field public static final COMPONENT_NAME_GOOGLE_TALKBACK:Ljava/lang/String; = "com.google.android.marvin.talkback/.TalkBackService"

.field public static final COMPONENT_NAME_INTERACTION_CONTROL:Ljava/lang/String; = "com.samsung.accessibility/.interactioncontrol.AccessControlMainService"

.field public static final COMPONENT_NAME_MAGNIFICATION:Ljava/lang/String; = "com.android.server.accessibility.MagnificationController"

.field public static final COMPONENT_NAME_TALKBACK_SE:Ljava/lang/String; = "com.samsung.android.accessibility.talkback/com.samsung.android.marvin.talkback.TalkBackService"

.field public static final COMPONENT_NAME_UNIVERSAL_SWITCH:Ljava/lang/String; = "com.samsung.accessibility/.universalswitch.UniversalSwitchService"

.field public static final DOORBELL_START_TYPE:I = 0x2

.field private static final EASY_MUTE:Ljava/lang/String; = "easy_mute"

.field private static final ENABLED_ACCESSIBILITY_SERVICES_SEPARATOR:C = ':'

.field private static final GLOBAL:I = 0x3

.field private static final INTENT_NAME_UPDATE_MY_A11Y_NOTI:Ljava/lang/String; = "com.samsung.accessibility.UPDATE_MY_A11Y_NOTI"

.field private static final INTERACTION_CONTROL:Ljava/lang/String; = "interaction_control"

.field private static final KEY_A11Y_SETTINGS_RESET:Ljava/lang/String; = "accreset_state"

.field private static final MAGNIFICATION_ACTIVATED:Ljava/lang/String; = "magnification_gesture"

.field private static final MAGNIFICATION_SHORTCUT:Ljava/lang/String; = "magnification_shortcut"

.field private static final ONE_HANDED_MODE:Ljava/lang/String; = "one_handed_mode"

.field public static final PACKAGE_BIXBY_WAKEUP:Ljava/lang/String; = "com.samsung.android.bixby.wakeup"

.field private static final REMOVE_ANIMATION:Ljava/lang/String; = "remove_animation"

.field private static final SECURE:I = 0x2

.field private static final SETTINGS_SUBSTRING_COUNT:I = 0x13

.field private static final SOUND_DETECTOR_BABY_CRY:Ljava/lang/String; = "sound_detector"

.field private static final SOUND_DETECTOR_DOOR_BELL:Ljava/lang/String; = "doorbell_detector"

.field public static final SOUND_DETECTOR_SET_START_TYPE:Ljava/lang/String; = "setStartType"

.field private static final SYSTEM:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final TALKBACK:Ljava/lang/String; = "talkback"

.field private static final TALKBACK_SE:Ljava/lang/String; = "talkback_se"

.field private static final TURN_OFF_ALL_SOUND:Ljava/lang/String; = "mute_all_sound"

.field private static final UNIVERSAL_SWITCH:Ljava/lang/String; = "universal_switch"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mExclusiveTaskObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field mMagnificationShortcut:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTaskMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;",
            ">;"
        }
    .end annotation
.end field

.field mTaskMapByKey:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;",
            ">;"
        }
    .end annotation
.end field

.field mUserStatus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mUserSwitchedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 73
    const-class v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .line 1039
    invoke-direct {p0}, Lcom/samsung/android/sepunion/ISemExclusiveTaskManager$Stub;-><init>()V

    .line 128
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mHandler:Landroid/os/Handler;

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mUserStatus:Ljava/util/HashMap;

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMap:Ljava/util/HashMap;

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMapByKey:Ljava/util/HashMap;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mMagnificationShortcut:Ljava/util/ArrayList;

    .line 134
    new-instance v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$1;-><init>(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mUserSwitchedReceiver:Landroid/content/BroadcastReceiver;

    .line 259
    new-instance v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$2;-><init>(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mExclusiveTaskObserver:Landroid/database/ContentObserver;

    .line 1040
    iput-object p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 1041
    sget-object v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    const-string v1, "SemExclusiveTaskManagerService start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    invoke-direct {p0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->init()V

    .line 1043
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->userSwitch(I)V

    .line 1045
    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mUserSwitchedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1047
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 72
    sget-object v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/SemExclusiveTaskManagerService;
    .param p1, "x1"    # I

    .line 72
    invoke-direct {p0, p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->userSwitch(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;I)Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/sepunion/SemExclusiveTaskManagerService;
    .param p1, "x1"    # I

    .line 72
    invoke-direct {p0, p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->getUserStatus(I)Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    .line 72
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;Ljava/lang/String;Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/sepunion/SemExclusiveTaskManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->proccessExclusiveTask(Ljava/lang/String;Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V

    return-void
.end method

.method private executePostProccess(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;ZLcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V
    .registers 13
    .param p1, "task"    # Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;
    .param p2, "status"    # Z
    .param p3, "userStatus"    # Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;

    .line 474
    sget-object v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executePostProccess() name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # invokes: Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->getName()Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->access$300(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    # invokes: Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->getName()Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->access$300(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const-string/jumbo v3, "sound_detector"

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    sparse-switch v1, :sswitch_data_350

    :cond_35
    goto/16 :goto_c5

    :sswitch_37
    const-string v1, "easy_mute"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    move v0, v6

    goto/16 :goto_c6

    :sswitch_42
    const-string v1, "doorbell_detector"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    const/16 v0, 0x8

    goto/16 :goto_c6

    :sswitch_4e
    const-string v1, "color_blind"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    move v0, v5

    goto/16 :goto_c6

    :sswitch_59
    const-string v1, "color_lens"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    move v0, v4

    goto :goto_c6

    :sswitch_63
    const-string/jumbo v1, "interaction_control"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    const/4 v0, 0x6

    goto :goto_c6

    :sswitch_6e
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    const/4 v0, 0x7

    goto :goto_c6

    :sswitch_76
    const-string v1, "assistant_menu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    move v0, v7

    goto :goto_c6

    :sswitch_80
    const-string/jumbo v1, "mute_all_sound"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    move v0, v2

    goto :goto_c6

    :sswitch_8b
    const-string v1, "blue_light_filter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    const/16 v0, 0xa

    goto :goto_c6

    :sswitch_96
    const-string/jumbo v1, "magnification_shortcut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    const/16 v0, 0xc

    goto :goto_c6

    :sswitch_a2
    const-string/jumbo v1, "one_handed_mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    const/4 v0, 0x5

    goto :goto_c6

    :sswitch_ad
    const-string/jumbo v1, "remove_animation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    const/16 v0, 0x9

    goto :goto_c6

    :sswitch_b9
    const-string/jumbo v1, "magnification_gesture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    const/16 v0, 0xb

    goto :goto_c6

    :goto_c5
    const/4 v0, -0x1

    :goto_c6
    const/4 v1, 0x0

    const-string v8, "android.intent.action.MAIN"

    packed-switch v0, :pswitch_data_386

    goto/16 :goto_34f

    .line 624
    :pswitch_ce
    const-string v0, "accessibility_display_magnification_enabled"

    const-string v1, "com.android.server.accessibility.MagnificationController"

    if-eqz p2, :cond_112

    .line 626
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d5
    iget-object v4, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mMagnificationShortcut:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_10b

    .line 627
    iget-object v4, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mMagnificationShortcut:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_f7

    .line 628
    iget-object v4, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget v5, p3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    invoke-static {v4, v0, v7, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_108

    .line 630
    :cond_f7
    iget-object v4, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mMagnificationShortcut:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v4, v5, v1}, Lcom/android/internal/accessibility/util/ShortcutUtils;->optInValueToSettings(Landroid/content/Context;ILjava/lang/String;)V

    .line 626
    :goto_108
    add-int/lit8 v3, v3, 0x1

    goto :goto_d5

    .line 633
    .end local v3    # "i":I
    :cond_10b
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mMagnificationShortcut:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_34f

    .line 636
    :cond_112
    iget-object v3, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3, v7, v1}, Lcom/android/internal/accessibility/util/ShortcutUtils;->isComponentIdExistingInSettings(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_128

    .line 637
    iget-object v3, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mMagnificationShortcut:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    iget-object v3, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3, v7, v1}, Lcom/android/internal/accessibility/util/ShortcutUtils;->optOutValueFromSettings(Landroid/content/Context;ILjava/lang/String;)V

    .line 640
    :cond_128
    iget-object v3, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3, v5, v1}, Lcom/android/internal/accessibility/util/ShortcutUtils;->isComponentIdExistingInSettings(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13e

    .line 641
    iget-object v3, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mMagnificationShortcut:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    iget-object v3, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3, v5, v1}, Lcom/android/internal/accessibility/util/ShortcutUtils;->optOutValueFromSettings(Landroid/content/Context;ILjava/lang/String;)V

    .line 644
    :cond_13e
    iget-object v3, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3, v4, v1}, Lcom/android/internal/accessibility/util/ShortcutUtils;->isComponentIdExistingInSettings(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_154

    .line 645
    iget-object v3, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mMagnificationShortcut:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    iget-object v3, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3, v4, v1}, Lcom/android/internal/accessibility/util/ShortcutUtils;->optOutValueFromSettings(Landroid/content/Context;ILjava/lang/String;)V

    .line 649
    :cond_154
    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v3, p3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    invoke-static {v1, v0, v6, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v7, :cond_34f

    .line 650
    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mMagnificationShortcut:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    invoke-static {v1, v0, v6, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_34f

    .line 614
    :pswitch_178
    if-nez p2, :cond_34f

    .line 615
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 616
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_185

    .line 617
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->setMagnificationDisactivate()V

    .line 619
    .end local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    :cond_185
    goto/16 :goto_34f

    .line 602
    :pswitch_187
    :try_start_187
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 603
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.bluelightfilter"

    const-string v3, "com.samsung.android.bluelightfilter.BlueLightFilterService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 605
    const-string v1, "BLUE_LIGHT_FILTER_SERVICE_TYPE"

    if-eqz p2, :cond_19f

    const/16 v2, 0x15

    goto :goto_1a1

    :cond_19f
    const/16 v2, 0x16

    :goto_1a1
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 606
    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_1ab
    .catch Ljava/lang/Exception; {:try_start_187 .. :try_end_1ab} :catch_1ae

    .line 609
    nop

    .end local v0    # "intent":Landroid/content/Intent;
    goto/16 :goto_34f

    .line 607
    :catch_1ae
    move-exception v0

    .line 608
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    const-string v2, "error during starting BlueLightFilterService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_34f

    .line 579
    :pswitch_1b8
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 580
    .local v0, "wm":Landroid/view/IWindowManager;
    if-eqz p2, :cond_1bf

    goto :goto_1c1

    :cond_1bf
    const/high16 v1, 0x3f800000    # 1.0f

    .line 582
    .local v1, "scale":F
    :goto_1c1
    :try_start_1c1
    invoke-interface {v0, v6, v1}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 583
    invoke-interface {v0, v7, v1}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 584
    invoke-interface {v0, v5, v1}, Landroid/view/IWindowManager;->setAnimationScale(IF)V
    :try_end_1ca
    .catch Landroid/os/RemoteException; {:try_start_1c1 .. :try_end_1ca} :catch_1cb

    .line 587
    goto :goto_1d3

    .line 585
    :catch_1cb
    move-exception v2

    .line 586
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    const-string v4, "error during calling setAnimationScale"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1d3
    const-string/jumbo v2, "reduce_animations"

    if-eqz p2, :cond_1f2

    .line 590
    iget-object v3, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget v4, p3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    invoke-static {v3, v2, v6, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mPreReduceAnimationValue:I

    .line 591
    iget-object v3, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget v4, p3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    invoke-static {v3, v2, v7, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_201

    .line 593
    :cond_1f2
    iget v3, p3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mPreReduceAnimationValue:I

    if-nez v3, :cond_201

    .line 594
    iget-object v3, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget v4, p3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    invoke-static {v3, v2, v6, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 598
    .end local v0    # "wm":Landroid/view/IWindowManager;
    .end local v1    # "scale":F
    :cond_201
    :goto_201
    goto/16 :goto_34f

    .line 553
    :pswitch_203
    # invokes: Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->getName()Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->access$300(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_215

    .line 554
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.settings.action.sound_detector.start"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "broadcastIntent":Landroid/content/Intent;
    goto :goto_21c

    .line 556
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    :cond_215
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.settings.action.doorbell_detector.start"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 558
    .restart local v0    # "broadcastIntent":Landroid/content/Intent;
    :goto_21c
    const-string v1, "com.samsung.android.bixby.wakeup"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 561
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 562
    .local v1, "serviceIntent":Landroid/content/Intent;
    # invokes: Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->getName()Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->access$300(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string/jumbo v3, "setStartType"

    if-eqz v2, :cond_23c

    .line 563
    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_23f

    .line 565
    :cond_23c
    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 567
    :goto_23f
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.accessibility"

    const-string v4, "com.samsung.accessibility.sounddetector.service.SoundDetectService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 570
    if-eqz p2, :cond_255

    .line 571
    iget-object v2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto :goto_25c

    .line 573
    :cond_255
    iget-object v2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    .line 576
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    .end local v1    # "serviceIntent":Landroid/content/Intent;
    :goto_25c
    goto/16 :goto_34f

    .line 540
    :pswitch_25e
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 541
    .local v0, "acIntent":Landroid/content/Intent;
    const-string v1, "com.samsung.accessibility/.interactioncontrol.AccessControlMainService"

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 542
    if-eqz p2, :cond_276

    .line 543
    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto :goto_27d

    .line 545
    :cond_276
    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    .line 548
    .end local v0    # "acIntent":Landroid/content/Intent;
    :goto_27d
    goto/16 :goto_34f

    .line 533
    :pswitch_27f
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.ONEHAND_REDUCE_SCREEN_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 534
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "is_enabled"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 535
    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 537
    .end local v0    # "intent":Landroid/content/Intent;
    goto/16 :goto_34f

    .line 525
    :pswitch_293
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ALL_SOUND_MUTE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 526
    .restart local v0    # "intent":Landroid/content/Intent;
    move v1, p2

    .line 527
    .local v1, "value":I
    const-string/jumbo v2, "mute"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 528
    iget-object v2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->SEM_ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 530
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "value":I
    goto/16 :goto_34f

    .line 510
    :pswitch_2aa
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 511
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz p2, :cond_2d2

    .line 512
    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    const-string v3, "color_lens_type"

    invoke-static {v1, v3, v6, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 514
    .local v1, "color":I
    iget-object v2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v3, p3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    const-string v4, "color_lens_opacity"

    invoke-static {v2, v4, v6, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 516
    .local v2, "opacity":I
    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityManager;->semEnableMdnieColorFilter(II)Z

    .line 517
    .end local v1    # "color":I
    .end local v2    # "opacity":I
    goto :goto_2d5

    .line 519
    :cond_2d2
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->semDisableMdnieColorFilter()Z

    .line 522
    .end local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    :goto_2d5
    goto/16 :goto_34f

    .line 494
    :pswitch_2d7
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 496
    .restart local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    iget-object v2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v3, p3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    const-string v4, "color_adjustment_type"

    invoke-static {v2, v4, v5, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 497
    .local v2, "adjustmentType":I
    if-nez v2, :cond_2f3

    .line 499
    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->setGrayScale(Landroid/content/Context;Z)V

    goto :goto_309

    .line 501
    :cond_2f3
    iget-object v3, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3, v6}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->setGrayScale(Landroid/content/Context;Z)V

    .line 502
    iget-object v3, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget v4, p3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    const-string v5, "color_blind_user_parameter"

    invoke-static {v3, v5, v1, v4}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v1

    .line 504
    .local v1, "userParameter":F
    invoke-virtual {v0, p2, v1}, Landroid/view/accessibility/AccessibilityManager;->semSetMdnieColorBlind(ZF)Z

    .line 507
    .end local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .end local v1    # "userParameter":F
    .end local v2    # "adjustmentType":I
    :goto_309
    goto :goto_34f

    .line 482
    :pswitch_30a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 483
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.accessibility/.assistantmenu.serviceframework.AssistantMenuService"

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 485
    if-eqz p2, :cond_326

    .line 486
    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto :goto_331

    .line 488
    :cond_326
    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    .line 491
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_331
    goto :goto_34f

    .line 477
    :pswitch_332
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    const-string/jumbo v2, "motion_merged_mute_pause"

    invoke-static {v0, v2, p2, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 478
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    const-string/jumbo v2, "surface_palm_touch"

    invoke-static {v0, v2, p2, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 479
    nop

    .line 658
    :cond_34f
    :goto_34f
    return-void

    :sswitch_data_350
    .sparse-switch
        -0x677b43b3 -> :sswitch_b9
        -0x4f32c677 -> :sswitch_ad
        -0x22f0b665 -> :sswitch_a2
        -0x119ca23e -> :sswitch_96
        -0x76e157a -> :sswitch_8b
        0x9fe6a4b -> :sswitch_80
        0xf1f7620 -> :sswitch_76
        0x107740f6 -> :sswitch_6e
        0x2753a830 -> :sswitch_63
        0x4cdb505a -> :sswitch_59
        0x4e04eb79 -> :sswitch_4e
        0x5616ee94 -> :sswitch_42
        0x72a6d836 -> :sswitch_37
    .end sparse-switch

    :pswitch_data_386
    .packed-switch 0x0
        :pswitch_332
        :pswitch_30a
        :pswitch_2d7
        :pswitch_2aa
        :pswitch_293
        :pswitch_27f
        :pswitch_25e
        :pswitch_203
        :pswitch_203
        :pswitch_1b8
        :pswitch_187
        :pswitch_178
        :pswitch_ce
    .end packed-switch
.end method

.method private getA11yServiceTask(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;
    .registers 10
    .param p1, "userStatus"    # Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;

    .line 340
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->getEnabledServicesFromSettings(Landroid/content/Context;Z)Ljava/util/Set;

    move-result-object v0

    .line 341
    .local v0, "oldServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->getEnabledServicesFromSettings(Landroid/content/Context;Z)Ljava/util/Set;

    move-result-object v1

    .line 343
    .local v1, "newServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    sget-object v2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "last a11y count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    sget-object v2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current a11y count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 347
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v3, p1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    .line 346
    const-string v4, "enabled_accessibility_services"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mPreA11yServiceValue:Ljava/lang/String;

    .line 349
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_b6

    .line 350
    sget-object v2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    const-string v3, "a11y count hasn\'t changed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 352
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    :goto_69
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 353
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 354
    .local v3, "name":Landroid/content/ComponentName;
    sget-object v5, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "oldServices : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    .end local v3    # "name":Landroid/content/ComponentName;
    goto :goto_69

    .line 357
    :cond_8d
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 358
    :goto_91
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b5

    .line 359
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 360
    .restart local v3    # "name":Landroid/content/ComponentName;
    sget-object v5, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "newServices : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    .end local v3    # "name":Landroid/content/ComponentName;
    goto :goto_91

    .line 362
    :cond_b5
    return-object v4

    .line 365
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    :cond_b6
    const/4 v2, 0x0

    .line 366
    .local v2, "a11yName":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    if-le v3, v5, :cond_d1

    .line 367
    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 368
    sget-object v3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "new a11y service is on"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-direct {p0, v1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->getChangedA11yServiceName(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    goto :goto_e0

    .line 371
    :cond_d1
    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 372
    sget-object v3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "old a11y service is off"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-direct {p0, v0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->getChangedA11yServiceName(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    .line 376
    :goto_e0
    if-eqz v2, :cond_eb

    .line 377
    iget-object v3, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;

    return-object v3

    .line 380
    :cond_eb
    return-object v4
.end method

.method private getChangedA11yServiceName(Ljava/util/Set;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 386
    .local p1, "services":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 387
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_74

    .line 388
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 389
    .local v1, "name":Landroid/content/ComponentName;
    sget-object v2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.android.accessibility.talkback/com.samsung.android.marvin.talkback.TalkBackService"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 391
    sget-object v2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "talkback se status has changed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const-string/jumbo v2, "talkback_se"

    return-object v2

    .line 393
    :cond_43
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.google.android.marvin.talkback/.TalkBackService"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 394
    sget-object v2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "talkback status has changed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const-string/jumbo v2, "talkback"

    return-object v2

    .line 396
    :cond_5b
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.accessibility/.universalswitch.UniversalSwitchService"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 397
    sget-object v2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "universal switch status has changed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const-string/jumbo v2, "universal_switch"

    return-object v2

    .line 400
    .end local v1    # "name":Landroid/content/ComponentName;
    :cond_73
    goto :goto_4

    .line 402
    :cond_74
    const/4 v1, 0x0

    return-object v1
.end method

.method private getUserStatus(I)Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;
    .registers 5
    .param p1, "userId"    # I

    .line 168
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mUserStatus:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 169
    sget-object v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no user status for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v0, 0x0

    return-object v0

    .line 173
    :cond_25
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mUserStatus:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;

    return-object v0
.end method

.method private hasExclusiveRelation(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;Ljava/lang/String;)Z
    .registers 9
    .param p1, "task"    # Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;
    .param p2, "exclusiveName"    # Ljava/lang/String;

    .line 206
    const/4 v0, 0x1

    .line 208
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;

    .line 209
    .local v1, "exclusiveTask":Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;
    const/4 v2, 0x0

    const-string v3, "### "

    if-nez v1, :cond_28

    .line 210
    sget-object v4, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isn\'t exist in mTaskMap"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return v2

    .line 214
    :cond_28
    # getter for: Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->exclusiveListSet:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->access$200(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/util/HashSet;

    move-result-object v4

    # invokes: Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->getName()Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->access$300(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_57

    .line 215
    sget-object v4, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # invokes: Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->getName()Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->access$300(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " doesn\'t exist in exclusiveListSet of "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return v2

    .line 218
    :cond_57
    return v0
.end method

.method private init()V
    .registers 3

    .line 156
    sget-object v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "init()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-direct {p0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->readExclusiveRelation()V

    .line 160
    invoke-direct {p0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->verifyExclusiveRelation()Z

    .line 162
    invoke-direct {p0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->proccessExceptionalCases()V

    .line 164
    invoke-direct {p0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->registerExclusiveTaskObserver()V

    .line 165
    return-void
.end method

.method private proccessExceptionalCases()V
    .registers 4

    .line 223
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMap:Ljava/util/HashMap;

    const-string/jumbo v1, "talkback_se"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;

    .line 224
    .local v0, "tempTask":Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;
    if-eqz v0, :cond_12

    .line 225
    const-string v1, "com.samsung.android.accessibility.talkback/com.samsung.android.marvin.talkback.TalkBackService"

    iput-object v1, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->componentName:Ljava/lang/String;

    goto :goto_1a

    .line 227
    :cond_12
    sget-object v1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "mTaskMap hasn\'t COMPONENT_NAME_TALKBACK_SE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :goto_1a
    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMap:Ljava/util/HashMap;

    const-string/jumbo v2, "universal_switch"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;

    .line 230
    if-eqz v0, :cond_2d

    .line 231
    const-string v1, "com.samsung.accessibility/.universalswitch.UniversalSwitchService"

    iput-object v1, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->componentName:Ljava/lang/String;

    goto :goto_35

    .line 233
    :cond_2d
    sget-object v1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "mTaskMap hasn\'t COMPONENT_NAME_UNIVERSAL_SWITCH"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :goto_35
    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMap:Ljava/util/HashMap;

    const-string/jumbo v2, "talkback"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;

    .line 236
    if-eqz v0, :cond_48

    .line 237
    const-string v1, "com.google.android.marvin.talkback/.TalkBackService"

    iput-object v1, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->componentName:Ljava/lang/String;

    goto :goto_50

    .line 239
    :cond_48
    sget-object v1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "mTaskMap hasn\'t COMPONENT_NAME_GOOGLE_TALKBACK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :goto_50
    return-void
.end method

.method private proccessExclusiveTask(Ljava/lang/String;Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V
    .registers 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userStatus"    # Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;

    .line 293
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMapByKey:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;

    .line 294
    .local v0, "task":Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;
    if-nez v0, :cond_12

    .line 295
    sget-object v1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    const-string v2, "### proccessExclusiveTask() : task is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return-void

    .line 300
    :cond_12
    iget-boolean v1, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mIsA11yReset:Z

    if-eqz v1, :cond_25

    # invokes: Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->getType()I
    invoke-static {v0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->access$700(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_25

    .line 301
    sget-object v1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    const-string v2, "### ignore changed a11y settings"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return-void

    .line 306
    :cond_25
    # invokes: Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->getType()I
    invoke-static {v0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->access$700(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5e

    .line 307
    sget-object v1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enabled_accessibility_service : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 308
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget v4, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    .line 307
    const-string v5, "enabled_accessibility_services"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-direct {p0, p2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->getA11yServiceTask(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;

    move-result-object v0

    .line 310
    if-nez v0, :cond_5e

    .line 311
    sget-object v1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    const-string v2, "### no samsung a11y service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    return-void

    .line 316
    :cond_5e
    # invokes: Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->getSettingsStatus(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)Z
    invoke-static {v0, p2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->access$800(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)Z

    move-result v1

    .line 318
    .local v1, "status":Z
    if-eqz v1, :cond_68

    .line 319
    invoke-direct {p0, v0, p2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->proccessTurningOnTask(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V

    goto :goto_6b

    .line 321
    :cond_68
    invoke-direct {p0, v0, p2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->proccessTurningOffTask(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V

    .line 325
    :goto_6b
    iget-object v2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$3;

    invoke-direct {v3, p0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$3;-><init>(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 335
    return-void
.end method

.method private proccessTurningOffTask(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V
    .registers 11
    .param p1, "task"    # Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;
    .param p2, "userStatus"    # Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;

    .line 449
    sget-object v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "proccessTurningOffTask() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # invokes: Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->getName()Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->access$300(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v0, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mExclusiveTaskMap:Ljava/util/HashMap;

    # invokes: Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->getName()Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->access$300(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 452
    sget-object v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # invokes: Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->getName()Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->access$300(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is in mExclusiveTaskMap"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v0, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mExclusiveTaskMap:Ljava/util/HashMap;

    # invokes: Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->getName()Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->access$300(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;

    .line 455
    .local v0, "exclusiveTask":Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;
    iget-object v1, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;->manipulatedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 456
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 457
    .local v2, "i":I
    :goto_59
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a0

    .line 458
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 459
    .local v3, "taskName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;

    .line 460
    .local v4, "tempTask":Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;
    # invokes: Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->canTurnOnFeature(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)Z
    invoke-static {v4, p2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->access$1200(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)Z

    move-result v5

    if-eqz v5, :cond_9f

    .line 461
    sget-object v5, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "turn on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " for exclusive task name : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # invokes: Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->getName()Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->access$300(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const/4 v5, 0x1

    # invokes: Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->turnOnOff(ZLcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V
    invoke-static {v4, v5, p2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->access$1100(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;ZLcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V

    .line 464
    invoke-direct {p0, v4, v5, p2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->executePostProccess(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;ZLcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V

    .line 466
    .end local v3    # "taskName":Ljava/lang/String;
    .end local v4    # "tempTask":Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;
    :cond_9f
    goto :goto_59

    .line 468
    :cond_a0
    iget-object v3, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mExclusiveTaskMap:Ljava/util/HashMap;

    # invokes: Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->getName()Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->access$300(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    .end local v0    # "exclusiveTask":Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "i":I
    :cond_a9
    return-void
.end method

.method private proccessTurningOnTask(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V
    .registers 11
    .param p1, "task"    # Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;
    .param p2, "userStatus"    # Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;

    .line 408
    sget-object v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "proccessTurningOnTask() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # invokes: Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->getName()Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->access$300(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    new-instance v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;-><init>(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;Lcom/android/server/sepunion/SemExclusiveTaskManagerService$1;)V

    .line 410
    .local v0, "newExclusive":Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;
    # invokes: Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->getName()Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->access$300(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;->name:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;->access$1002(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;Ljava/lang/String;)Ljava/lang/String;

    .line 412
    # getter for: Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->exclusiveListSet:Ljava/util/HashSet;
    invoke-static {p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->access$200(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 413
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e4

    .line 414
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 415
    .local v2, "exclusiveName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;

    .line 416
    .local v3, "tempTask":Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;
    if-eqz v3, :cond_e2

    # invokes: Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->getSettingsStatus(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)Z
    invoke-static {v3, p2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->access$800(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)Z

    move-result v4

    if-eqz v4, :cond_e2

    .line 419
    iget-object v4, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mExclusiveTaskMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b3

    .line 420
    sget-object v4, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "*** "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is in mExclusiveTaskMap"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v4, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mExclusiveTaskMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;

    .line 422
    .local v4, "exclusiveTask":Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;
    iget-object v5, v4, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;->manipulatedList:Ljava/util/ArrayList;

    # invokes: Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->getName()Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->access$300(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b3

    .line 423
    sget-object v5, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    # invokes: Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->getName()Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->access$300(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is in manipulatedList"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v5, v4, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;->manipulatedList:Ljava/util/ArrayList;

    # invokes: Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->getName()Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->access$300(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 426
    iget-object v5, v4, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;->manipulatedList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_b3

    .line 427
    iget-object v5, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mExclusiveTaskMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    .end local v4    # "exclusiveTask":Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;
    :cond_b3
    iget-object v4, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;->manipulatedList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    const/4 v4, 0x0

    # invokes: Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->turnOnOff(ZLcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V
    invoke-static {v3, v4, p2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->access$1100(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;ZLcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V

    .line 436
    invoke-direct {p0, v3, v4, p2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->executePostProccess(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;ZLcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V

    .line 437
    sget-object v4, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "turn off "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # invokes: Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->getName()Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->access$300(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    .end local v2    # "exclusiveName":Ljava/lang/String;
    .end local v3    # "tempTask":Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;
    :cond_e2
    goto/16 :goto_30

    .line 441
    :cond_e4
    iget-object v2, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;->manipulatedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_f5

    .line 442
    iget-object v2, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mExclusiveTaskMap:Ljava/util/HashMap;

    # invokes: Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->getName()Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->access$300(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    :cond_f5
    return-void
.end method

.method private readExclusiveRelation()V
    .registers 18

    .line 853
    move-object/from16 v1, p0

    const-string/jumbo v0, "task-list"

    sget-object v2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "readExclusiveRelation()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/etc/task_action.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 857
    .local v2, "file":Ljava/io/File;
    :try_start_14
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 859
    .local v3, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v3, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 860
    .local v4, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_158

    invoke-interface {v4}, Lorg/w3c/dom/Document;->hasChildNodes()Z

    move-result v5

    if-eqz v5, :cond_158

    .line 861
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 863
    .local v5, "taskListNodeList":Lorg/w3c/dom/NodeList;
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 864
    .local v7, "taskNodeList":Lorg/w3c/dom/NodeList;
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_42
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v8, v9, :cond_63

    .line 865
    invoke-interface {v5, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_60

    .line 866
    invoke-interface {v5, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    move-object v7, v0

    .line 867
    goto :goto_63

    .line 864
    :cond_60
    add-int/lit8 v8, v8, 0x1

    goto :goto_42

    .line 872
    .end local v8    # "i":I
    :cond_63
    :goto_63
    const/4 v0, 0x0

    .local v0, "count":I
    :goto_64
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v0, v8, :cond_158

    .line 873
    invoke-interface {v7, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 875
    .local v8, "tempNode":Lorg/w3c/dom/Node;
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_153

    const-string/jumbo v9, "task"

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_153

    .line 879
    invoke-interface {v8}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v9

    if-eqz v9, :cond_153

    .line 880
    new-instance v9, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;

    const/4 v11, 0x0

    invoke-direct {v9, v1, v11}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;-><init>(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;Lcom/android/server/sepunion/SemExclusiveTaskManagerService$1;)V

    .line 882
    .local v9, "newTask":Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v11

    .line 883
    .local v11, "nodeMap":Lorg/w3c/dom/NamedNodeMap;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_93
    invoke-interface {v11}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v13

    if-ge v12, v13, :cond_13f

    .line 884
    invoke-interface {v11, v12}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    .line 886
    .local v13, "node":Lorg/w3c/dom/Node;
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v16

    const/4 v6, 0x2

    sparse-switch v16, :sswitch_data_15c

    :cond_a9
    goto :goto_e0

    :sswitch_aa
    const-string v15, "exclusive"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a9

    const/4 v15, 0x3

    goto :goto_e1

    :sswitch_b4
    const-string/jumbo v15, "type"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a9

    move v15, v10

    goto :goto_e1

    :sswitch_bf
    const-string/jumbo v15, "name"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a9

    const/4 v15, 0x0

    goto :goto_e1

    :sswitch_ca
    const-string/jumbo v15, "key"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a9

    move v15, v6

    goto :goto_e1

    :sswitch_d5
    const-string/jumbo v15, "needNotify"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a9

    const/4 v15, 0x4

    goto :goto_e1

    :goto_e0
    const/4 v15, -0x1

    :goto_e1
    if-eqz v15, :cond_133

    if-eq v15, v10, :cond_128

    if-eq v15, v6, :cond_11e

    const/4 v6, 0x3

    if-eq v15, v6, :cond_fb

    const/4 v6, 0x4

    if-eq v15, v6, :cond_ee

    goto :goto_13a

    .line 903
    :cond_ee
    const-string v6, "1"

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, v9, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->needNotify:Z

    goto :goto_13a

    .line 897
    :cond_fb
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    const-string v14, " "

    const-string v15, ""

    invoke-virtual {v6, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 898
    .local v6, "temp":Ljava/lang/String;
    new-instance v14, Ljava/util/ArrayList;

    const-string v15, ","

    invoke-virtual {v6, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 900
    .local v14, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    # getter for: Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->exclusiveListSet:Ljava/util/HashSet;
    invoke-static {v9}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->access$200(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/util/HashSet;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 901
    goto :goto_13a

    .line 894
    .end local v6    # "temp":Ljava/lang/String;
    .end local v14    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_11e
    iget-object v6, v9, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->setting:Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->setSettingsKey(Ljava/lang/String;)V

    .line 895
    goto :goto_13a

    .line 891
    :cond_128
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v9, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->actionType:I

    .line 892
    goto :goto_13a

    .line 888
    :cond_133
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v9, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->name:Ljava/lang/String;

    .line 889
    nop

    .line 883
    .end local v13    # "node":Lorg/w3c/dom/Node;
    :goto_13a
    add-int/lit8 v12, v12, 0x1

    const/4 v6, 0x0

    goto/16 :goto_93

    .line 908
    .end local v12    # "i":I
    :cond_13f
    iget-object v6, v1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMap:Ljava/util/HashMap;

    # invokes: Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->getName()Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->access$300(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    iget-object v6, v1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMapByKey:Ljava/util/HashMap;

    iget-object v10, v9, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->setting:Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;

    # getter for: Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->rawKey:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->access$1400(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_153
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_153} :catch_159

    .line 872
    .end local v8    # "tempNode":Lorg/w3c/dom/Node;
    .end local v9    # "newTask":Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;
    .end local v11    # "nodeMap":Lorg/w3c/dom/NamedNodeMap;
    :cond_153
    add-int/lit8 v0, v0, 0x1

    const/4 v6, 0x0

    goto/16 :goto_64

    .line 917
    .end local v0    # "count":I
    .end local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "taskListNodeList":Lorg/w3c/dom/NodeList;
    .end local v7    # "taskNodeList":Lorg/w3c/dom/NodeList;
    :cond_158
    goto :goto_15a

    .line 915
    :catch_159
    move-exception v0

    .line 919
    :goto_15a
    return-void

    nop

    :sswitch_data_15c
    .sparse-switch
        -0x583f3c81 -> :sswitch_d5
        0x19e5f -> :sswitch_ca
        0x337a8b -> :sswitch_bf
        0x368f3a -> :sswitch_b4
        0x6487be9e -> :sswitch_aa
    .end sparse-switch
.end method

.method private registerExclusiveTaskObserver()V
    .registers 7

    .line 244
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 245
    sget-object v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mTaskMap is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return-void

    .line 249
    :cond_11
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mExclusiveTaskObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 251
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMapByKey:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 252
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMapByKey:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;

    .line 253
    .local v2, "task":Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;
    iget-object v3, v2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->setting:Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;

    iget-object v4, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mExclusiveTaskObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->registerObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    .line 254
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "task":Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;
    goto :goto_26

    .line 256
    :cond_48
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accreset_state"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mExclusiveTaskObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 257
    return-void
.end method

.method public static setGrayScale(Landroid/content/Context;Z)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .line 661
    nop

    .line 662
    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 663
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_17

    .line 664
    const/4 v1, 0x1

    if-eqz p1, :cond_13

    .line 665
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/view/accessibility/AccessibilityManager;->semSetMdnieAccessibilityMode(IZ)Z

    goto :goto_17

    .line 667
    :cond_13
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityManager;->semSetMdnieAccessibilityMode(IZ)Z

    .line 670
    :cond_17
    :goto_17
    return-void
.end method

.method private userSwitch(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 177
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mUserStatus:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 178
    sget-object v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "already has user status for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void

    .line 182
    :cond_23
    new-instance v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;

    invoke-direct {v0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;-><init>()V

    .line 183
    .local v0, "userStatus":Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;
    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mUserStatus:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iput p1, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    .line 185
    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 186
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    .line 185
    const-string v3, "enabled_accessibility_services"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mPreA11yServiceValue:Ljava/lang/String;

    .line 187
    return-void
.end method

.method private verifyExclusiveRelation()Z
    .registers 7

    .line 190
    const/4 v0, 0x1

    .line 192
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 193
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;

    .line 195
    .local v3, "task":Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;
    # getter for: Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->exclusiveListSet:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->access$200(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 196
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_27
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_37

    .line 197
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 198
    .local v5, "compareTask":Ljava/lang/String;
    invoke-direct {p0, v3, v5}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->hasExclusiveRelation(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;Ljava/lang/String;)Z

    .line 199
    .end local v5    # "compareTask":Ljava/lang/String;
    goto :goto_27

    .line 200
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "task":Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_37
    goto :goto_b

    .line 202
    :cond_38
    return v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 15
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1114
    const-string v0, "\n##### SemExclusiveTaskManagerService #####\n##### (dumpsys sepunion exclusivetask) #####\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1116
    const/4 v0, 0x0

    .line 1117
    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMapByKey:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1118
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMapByKey:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;

    .line 1119
    .local v3, "task":Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "task["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v0, 0x1

    .end local v0    # "i":I
    .local v5, "i":I
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] : "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # invokes: Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->getName()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->access$300(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", key : "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->setting:Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;

    # getter for: Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->rawKey:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->access$1400(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1120
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "task":Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;
    move v0, v5

    goto :goto_10

    .line 1122
    .end local v5    # "i":I
    .restart local v0    # "i":I
    :cond_57
    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mUserStatus:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_61
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1123
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mUserStatus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;

    .line 1124
    .local v3, "userStatus":Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "user id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1125
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mExclusiveTaskMap size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mExclusiveTaskMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1126
    iget-object v4, v3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mExclusiveTaskMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1127
    .local v5, "key":Ljava/lang/String;
    iget-object v6, v3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mExclusiveTaskMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;

    .line 1128
    .local v6, "exclusiveTask":Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exclusiveTask name : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;->name:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;->access$1000(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1129
    iget-object v7, v6, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;->manipulatedList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 1130
    .local v7, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1131
    :goto_ec
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_119

    .line 1132
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1133
    .local v8, "name":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "manipulated task["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "] name : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1134
    nop

    .end local v8    # "name":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 1135
    goto :goto_ec

    .line 1136
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "exclusiveTask":Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;
    .end local v7    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_119
    goto :goto_b9

    .line 1137
    .end local v2    # "userId":I
    .end local v3    # "userStatus":Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;
    :cond_11a
    goto/16 :goto_61

    .line 1138
    :cond_11c
    return-void
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1051
    return-void
.end method

.method public getEnabledServicesFromSettings(Landroid/content/Context;Z)Ljava/util/Set;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "checkNewService"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 986
    const/4 v0, 0x0

    .line 987
    .local v0, "enabledServicesSetting":Ljava/lang/String;
    if-eqz p2, :cond_10

    .line 988
    nop

    .line 989
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x2

    .line 988
    const-string v3, "enabled_accessibility_services"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    .line 991
    :cond_10
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->getUserStatus(I)Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;

    move-result-object v1

    .line 992
    .local v1, "userStatus":Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;
    if-eqz v1, :cond_1c

    .line 993
    iget-object v0, v1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mPreA11yServiceValue:Ljava/lang/String;

    .line 997
    .end local v1    # "userStatus":Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;
    :cond_1c
    :goto_1c
    if-nez v0, :cond_23

    .line 998
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 1001
    :cond_23
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1002
    .local v1, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v3, 0x3a

    invoke-direct {v2, v3}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 1003
    .local v2, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v2, v0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 1005
    :goto_32
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 1006
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    .line 1007
    .local v3, "componentNameString":Ljava/lang/String;
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 1009
    .local v4, "enabledService":Landroid/content/ComponentName;
    if-eqz v4, :cond_45

    .line 1010
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1012
    .end local v3    # "componentNameString":Ljava/lang/String;
    .end local v4    # "enabledService":Landroid/content/ComponentName;
    :cond_45
    goto :goto_32

    .line 1014
    :cond_46
    return-object v1
.end method

.method public getExclusiveTaskList(Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .param p1, "taskName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 922
    sget-object v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getExclusiveTaskList for : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 924
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;

    .line 926
    .local v1, "task":Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;
    if-eqz v1, :cond_73

    .line 927
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->getUserStatus(I)Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;

    move-result-object v2

    .line 928
    .local v2, "userStatus":Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;
    # getter for: Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->exclusiveListSet:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->access$200(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 929
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_35
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_73

    .line 930
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 931
    .local v4, "exclusiveName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;

    .line 932
    .local v5, "tempTask":Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;
    if-eqz v5, :cond_72

    # invokes: Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->getSettingsStatus(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)Z
    invoke-static {v5, v2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->access$800(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)Z

    move-result v6

    if-eqz v6, :cond_72

    .line 933
    sget-object v6, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getExclusiveTaskList add : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # invokes: Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->getName()Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->access$300(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    # invokes: Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->getName()Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->access$300(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 936
    .end local v4    # "exclusiveName":Ljava/lang/String;
    .end local v5    # "tempTask":Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;
    :cond_72
    goto :goto_35

    .line 939
    .end local v2    # "userStatus":Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_73
    return-object v0
.end method

.method public getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 1109
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAccessibilityServiceEnabled(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .registers 9
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .line 1023
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->getEnabledServicesFromSettings(Landroid/content/Context;Z)Ljava/util/Set;

    move-result-object v1

    .line 1025
    .local v1, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_d

    .line 1026
    return v3

    .line 1028
    :cond_d
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1029
    .local v4, "enabledService":Landroid/content/ComponentName;
    invoke-virtual {v4, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 1030
    return v0

    .line 1032
    .end local v4    # "enabledService":Landroid/content/ComponentName;
    :cond_24
    goto :goto_11

    .line 1034
    :cond_25
    return v3
.end method

.method public isAccessibilityServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .line 1018
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->isAccessibilityServiceEnabled(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public onBootPhase(I)V
    .registers 2
    .param p1, "phase"    # I

    .line 1081
    return-void
.end method

.method public onCleanupUser(I)V
    .registers 2
    .param p1, "userHandle"    # I

    .line 1105
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "opt"    # Landroid/os/Bundle;

    .line 1061
    sget-object v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    const-string v1, "SemExclusiveTaskManagerService onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 1067
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 1056
    sget-object v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    const-string v1, "SemExclusiveTaskManagerService onStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    return-void
.end method

.method public onStartUser(I)V
    .registers 2
    .param p1, "userHandle"    # I

    .line 1086
    return-void
.end method

.method public onStopUser(I)V
    .registers 2
    .param p1, "userHandle"    # I

    .line 1091
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 2
    .param p1, "userHandle"    # I

    .line 1095
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 2
    .param p1, "userHandle"    # I

    .line 1100
    return-void
.end method

.method public setAccessibilityServiceState(Landroid/content/Context;Landroid/content/ComponentName;ZI)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "toggledService"    # Landroid/content/ComponentName;
    .param p3, "enabled"    # Z
    .param p4, "userId"    # I

    .line 949
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->getEnabledServicesFromSettings(Landroid/content/Context;Z)Ljava/util/Set;

    move-result-object v1

    .line 951
    .local v1, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    if-eqz p3, :cond_13

    .line 952
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v0}, Landroid/util/ArraySet;-><init>(I)V

    move-object v1, v2

    .line 956
    :cond_13
    if-eqz p3, :cond_19

    .line 957
    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 959
    :cond_19
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_22

    .line 960
    invoke-interface {v1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 964
    :cond_22
    :goto_22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 969
    .local v2, "enabledServicesBuilder":Ljava/lang/StringBuilder;
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 970
    .local v4, "enabledService":Landroid/content/ComponentName;
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    const/16 v5, 0x3a

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 972
    .end local v4    # "enabledService":Landroid/content/ComponentName;
    goto :goto_2b

    .line 973
    :cond_44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 974
    .local v3, "enabledServicesBuilderLength":I
    if-lez v3, :cond_4f

    .line 975
    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 977
    :cond_4f
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 979
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 977
    const-string v6, "enabled_accessibility_services"

    invoke-static {v4, v6, v5, p4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 980
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 981
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    .line 980
    xor-int/2addr v0, v5

    const-string v5, "accessibility_enabled"

    invoke-static {v4, v5, v0, p4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 982
    return-void
.end method
