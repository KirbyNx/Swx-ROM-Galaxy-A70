.class public Lcom/android/server/policy/KeyCustomizeManager;
.super Ljava/lang/Object;
.source "KeyCustomizeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;,
        Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;,
        Lcom/android/server/policy/KeyCustomizeManager$MultiTapCustomizeKeyCallback;,
        Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;
    }
.end annotation


# static fields
.field private static ALL_HOT_KEYCODE:[I = null

.field private static ALL_PRESS_TYPE:[I = null

.field private static BACKUP_PRESS_TYPE:[I = null

.field private static BASIC_PRESS_TYPE:[I = null

.field static final CLASS_NAME_GOODLOCK_ROUTINE_PLUS:Ljava/lang/String; = "com.samsung.android.app.routineplus.main.RoutinePlusActivity"

.field private static final CURRENT_XML_VERSION:F = 0.2f

.field private static final EXTRA_KEY_ACTION:Ljava/lang/String; = "extraKeyAction"

.field private static final EXTRA_KEY_CODE:Ljava/lang/String; = "extraKeyCode"

.field private static final FILE_INFO:Ljava/lang/String; = "key_customize_info.xml"

.field private static final INTENT_ACTION:Ljava/lang/String; = "action"

.field private static final INTENT_ACTION_KEY_CUSTOMIZE_INFO_CHANGED:Ljava/lang/String; = "com.samsung.android.action.KEYCUSTOMIZE_INFO_CHANGED"

.field private static final INTENT_PERMISSION_KEY_CUSTOMIZE_INFO_CHANGED:Ljava/lang/String; = "com.samsung.android.permisson.ACCESS_KEYCUSTOMIZE_INFO"

.field private static final KEY_ACTION_DOUBLE:Ljava/lang/String; = "double"

.field private static final KEY_ACTION_LONG:Ljava/lang/String; = "long"

.field private static final KEY_ACTION_PRESS:Ljava/lang/String; = "press"

.field private static final KEY_PRESS_ALL_TYPE:I = 0x1f

.field private static final KEY_PRESS_BACKUP_TYPE:I = 0x7

.field private static final KEY_PRESS_BASIC_TYPE:I = 0xf

.field static final NEEDED_NEXT_STEP:I = 0x2

.field static final NEEDED_ONLY_LONG_PRESS_STEP:I = 0x3

.field static final NO_NEED_NEXT_STEP:I = 0x1

.field static final PACKAGE_NAME_GOODLOCK_ROUTINE_PLUS:Ljava/lang/String; = "com.samsung.android.app.routineplus"

.field private static final TAG:Ljava/lang/String; = "KeyCustomizeManager"

.field private static final TAG_BACKUP:Ljava/lang/String; = "backup"

.field private static final TAG_BACKUP_LONG:Ljava/lang/String; = "backup_long"

.field private static final TAG_BACKUP_PRESS:Ljava/lang/String; = "backup_press"

.field private static final TAG_CLASS_NAME:Ljava/lang/String; = "class_name"

.field private static final TAG_DISPATCHING:Ljava/lang/String; = "dispatching"

.field private static final TAG_DOUBLE:Ljava/lang/String; = "double"

.field private static final TAG_HOT_KEY:Ljava/lang/String; = "hot_key"

.field private static final TAG_INTENT:Ljava/lang/String; = "intent"

.field private static final TAG_KEY:Ljava/lang/String; = "key"

.field private static final TAG_KEYCODE:Ljava/lang/String; = "keyCode"

.field private static final TAG_KEYCUSTOMIZE_INFO_VERSION:Ljava/lang/String; = "keycustomize_info_version"

.field private static final TAG_LAUNCH_ACTION:Ljava/lang/String; = "launchAction"

.field private static final TAG_LONG:Ljava/lang/String; = "long"

.field private static final TAG_MIGRATION:Ljava/lang/String; = "migration"

.field private static final TAG_MIGRATION_B2B_DELTA_TOP:Ljava/lang/String; = "b2bDeltaTop"

.field private static final TAG_MIGRATION_B2B_DELTA_XCOVER:Ljava/lang/String; = "b2bDeltaXCover"

.field private static final TAG_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final TAG_PRESS:Ljava/lang/String; = "press"

.field private static final TAG_PRIORITY:Ljava/lang/String; = "priority"

.field private static final TAG_USER_ID:Ljava/lang/String; = "userId"

.field private static final TAG_VERSION:Ljava/lang/String; = "version"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDoubleTapCallback:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/function/BooleanSupplier;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterIntent:Landroid/content/Intent;

.field mHandler:Landroid/os/Handler;

.field mIsAvailableRoutinePlus:Z

.field private mIsKeyLongPressed:Z

.field private mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

.field final mLock:Ljava/lang/Object;

.field mMigrationCodeB2BDeltaTop:Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;

.field mMigrationCodeB2BDeltaXCover:Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;

.field private mNotifyKeyCustomizeInfoChanged:Ljava/lang/Runnable;

.field private mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

.field private final mSingleTapCallback:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/function/BooleanSupplier;",
            ">;"
        }
    .end annotation
.end field

.field private final mTripleTapCallback:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/function/BooleanSupplier;",
            ">;"
        }
    .end annotation
.end field

.field private mXmlFileErrorCode:Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;

.field private mXmlVersion:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 105
    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_20

    sput-object v1, Lcom/android/server/policy/KeyCustomizeManager;->BASIC_PRESS_TYPE:[I

    .line 111
    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_2a

    sput-object v1, Lcom/android/server/policy/KeyCustomizeManager;->ALL_PRESS_TYPE:[I

    .line 125
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_36

    sput-object v1, Lcom/android/server/policy/KeyCustomizeManager;->BACKUP_PRESS_TYPE:[I

    .line 1997
    new-array v0, v0, [I

    fill-array-data v0, :array_3e

    sput-object v0, Lcom/android/server/policy/KeyCustomizeManager;->ALL_HOT_KEYCODE:[I

    return-void

    :array_20
    .array-data 4
        0x3
        0x4
        0x8
    .end array-data

    :array_2a
    .array-data 4
        0x3
        0x4
        0x8
        0x10
    .end array-data

    :array_36
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_3e
    .array-data 4
        0x442
        0x443
        0x444
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "policyExt"    # Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mLock:Ljava/lang/Object;

    .line 94
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mHandler:Landroid/os/Handler;

    .line 96
    new-instance v0, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizeManager;->mLock:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    .line 98
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mSingleTapCallback:Ljava/util/LinkedHashMap;

    .line 100
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mDoubleTapCallback:Ljava/util/LinkedHashMap;

    .line 102
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mTripleTapCallback:Ljava/util/LinkedHashMap;

    .line 1209
    new-instance v0, Lcom/android/server/policy/-$$Lambda$KeyCustomizeManager$i-cK33zpavmil49FeVAWA0KId_Y;

    invoke-direct {v0, p0}, Lcom/android/server/policy/-$$Lambda$KeyCustomizeManager$i-cK33zpavmil49FeVAWA0KId_Y;-><init>(Lcom/android/server/policy/KeyCustomizeManager;)V

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mNotifyKeyCustomizeInfoChanged:Ljava/lang/Runnable;

    .line 1283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mIsKeyLongPressed:Z

    .line 1480
    iput-boolean v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mIsAvailableRoutinePlus:Z

    .line 1486
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mXmlVersion:F

    .line 1627
    sget-object v0, Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;->NOTHING:Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mMigrationCodeB2BDeltaXCover:Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;

    .line 1628
    sget-object v0, Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;->NOTHING:Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mMigrationCodeB2BDeltaTop:Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;

    .line 1644
    sget-object v0, Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;->FAIL:Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mXmlFileErrorCode:Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;

    .line 135
    iput-object p1, p0, Lcom/android/server/policy/KeyCustomizeManager;->mContext:Landroid/content/Context;

    .line 136
    iput-object p2, p0, Lcom/android/server/policy/KeyCustomizeManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 138
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mFilterIntent:Landroid/content/Intent;

    .line 139
    const-string v1, "afterKeyguardGone"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 140
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mFilterIntent:Landroid/content/Intent;

    const-string/jumbo v1, "ignoreKeyguardState"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 141
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mFilterIntent:Landroid/content/Intent;

    const-string v1, "dismissIfInsecure"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 143
    invoke-direct {p0}, Lcom/android/server/policy/KeyCustomizeManager;->updateCallback()V

    .line 144
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/policy/KeyCustomizeManager;)Ljava/util/LinkedHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/KeyCustomizeManager;

    .line 87
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mTripleTapCallback:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$300()[I
    .registers 1

    .line 87
    sget-object v0, Lcom/android/server/policy/KeyCustomizeManager;->BACKUP_PRESS_TYPE:[I

    return-object v0
.end method

.method static synthetic access$400()[I
    .registers 1

    .line 87
    sget-object v0, Lcom/android/server/policy/KeyCustomizeManager;->ALL_PRESS_TYPE:[I

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/policy/KeyCustomizeManager;)Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/KeyCustomizeManager;

    .line 87
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/policy/KeyCustomizeManager;)Lcom/android/server/policy/PhoneWindowManagerExt;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/KeyCustomizeManager;

    .line 87
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/policy/KeyCustomizeManager;)Ljava/util/LinkedHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/KeyCustomizeManager;

    .line 87
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mSingleTapCallback:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/policy/KeyCustomizeManager;)Ljava/util/LinkedHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/KeyCustomizeManager;

    .line 87
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mDoubleTapCallback:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method private dumpKeyCustomizeInfo(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/SparseArray;)V
    .registers 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/PrintWriter;",
            "Landroid/util/SparseArray<",
            "Landroid/view/WindowManager$KeyCustomizeInfo;",
            ">;)V"
        }
    .end annotation

    .line 2154
    .local p3, "infoArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/WindowManager$KeyCustomizeInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_51

    .line 2155
    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$KeyCustomizeInfo;

    .line 2156
    .local v1, "info":Landroid/view/WindowManager$KeyCustomizeInfo;
    if-eqz v1, :cond_4e

    .line 2157
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " KeyCode "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Landroid/view/WindowManager$KeyCustomizeInfo;->keyCode:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2158
    const-string v2, ", action: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Landroid/view/WindowManager$KeyCustomizeInfo;->action:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2159
    const-string v2, ", dispatching: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Landroid/view/WindowManager$KeyCustomizeInfo;->dispatching:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2160
    const-string v2, ", priority: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Landroid/view/WindowManager$KeyCustomizeInfo;->priority:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2161
    const-string v2, ", intent: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/view/WindowManager$KeyCustomizeInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2162
    const-string v2, ", userId: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Landroid/view/WindowManager$KeyCustomizeInfo;->userId:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2154
    .end local v1    # "info":Landroid/view/WindowManager$KeyCustomizeInfo;
    :cond_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2165
    .end local v0    # "i":I
    :cond_51
    return-void
.end method

.method private getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .registers 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defValue"    # I

    .line 1808
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1809
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 1810
    return p3

    .line 1812
    :cond_8
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private getAttributeMigrationResultCode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;
    .registers 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "name"    # Ljava/lang/String;

    .line 1861
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1862
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1863
    sget-object v1, Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;->NOTHING:Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;

    return-object v1

    .line 1865
    :cond_e
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;->getMigrationCode(I)Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;

    move-result-object v1

    return-object v1
.end method

.method private getDefaultIntent(ILandroid/view/KeyEvent;Z)Landroid/content/Intent;
    .registers 11
    .param p1, "priority"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "isLongPress"    # Z

    .line 1013
    const/4 v0, 0x0

    .line 1014
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 1015
    .local v1, "keyCode":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_f

    move v2, v3

    goto :goto_10

    :cond_f
    move v2, v4

    .line 1016
    .local v2, "down":Z
    :goto_10
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    .line 1017
    .local v5, "repeatCount":I
    if-eqz v2, :cond_19

    if-nez v5, :cond_19

    goto :goto_1a

    :cond_19
    move v3, v4

    .line 1019
    .local v3, "justDown":Z
    :goto_1a
    const/16 v4, 0xa

    if-eq p1, v4, :cond_22

    const/16 v4, 0x32

    if-ne p1, v4, :cond_49

    .line 1021
    :cond_22
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.samsung.android.knox.intent.action.HARD_KEY_REPORT"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    .line 1022
    const/high16 v4, 0x1000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1023
    const-string v4, "com.samsung.android.knox.intent.extra.KEY_CODE"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1024
    const/4 v4, -0x1

    .line 1025
    .local v4, "value":I
    const/16 v6, 0x1a

    if-ne v1, v6, :cond_3d

    if-eqz p3, :cond_3d

    .line 1026
    const/4 v4, 0x4

    goto :goto_44

    .line 1027
    :cond_3d
    if-eqz v3, :cond_41

    .line 1028
    const/4 v4, 0x1

    goto :goto_44

    .line 1029
    :cond_41
    if-nez v2, :cond_44

    .line 1030
    const/4 v4, 0x2

    .line 1032
    :cond_44
    :goto_44
    const-string v6, "com.samsung.android.knox.intent.extra.KEY_REPORT_TYPE_NEW"

    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1034
    .end local v4    # "value":I
    :cond_49
    return-object v0
.end method

.method private static getKeyCustomizeDir()Ljava/io/File;
    .registers 1

    .line 1878
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private initMultiTapKeyEventHandler(ILandroid/util/SparseArray;)V
    .registers 9
    .param p1, "press"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Landroid/view/WindowManager$KeyCustomizeInfo;",
            ">;)V"
        }
    .end annotation

    .line 1161
    .local p2, "infoArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/WindowManager$KeyCustomizeInfo;>;"
    and-int/lit8 v0, p1, 0x8

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 1162
    .local v0, "keyPressDouble":Z
    :goto_8
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3c

    .line 1163
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1164
    .local v3, "keyCode":I
    const/16 v4, 0x1a

    if-ne v3, v4, :cond_1f

    if-eqz v0, :cond_1f

    .line 1165
    iget-object v4, p0, Lcom/android/server/policy/KeyCustomizeManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateDoublePressPowerBehavior()V

    .line 1166
    goto :goto_39

    .line 1168
    :cond_1f
    if-eqz v0, :cond_39

    .line 1169
    const/16 v4, 0x18

    if-eq v3, v4, :cond_29

    const/16 v4, 0x19

    if-ne v3, v4, :cond_32

    .line 1171
    :cond_29
    invoke-virtual {p0, v3}, Lcom/android/server/policy/KeyCustomizeManager;->getMultiTapKeyEventHandler(I)Lcom/android/server/policy/MultiTapKeyEventHandler;

    move-result-object v4

    const/16 v5, 0x96

    invoke-virtual {v4, v5}, Lcom/android/server/policy/MultiTapKeyEventHandler;->setMultiTapTimeout(I)V

    .line 1174
    :cond_32
    invoke-virtual {p0, v3}, Lcom/android/server/policy/KeyCustomizeManager;->getMultiTapKeyEventHandler(I)Lcom/android/server/policy/MultiTapKeyEventHandler;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/server/policy/MultiTapKeyEventHandler;->setDoubleTapEnabled(Z)V

    .line 1162
    .end local v3    # "keyCode":I
    :cond_39
    :goto_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1177
    .end local v2    # "i":I
    :cond_3c
    return-void
.end method

.method private isBlockedKeyDown(Landroid/content/Intent;)Z
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1993
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "blockedStateOnKeyedDown"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isBlockedKeyUp(Landroid/content/Intent;)Z
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1989
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "blockedStateOnKeyedUp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isReportedKeyDown(Landroid/content/Intent;)Z
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1985
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "reportStateOnKeyedDown"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isReportedKeyUp(Landroid/content/Intent;)Z
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1981
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "reportStateOnKeyedUp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isValidatedInputData(ILandroid/view/WindowManager$KeyCustomizeInfo;)V
    .registers 11
    .param p1, "press"    # I
    .param p2, "info"    # Landroid/view/WindowManager$KeyCustomizeInfo;

    .line 380
    if-eqz p2, :cond_172

    .line 384
    iget v0, p2, Landroid/view/WindowManager$KeyCustomizeInfo;->priority:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_9

    .line 385
    return-void

    .line 388
    :cond_9
    iget v0, p2, Landroid/view/WindowManager$KeyCustomizeInfo;->keyCode:I

    .line 389
    .local v0, "keyCode":I
    iget v1, p2, Landroid/view/WindowManager$KeyCustomizeInfo;->action:I

    .line 390
    .local v1, "action":I
    const-string v2, " press="

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x3

    if-eq v0, v5, :cond_67

    if-eq v0, v4, :cond_67

    const/16 v6, 0x4f

    if-eq v0, v6, :cond_66

    const/16 v6, 0xbb

    if-eq v0, v6, :cond_67

    const/16 v6, 0x3f7

    if-eq v0, v6, :cond_66

    const/16 v6, 0x437

    if-eq v0, v6, :cond_66

    packed-switch v0, :pswitch_data_17a

    packed-switch v0, :pswitch_data_184

    .line 423
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requested keyCode was wrong. keyCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 415
    :pswitch_44
    and-int/lit8 v6, p1, 0x3

    if-eqz v6, :cond_49

    goto :goto_95

    .line 416
    :cond_49
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This press type is not supported in the requested keyCode. keyCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 394
    :cond_66
    goto :goto_95

    .line 402
    :cond_67
    :pswitch_67
    and-int/lit8 v6, p1, 0x3

    if-eqz v6, :cond_95

    if-eq v1, v3, :cond_70

    if-eq v1, v5, :cond_70

    goto :goto_95

    .line 404
    :cond_70
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This press and action type is not supported in the requested keyCode. keyCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " action="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 428
    :cond_95
    :goto_95
    const/4 v2, 0x2

    if-eq v1, v3, :cond_b7

    if-eq v1, v2, :cond_b7

    if-eq v1, v5, :cond_b7

    if-ne v1, v4, :cond_9f

    goto :goto_b7

    .line 432
    :cond_9f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requested action was wrong. action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 435
    :cond_b7
    :goto_b7
    iget v3, p2, Landroid/view/WindowManager$KeyCustomizeInfo;->dispatching:I

    .line 436
    .local v3, "dispatching":I
    if-eqz v3, :cond_d7

    const/4 v4, -0x1

    if-ne v3, v4, :cond_bf

    goto :goto_d7

    .line 438
    :cond_bf
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requested dispatching was wrong. dispatching="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 442
    :cond_d7
    :goto_d7
    iget v4, p2, Landroid/view/WindowManager$KeyCustomizeInfo;->priority:I

    .line 443
    .local v4, "priority":I
    const/16 v5, 0xa

    const/16 v6, 0x44f

    if-eq v4, v5, :cond_10a

    const/16 v5, 0x32

    if-eq v4, v5, :cond_10a

    const/16 v5, 0x384

    if-eq v4, v5, :cond_10a

    const/16 v5, 0x44c

    if-eq v4, v5, :cond_10a

    const/16 v5, 0x44e

    if-eq v4, v5, :cond_10a

    if-ne v4, v6, :cond_f2

    goto :goto_10a

    .line 449
    :cond_f2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "requested priority was wrong. priority="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 453
    :cond_10a
    :goto_10a
    and-int/lit8 v5, p1, 0x3

    if-nez v5, :cond_12f

    and-int/lit8 v5, p1, 0x4

    if-nez v5, :cond_12f

    and-int/lit8 v5, p1, 0x8

    if-eqz v5, :cond_117

    goto :goto_12f

    .line 456
    :cond_117
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "requested press was wrong. press="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 459
    :cond_12f
    :goto_12f
    and-int/lit8 v5, p1, 0x8

    if-eqz v5, :cond_13e

    if-eq v1, v2, :cond_136

    goto :goto_13e

    .line 460
    :cond_136
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "When press type is double, action of sendBroadcast not supported."

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 464
    :cond_13e
    :goto_13e
    iget v5, p2, Landroid/view/WindowManager$KeyCustomizeInfo;->userId:I

    .line 465
    .local v5, "userId":I
    const/4 v7, -0x2

    if-eq v5, v7, :cond_14f

    if-ne v1, v2, :cond_146

    goto :goto_14f

    .line 466
    :cond_146
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "requested userId was wrong. The userId is only for ACTION_SEND_BROADCAST"

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 470
    :cond_14f
    :goto_14f
    and-int/lit8 v2, p1, 0x4

    if-nez v2, :cond_157

    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_159

    :cond_157
    if-eq v4, v6, :cond_15a

    .line 475
    :cond_159
    return-void

    .line 472
    :cond_15a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "requested press type was wrong. priority="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 381
    .end local v0    # "keyCode":I
    .end local v1    # "action":I
    .end local v3    # "dispatching":I
    .end local v4    # "priority":I
    .end local v5    # "userId":I
    :cond_172
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "KeyCustomizeInfo is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_17a
    .packed-switch 0x18
        :pswitch_67
        :pswitch_67
        :pswitch_67
    .end packed-switch

    :pswitch_data_184
    .packed-switch 0x445
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
    .end packed-switch
.end method

.method private migrationForKnoxIntent(Landroid/content/Intent;Landroid/view/KeyEvent;Z)Z
    .registers 16
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "isLongPress"    # Z

    .line 1907
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1908
    .local v0, "keyCode":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_e

    move v1, v3

    goto :goto_f

    :cond_e
    move v1, v2

    .line 1909
    .local v1, "down":Z
    :goto_f
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    .line 1910
    .local v4, "repeatCount":I
    if-eqz v1, :cond_19

    if-nez v4, :cond_19

    move v5, v3

    goto :goto_1a

    :cond_19
    move v5, v2

    .line 1912
    .local v5, "justDown":Z
    :goto_1a
    const-string v6, "com.samsung.android.knox.intent.extra.KEY_CODE"

    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1914
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 1915
    const-string v7, "getHardKeyReportState"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 1916
    .local v6, "isHardKeyReport":Z
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 1917
    const-string v8, "getHardKeyIntentState"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 1918
    .local v7, "isHardKeyIntent":Z
    const/4 v8, 0x2

    const-string v9, "com.samsung.android.knox.intent.extra.KEY_REPORT_TYPE"

    if-eqz v6, :cond_64

    .line 1919
    invoke-direct {p0, p1}, Lcom/android/server/policy/KeyCustomizeManager;->isReportedKeyUp(Landroid/content/Intent;)Z

    move-result v10

    .line 1920
    .local v10, "reportKeyUp":Z
    invoke-direct {p0, p1}, Lcom/android/server/policy/KeyCustomizeManager;->isReportedKeyDown(Landroid/content/Intent;)Z

    move-result v11

    .line 1921
    .local v11, "reportKeyDown":Z
    if-eqz v10, :cond_51

    if-eqz v11, :cond_51

    .line 1922
    const/4 v8, -0x1

    .line 1923
    .local v8, "value":I
    if-eqz v5, :cond_49

    .line 1924
    const/4 v3, 0x1

    .end local v8    # "value":I
    .local v3, "value":I
    goto :goto_4c

    .line 1925
    .end local v3    # "value":I
    .restart local v8    # "value":I
    :cond_49
    if-nez v1, :cond_50

    .line 1926
    const/4 v3, 0x2

    .line 1930
    .end local v8    # "value":I
    .restart local v3    # "value":I
    :goto_4c
    invoke-virtual {p1, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1931
    .end local v3    # "value":I
    goto :goto_63

    .line 1928
    .restart local v8    # "value":I
    :cond_50
    return v3

    .line 1931
    .end local v8    # "value":I
    :cond_51
    if-eqz v10, :cond_5a

    .line 1932
    if-nez v1, :cond_59

    .line 1933
    invoke-virtual {p1, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_63

    .line 1936
    :cond_59
    return v3

    .line 1938
    :cond_5a
    if-eqz v11, :cond_63

    .line 1939
    if-eqz v5, :cond_62

    .line 1940
    invoke-virtual {p1, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_63

    .line 1943
    :cond_62
    return v3

    .line 1946
    .end local v10    # "reportKeyUp":Z
    .end local v11    # "reportKeyDown":Z
    :cond_63
    :goto_63
    goto :goto_90

    :cond_64
    if-eqz v7, :cond_7f

    .line 1947
    const/16 v10, 0x1a

    if-ne v0, v10, :cond_7c

    .line 1948
    if-eqz p3, :cond_70

    .line 1949
    invoke-virtual {p1, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_90

    .line 1951
    :cond_70
    if-nez v1, :cond_76

    .line 1952
    invoke-virtual {p1, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_90

    .line 1954
    :cond_76
    if-eqz v5, :cond_90

    .line 1957
    invoke-virtual {p1, v9}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_90

    .line 1960
    :cond_7c
    if-nez v1, :cond_90

    .line 1961
    return v3

    .line 1965
    :cond_7f
    const/4 v8, -0x1

    .line 1966
    .restart local v8    # "value":I
    if-eqz p3, :cond_84

    .line 1967
    const/4 v3, 0x4

    .end local v8    # "value":I
    .restart local v3    # "value":I
    goto :goto_8b

    .line 1968
    .end local v3    # "value":I
    .restart local v8    # "value":I
    :cond_84
    if-eqz v5, :cond_88

    .line 1969
    const/4 v3, 0x1

    .end local v8    # "value":I
    .restart local v3    # "value":I
    goto :goto_8b

    .line 1970
    .end local v3    # "value":I
    .restart local v8    # "value":I
    :cond_88
    if-nez v1, :cond_91

    .line 1971
    const/4 v3, 0x2

    .line 1975
    .end local v8    # "value":I
    .restart local v3    # "value":I
    :goto_8b
    const-string v8, "com.samsung.android.knox.intent.extra.KEY_REPORT_TYPE_NEW"

    invoke-virtual {p1, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1977
    .end local v3    # "value":I
    :cond_90
    :goto_90
    return v2

    .line 1973
    .restart local v8    # "value":I
    :cond_91
    return v3
.end method

.method private parseHotKeysAttributes(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/SparseArray;)V
    .registers 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/util/SparseArray<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2064
    .local p2, "infoArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/ComponentName;>;"
    const/4 v0, 0x0

    .line 2065
    .local v0, "keyCode":I
    const/4 v1, 0x0

    .line 2066
    .local v1, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2067
    .local v2, "className":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 2069
    .local v3, "startTag":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 2070
    .local v4, "event":I
    const/4 v5, 0x0

    .line 2072
    .local v5, "canExit":Z
    :cond_c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 2073
    .local v6, "tag":Ljava/lang/String;
    const/4 v7, 0x2

    if-eq v4, v7, :cond_37

    const/4 v7, 0x3

    if-eq v4, v7, :cond_17

    goto :goto_56

    .line 2082
    :cond_17
    if-eqz v0, :cond_2d

    .line 2083
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2d

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2d

    .line 2084
    new-instance v7, Landroid/content/ComponentName;

    invoke-direct {v7, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2086
    :cond_2d
    if-eqz v3, :cond_56

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_56

    .line 2087
    const/4 v5, 0x1

    goto :goto_56

    .line 2075
    :cond_37
    const-string/jumbo v7, "key"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_56

    .line 2076
    const/4 v7, 0x0

    const-string/jumbo v8, "keyCode"

    invoke-direct {p0, p1, v8, v7}, Lcom/android/server/policy/KeyCustomizeManager;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    .line 2077
    const/4 v7, 0x0

    const-string/jumbo v8, "package_name"

    invoke-interface {p1, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2078
    const-string v8, "class_name"

    invoke-interface {p1, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2091
    :cond_56
    :goto_56
    if-nez v5, :cond_5c

    .line 2092
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 2094
    :cond_5c
    const/4 v7, 0x1

    if-eq v4, v7, :cond_61

    if-eqz v5, :cond_c

    .line 2095
    :cond_61
    return-void
.end method

.method private parseKeyCustomizeAttributes(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/SparseArray;I)V
    .registers 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "press"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/util/SparseArray<",
            "Landroid/view/WindowManager$KeyCustomizeInfo;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1738
    .local p2, "infoArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/WindowManager$KeyCustomizeInfo;>;"
    const/4 v0, 0x0

    .line 1739
    .local v0, "info":Landroid/view/WindowManager$KeyCustomizeInfo;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1741
    .local v1, "startTag":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 1742
    .local v2, "event":I
    const/4 v3, 0x0

    .line 1744
    .local v3, "canExit":Z
    :cond_a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1745
    .local v4, "tag":Ljava/lang/String;
    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string/jumbo v7, "key"

    if-eq v2, v5, :cond_39

    const/4 v5, 0x3

    if-eq v2, v5, :cond_1a

    goto/16 :goto_b3

    .line 1771
    :cond_1a
    if-eqz v0, :cond_2e

    .line 1772
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 1773
    iget-object v5, p0, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    iget v7, v0, Landroid/view/WindowManager$KeyCustomizeInfo;->priority:I

    invoke-virtual {v5, v7, v6}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->setPriority(IZ)V

    .line 1774
    iget v5, v0, Landroid/view/WindowManager$KeyCustomizeInfo;->keyCode:I

    invoke-virtual {p2, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1777
    :cond_2e
    if-eqz v1, :cond_b3

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b3

    .line 1778
    const/4 v3, 0x1

    goto/16 :goto_b3

    .line 1747
    :cond_39
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_76

    .line 1748
    new-instance v5, Landroid/view/WindowManager$KeyCustomizeInfo;

    invoke-direct {v5}, Landroid/view/WindowManager$KeyCustomizeInfo;-><init>()V

    move-object v0, v5

    .line 1749
    nop

    .line 1750
    const-string/jumbo v5, "keyCode"

    invoke-direct {p0, p1, v5, v6}, Lcom/android/server/policy/KeyCustomizeManager;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/view/WindowManager$KeyCustomizeInfo;->keyCode:I

    .line 1751
    const-string/jumbo v5, "launchAction"

    const/4 v6, -0x1

    invoke-direct {p0, p1, v5, v6}, Lcom/android/server/policy/KeyCustomizeManager;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/view/WindowManager$KeyCustomizeInfo;->action:I

    .line 1752
    nop

    .line 1753
    const-string v5, "dispatching"

    invoke-direct {p0, p1, v5, v6}, Lcom/android/server/policy/KeyCustomizeManager;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/view/WindowManager$KeyCustomizeInfo;->dispatching:I

    .line 1754
    const-string/jumbo v5, "priority"

    invoke-direct {p0, p1, v5, v6}, Lcom/android/server/policy/KeyCustomizeManager;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/view/WindowManager$KeyCustomizeInfo;->priority:I

    .line 1755
    const/4 v5, -0x2

    const-string/jumbo v6, "userId"

    invoke-direct {p0, p1, v6, v5}, Lcom/android/server/policy/KeyCustomizeManager;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/view/WindowManager$KeyCustomizeInfo;->userId:I

    goto :goto_b3

    .line 1756
    :cond_76
    const-string/jumbo v5, "intent"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b3

    .line 1757
    if-eqz v0, :cond_b3

    .line 1758
    invoke-direct {p0, p1}, Lcom/android/server/policy/KeyCustomizeManager;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, v0, Landroid/view/WindowManager$KeyCustomizeInfo;->intent:Landroid/content/Intent;

    .line 1759
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_B2B_DEDICATED_APP:Z

    if-eqz v5, :cond_b3

    iget-object v5, v0, Landroid/view/WindowManager$KeyCustomizeInfo;->intent:Landroid/content/Intent;

    if-eqz v5, :cond_b3

    and-int/lit8 v5, p3, 0x3

    if-eqz v5, :cond_b3

    .line 1761
    iget v5, p0, Lcom/android/server/policy/KeyCustomizeManager;->mXmlVersion:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_a0

    iget v5, v0, Landroid/view/WindowManager$KeyCustomizeInfo;->priority:I

    const/16 v6, 0x44c

    if-eq v5, v6, :cond_af

    :cond_a0
    iget v5, p0, Lcom/android/server/policy/KeyCustomizeManager;->mXmlVersion:F

    const v6, 0x3e4ccccd    # 0.2f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_b3

    iget v5, v0, Landroid/view/WindowManager$KeyCustomizeInfo;->priority:I

    const/16 v6, 0x44d

    if-ne v5, v6, :cond_b3

    .line 1764
    :cond_af
    const/16 v5, 0x44e

    iput v5, v0, Landroid/view/WindowManager$KeyCustomizeInfo;->priority:I

    .line 1782
    :cond_b3
    :goto_b3
    if-nez v3, :cond_b9

    .line 1783
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 1785
    :cond_b9
    const/4 v5, 0x1

    if-eq v2, v5, :cond_be

    if-eqz v3, :cond_a

    .line 1786
    :cond_be
    return-void
.end method

.method private parseMigrationAttributes(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 1869
    nop

    .line 1870
    const-string v0, "b2bDeltaXCover"

    invoke-direct {p0, p1, v0}, Lcom/android/server/policy/KeyCustomizeManager;->getAttributeMigrationResultCode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mMigrationCodeB2BDeltaXCover:Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;

    .line 1871
    nop

    .line 1872
    const-string v0, "b2bDeltaTop"

    invoke-direct {p0, p1, v0}, Lcom/android/server/policy/KeyCustomizeManager;->getAttributeMigrationResultCode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mMigrationCodeB2BDeltaTop:Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;

    .line 1873
    return-void
.end method

.method private removeMultiTapKeyEventHandler(I)V
    .registers 5
    .param p1, "keyCode"    # I

    .line 1180
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDefaultDisplayMultiTapHandlers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/MultiTapKeyEventHandler;

    .line 1181
    .local v0, "handler":Lcom/android/server/policy/MultiTapKeyEventHandler;
    if-eqz v0, :cond_36

    .line 1182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removed MultiTapKeyEventHandler keyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    .line 1183
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1182
    const-string v2, "KeyCustomizeManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizeManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mDefaultDisplayMultiTapHandlers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1186
    :cond_36
    return-void
.end method

.method private restoreDefaultPriorityPolicy(II)V
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "press"    # I

    .line 1415
    and-int/lit8 v0, p2, 0x8

    const/4 v1, 0x3

    if-eqz v0, :cond_24

    .line 1416
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_18

    .line 1417
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DOUBLE_TAP_SIDE_KEY:Z

    if-eqz v0, :cond_10

    .line 1418
    invoke-direct {p0}, Lcom/android/server/policy/KeyCustomizeManager;->updateSideKeyDoubleTapSettings()V

    .line 1420
    :cond_10
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DOUBLE_TAP_SIDE_KEY:Z

    if-nez v0, :cond_24

    .line 1422
    invoke-direct {p0}, Lcom/android/server/policy/KeyCustomizeManager;->updatePowerKeyDoubleTapSettings()V

    goto :goto_24

    .line 1424
    :cond_18
    if-ne p1, v1, :cond_24

    .line 1425
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DOUBLE_TAP_SIDE_KEY:Z

    if-nez v0, :cond_21

    .line 1427
    invoke-direct {p0}, Lcom/android/server/policy/KeyCustomizeManager;->updatePowerKeyDoubleTapSettings()V

    .line 1430
    :cond_21
    invoke-direct {p0}, Lcom/android/server/policy/KeyCustomizeManager;->updateMultiTapHandlerForOneHandOp()V

    .line 1434
    :cond_24
    :goto_24
    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_2d

    .line 1435
    if-ne p1, v1, :cond_2d

    .line 1437
    invoke-direct {p0}, Lcom/android/server/policy/KeyCustomizeManager;->updateMultiTapHandlerForOneHandOp()V

    .line 1441
    :cond_2d
    and-int/lit8 v0, p2, 0x3

    if-eqz v0, :cond_55

    .line 1442
    const/16 v0, 0x3f7

    if-eq p1, v0, :cond_39

    const/16 v0, 0x437

    if-ne p1, v0, :cond_55

    .line 1444
    :cond_39
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_B2B_DEDICATED_APP:Z

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    # invokes: Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->hasBackupData()Z
    invoke-static {v0}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->access$000(Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1445
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1446
    :try_start_48
    iget-object v2, p0, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    # invokes: Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->restoreBackUpDataLocked(II)V
    invoke-static {v2, v1, p1}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->access$1100(Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;II)V

    .line 1447
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizeManager;->saveSettingsLocked()V

    .line 1448
    monitor-exit v0

    goto :goto_55

    :catchall_52
    move-exception v1

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_48 .. :try_end_54} :catchall_52

    throw v1

    .line 1452
    :cond_55
    :goto_55
    return-void
.end method

.method private restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;
    .registers 10
    .param p1, "in"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 1789
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1790
    .local v0, "intent":Landroid/content/Intent;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    .line 1791
    .local v1, "attrCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "attrNdx":I
    :goto_b
    if-ltz v2, :cond_41

    .line 1792
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 1793
    .local v3, "attrName":Ljava/lang/String;
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    .line 1794
    .local v4, "attrValue":Ljava/lang/String;
    const-string v5, "action"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_28

    const-string/jumbo v6, "null"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 1795
    const/4 v5, 0x0

    return-object v5

    .line 1796
    :cond_28
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 1798
    const/4 v5, 0x1

    :try_start_2f
    invoke-static {v4, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_33} :catch_35

    move-object v0, v5

    .line 1801
    goto :goto_3e

    .line 1799
    :catch_35
    move-exception v5

    .line 1800
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "KeyCustomizeManager"

    const-string/jumbo v7, "restoreFromXml failed"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    .end local v3    # "attrName":Ljava/lang/String;
    .end local v4    # "attrValue":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_3e
    :goto_3e
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 1804
    .end local v2    # "attrNdx":I
    :cond_41
    return-object v0
.end method

.method private setDoubleTapDisabled(I)V
    .registers 5
    .param p1, "keyCode"    # I

    .line 1189
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDefaultDisplayMultiTapHandlers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/MultiTapKeyEventHandler;

    .line 1190
    .local v0, "handler":Lcom/android/server/policy/MultiTapKeyEventHandler;
    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Lcom/android/server/policy/MultiTapKeyEventHandler;->isDoubleTapEnabled()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDoubleTapDisabled keyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyCustomizeManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/policy/MultiTapKeyEventHandler;->setDoubleTapEnabled(Z)V

    .line 1194
    :cond_2d
    return-void
.end method

.method private setTripleTapDisabled(I)V
    .registers 5
    .param p1, "keyCode"    # I

    .line 1197
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDefaultDisplayMultiTapHandlers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/MultiTapKeyEventHandler;

    .line 1198
    .local v0, "handler":Lcom/android/server/policy/MultiTapKeyEventHandler;
    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Lcom/android/server/policy/MultiTapKeyEventHandler;->isTripleTapEnabled()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTripleTapDisabled keyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyCustomizeManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/policy/MultiTapKeyEventHandler;->setTripleTapEnabled(Z)V

    .line 1202
    :cond_2d
    return-void
.end method

.method private sparseArrayToList(Landroid/util/SparseArray;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/WindowManager$KeyCustomizeInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/view/WindowManager$KeyCustomizeInfo;",
            ">;"
        }
    .end annotation

    .line 783
    .local p1, "infoArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/WindowManager$KeyCustomizeInfo;>;"
    if-nez p1, :cond_4

    .line 784
    const/4 v0, 0x0

    return-object v0

    .line 787
    :cond_4
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 788
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowManager$KeyCustomizeInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 789
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$KeyCustomizeInfo;

    .line 790
    .local v2, "info":Landroid/view/WindowManager$KeyCustomizeInfo;
    if-eqz v2, :cond_1b

    .line 791
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 788
    .end local v2    # "info":Landroid/view/WindowManager$KeyCustomizeInfo;
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 794
    .end local v1    # "i":I
    :cond_1e
    return-object v0
.end method

.method private startMCPTTService(ILandroid/view/KeyEvent;)V
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1405
    const/16 v0, 0x3f7

    if-eq p1, v0, :cond_8

    const/16 v0, 0x437

    if-ne p1, v0, :cond_28

    .line 1406
    :cond_8
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/android/server/policy/KeyCustomizeManager;->getIntent(II)Landroid/content/Intent;

    move-result-object v1

    .line 1407
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_28

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 1408
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.att.firstnet.grey"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1409
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/policy/KeyCustomizeManager;->startService(ILandroid/view/KeyEvent;I)V

    .line 1412
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_28
    return-void
.end method

.method private updateCallback()V
    .registers 5

    .line 1221
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mSingleTapCallback:Ljava/util/LinkedHashMap;

    const/16 v1, 0xbb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/-$$Lambda$KeyCustomizeManager$KsJ7uBnCSHTNxyZXf1uzQ0xsztw;

    invoke-direct {v2, p0}, Lcom/android/server/policy/-$$Lambda$KeyCustomizeManager$KsJ7uBnCSHTNxyZXf1uzQ0xsztw;-><init>(Lcom/android/server/policy/KeyCustomizeManager;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1226
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mSingleTapCallback:Ljava/util/LinkedHashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/-$$Lambda$KeyCustomizeManager$zOuF3BeQOyYMvRvHoGLajQK8t2U;

    invoke-direct {v2, p0}, Lcom/android/server/policy/-$$Lambda$KeyCustomizeManager$zOuF3BeQOyYMvRvHoGLajQK8t2U;-><init>(Lcom/android/server/policy/KeyCustomizeManager;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mSingleTapCallback:Ljava/util/LinkedHashMap;

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/server/policy/-$$Lambda$KeyCustomizeManager$X45nMaxGBNm8lQkqPg6kMnWrSCM;

    invoke-direct {v3, p0}, Lcom/android/server/policy/-$$Lambda$KeyCustomizeManager$X45nMaxGBNm8lQkqPg6kMnWrSCM;-><init>(Lcom/android/server/policy/KeyCustomizeManager;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1237
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mSingleTapCallback:Ljava/util/LinkedHashMap;

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/server/policy/-$$Lambda$KeyCustomizeManager$HAl0YjMNDBhabCekMgxFd39rzMY;

    invoke-direct {v3, p0}, Lcom/android/server/policy/-$$Lambda$KeyCustomizeManager$HAl0YjMNDBhabCekMgxFd39rzMY;-><init>(Lcom/android/server/policy/KeyCustomizeManager;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1243
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mSingleTapCallback:Ljava/util/LinkedHashMap;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/server/policy/-$$Lambda$KeyCustomizeManager$P6repMA-32_BzvkplxORdbyxjGw;

    invoke-direct {v3, p0}, Lcom/android/server/policy/-$$Lambda$KeyCustomizeManager$P6repMA-32_BzvkplxORdbyxjGw;-><init>(Lcom/android/server/policy/KeyCustomizeManager;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1249
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mDoubleTapCallback:Ljava/util/LinkedHashMap;

    new-instance v2, Lcom/android/server/policy/-$$Lambda$KeyCustomizeManager$nRS3IBdjXWdtjG27YjrTmsk09LY;

    invoke-direct {v2, p0}, Lcom/android/server/policy/-$$Lambda$KeyCustomizeManager$nRS3IBdjXWdtjG27YjrTmsk09LY;-><init>(Lcom/android/server/policy/KeyCustomizeManager;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1269
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mTripleTapCallback:Ljava/util/LinkedHashMap;

    new-instance v2, Lcom/android/server/policy/-$$Lambda$KeyCustomizeManager$cZIA_adveBwOAtxAjA6Y95igxHg;

    invoke-direct {v2, p0}, Lcom/android/server/policy/-$$Lambda$KeyCustomizeManager$cZIA_adveBwOAtxAjA6Y95igxHg;-><init>(Lcom/android/server/policy/KeyCustomizeManager;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1277
    return-void
.end method

.method private updateMultiTapHandlerForOneHandOp()V
    .registers 3

    .line 1470
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateMultiTapHandlerForOneHandOp(Z)V

    .line 1471
    return-void
.end method

.method private updateMultiTapKeyEventHandler(I)V
    .registers 5
    .param p1, "press"    # I

    .line 1149
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizeManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mDefaultDisplayMultiTapHandlers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 1150
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizeManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mDefaultDisplayMultiTapHandlers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1151
    .local v1, "keyCode":I
    iget-object v2, p0, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->get(II)Landroid/view/WindowManager$KeyCustomizeInfo;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 1152
    invoke-direct {p0, v1}, Lcom/android/server/policy/KeyCustomizeManager;->setDoubleTapDisabled(I)V

    goto :goto_22

    .line 1154
    :cond_1f
    invoke-direct {p0, v1}, Lcom/android/server/policy/KeyCustomizeManager;->removeMultiTapKeyEventHandler(I)V

    .line 1149
    .end local v1    # "keyCode":I
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1157
    .end local v0    # "i":I
    :cond_25
    return-void
.end method

.method private updatePowerKeyDoubleTapSettings()V
    .registers 4

    .line 1462
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSettingsObserver:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    .line 1463
    const-string v1, "double_tab_launch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1462
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->onForceUpdate(Landroid/net/Uri;Z)V

    .line 1465
    return-void
.end method

.method private updateSideKeyDoubleTapSettings()V
    .registers 2

    .line 1456
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateSideKeyDoubleTapSettings()V

    .line 1457
    return-void
.end method

.method private writeHotKeysAttributes(Lorg/xmlpull/v1/XmlSerializer;Landroid/util/SparseArray;)V
    .registers 10
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Landroid/util/SparseArray<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2042
    .local p2, "infoArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/ComponentName;>;"
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_c

    .line 2043
    const-string v0, "KeyCustomizeManager"

    const-string/jumbo v1, "writeHotKeysAttributes."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    :cond_c
    if-eqz p2, :cond_4b

    .line 2047
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_4b

    .line 2048
    const/4 v1, 0x0

    const-string/jumbo v2, "key"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2049
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 2050
    .local v3, "keyCode":I
    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 2051
    .local v4, "componentName":Landroid/content/ComponentName;
    if-eqz v4, :cond_48

    .line 2052
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "keyCode"

    invoke-interface {p1, v1, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2053
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "package_name"

    invoke-interface {p1, v1, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2054
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "class_name"

    invoke-interface {p1, v1, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2055
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2047
    .end local v3    # "keyCode":I
    .end local v4    # "componentName":Landroid/content/ComponentName;
    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 2059
    .end local v0    # "i":I
    :cond_4b
    return-void
.end method

.method private writeKeyCustomizeAttributes(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/util/SparseArray;)V
    .registers 12
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroid/view/WindowManager$KeyCustomizeInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1818
    .local p3, "infoArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/WindowManager$KeyCustomizeInfo;>;"
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1b

    .line 1819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "writeKeyCustomizeAttributes. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyCustomizeManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    :cond_1b
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1823
    if-eqz p3, :cond_95

    .line 1824
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_22
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_95

    .line 1825
    const-string/jumbo v2, "key"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1826
    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager$KeyCustomizeInfo;

    .line 1828
    .local v3, "info":Landroid/view/WindowManager$KeyCustomizeInfo;
    iget v4, v3, Landroid/view/WindowManager$KeyCustomizeInfo;->keyCode:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "keyCode"

    invoke-interface {p1, v0, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1829
    iget v4, v3, Landroid/view/WindowManager$KeyCustomizeInfo;->action:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "launchAction"

    invoke-interface {p1, v0, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1830
    iget v4, v3, Landroid/view/WindowManager$KeyCustomizeInfo;->dispatching:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "dispatching"

    invoke-interface {p1, v0, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1831
    iget v4, v3, Landroid/view/WindowManager$KeyCustomizeInfo;->priority:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "priority"

    invoke-interface {p1, v0, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1832
    iget v4, v3, Landroid/view/WindowManager$KeyCustomizeInfo;->userId:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "userId"

    invoke-interface {p1, v0, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1833
    const-string/jumbo v4, "intent"

    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1835
    iget-object v5, v3, Landroid/view/WindowManager$KeyCustomizeInfo;->intent:Landroid/content/Intent;

    const-string v6, "action"

    if-eqz v5, :cond_86

    .line 1836
    iget-object v5, v3, Landroid/view/WindowManager$KeyCustomizeInfo;->intent:Landroid/content/Intent;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v0, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_8c

    .line 1838
    :cond_86
    const-string/jumbo v5, "null"

    invoke-interface {p1, v0, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1840
    :goto_8c
    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1842
    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1824
    .end local v3    # "info":Landroid/view/WindowManager$KeyCustomizeInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 1845
    .end local v1    # "i":I
    :cond_95
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1846
    return-void
.end method

.method private writeMigrationAttributes(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 5
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1850
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_c

    .line 1851
    const-string v0, "KeyCustomizeManager"

    const-string/jumbo v1, "writeMigrationAttributes."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    :cond_c
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mMigrationCodeB2BDeltaXCover:Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;

    .line 1855
    invoke-virtual {v0}, Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;->getCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1854
    const/4 v1, 0x0

    const-string v2, "b2bDeltaXCover"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1856
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mMigrationCodeB2BDeltaTop:Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;

    .line 1857
    invoke-virtual {v0}, Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;->getCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1856
    const-string v2, "b2bDeltaTop"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1858
    return-void
.end method


# virtual methods
.method clearKeyCustomizeEvent(IIZZ)V
    .registers 8
    .param p1, "priority"    # I
    .param p2, "press"    # I
    .param p3, "isClearAll"    # Z
    .param p4, "restore"    # Z

    .line 256
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->isRequestedHigherPriority(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 257
    return-void

    .line 260
    :cond_9
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_3b

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearKeyCustomizeEvent priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " press="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isClearAll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " restore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyCustomizeManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_3b
    const/4 v0, 0x1

    if-eqz p3, :cond_4f

    .line 266
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    const/16 v2, 0x1f

    invoke-virtual {v1, v2}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->clear(I)V

    .line 267
    if-eqz p4, :cond_54

    .line 268
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2, v0}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->setPriority(IZ)V

    goto :goto_54

    .line 271
    :cond_4f
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    invoke-virtual {v1, p2}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->clear(I)V

    .line 274
    :cond_54
    :goto_54
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizeManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 275
    :try_start_57
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizeManager;->saveSettingsLocked()V

    .line 276
    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_57 .. :try_end_5b} :catchall_102

    .line 278
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizeManager;->isHigherPriorityThanDefault(I)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 279
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizeManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/KeyCustomizeManager;->mNotifyKeyCustomizeInfoChanged:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 280
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizeManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/KeyCustomizeManager;->mNotifyKeyCustomizeInfoChanged:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 283
    :cond_6f
    if-eqz p3, :cond_8b

    .line 284
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_72
    iget-object v2, p0, Lcom/android/server/policy/KeyCustomizeManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManagerExt;->mDefaultDisplayMultiTapHandlers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_8a

    .line 285
    iget-object v2, p0, Lcom/android/server/policy/KeyCustomizeManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManagerExt;->mDefaultDisplayMultiTapHandlers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/policy/KeyCustomizeManager;->removeMultiTapKeyEventHandler(I)V

    .line 284
    add-int/lit8 v1, v1, 0x1

    goto :goto_72

    .end local v1    # "i":I
    :cond_8a
    goto :goto_9d

    .line 288
    :cond_8b
    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_94

    .line 289
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/android/server/policy/KeyCustomizeManager;->updateMultiTapKeyEventHandler(I)V

    .line 291
    :cond_94
    and-int/lit8 v1, p2, 0x10

    if-eqz v1, :cond_9d

    .line 292
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/server/policy/KeyCustomizeManager;->updateMultiTapKeyEventHandler(I)V

    .line 296
    :cond_9d
    :goto_9d
    if-eqz p4, :cond_101

    .line 297
    if-eqz p3, :cond_c5

    .line 298
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizeManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mSettingsObserver:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    invoke-virtual {v1, v0}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->updateSettings(Z)V

    .line 299
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_B2B_DEDICATED_APP:Z

    if-eqz v0, :cond_101

    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    # invokes: Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->hasBackupData()Z
    invoke-static {v0}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->access$000(Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;)Z

    move-result v0

    if-eqz v0, :cond_101

    .line 300
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 301
    :try_start_b7
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    const/4 v2, 0x7

    # invokes: Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->restoreBackupDataAllLocked(I)V
    invoke-static {v1, v2}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->access$100(Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;I)V

    .line 302
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizeManager;->saveSettingsLocked()V

    .line 303
    monitor-exit v0

    goto :goto_101

    :catchall_c2
    move-exception v1

    monitor-exit v0
    :try_end_c4
    .catchall {:try_start_b7 .. :try_end_c4} :catchall_c2

    throw v1

    .line 306
    :cond_c5
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_da

    .line 307
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DOUBLE_TAP_SIDE_KEY:Z

    if-eqz v0, :cond_d0

    .line 308
    invoke-direct {p0}, Lcom/android/server/policy/KeyCustomizeManager;->updateSideKeyDoubleTapSettings()V

    .line 310
    :cond_d0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DOUBLE_TAP_SIDE_KEY:Z

    if-nez v0, :cond_d7

    .line 313
    invoke-direct {p0}, Lcom/android/server/policy/KeyCustomizeManager;->updatePowerKeyDoubleTapSettings()V

    .line 316
    :cond_d7
    invoke-direct {p0}, Lcom/android/server/policy/KeyCustomizeManager;->updateMultiTapHandlerForOneHandOp()V

    .line 319
    :cond_da
    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_e1

    .line 321
    invoke-direct {p0}, Lcom/android/server/policy/KeyCustomizeManager;->updateMultiTapHandlerForOneHandOp()V

    .line 324
    :cond_e1
    and-int/lit8 v0, p2, 0x3

    if-eqz v0, :cond_101

    .line 325
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_B2B_DEDICATED_APP:Z

    if-eqz v0, :cond_101

    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    # invokes: Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->hasBackupData()Z
    invoke-static {v0}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->access$000(Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;)Z

    move-result v0

    if-eqz v0, :cond_101

    .line 326
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 327
    :try_start_f4
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    # invokes: Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->restoreBackupDataLocked(I)V
    invoke-static {v1, p2}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->access$200(Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;I)V

    .line 328
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizeManager;->saveSettingsLocked()V

    .line 329
    monitor-exit v0

    goto :goto_101

    :catchall_fe
    move-exception v1

    monitor-exit v0
    :try_end_100
    .catchall {:try_start_f4 .. :try_end_100} :catchall_fe

    throw v1

    .line 334
    :cond_101
    :goto_101
    return-void

    .line 276
    :catchall_102
    move-exception v0

    :try_start_103
    monitor-exit v1
    :try_end_104
    .catchall {:try_start_103 .. :try_end_104} :catchall_102

    throw v0
.end method

.method clearKeyCustomizeEventByKeyCode(IIZ)V
    .registers 10
    .param p1, "priority"    # I
    .param p2, "keyCode"    # I
    .param p3, "restore"    # Z

    .line 338
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->isRequestedHigherPriority(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 339
    return-void

    .line 342
    :cond_9
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_33

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearKeyCustomizeEvent priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " keyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " restore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyCustomizeManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_33
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    const/16 v1, 0xf

    invoke-virtual {v0, v1, p2}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->remove(II)V

    .line 349
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    invoke-virtual {v0}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->isEmptyAllData()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4a

    .line 350
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    const/16 v3, 0x3e8

    invoke-virtual {v0, v3, v2}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->setPriority(IZ)V

    .line 353
    :cond_4a
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 354
    :try_start_4d
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizeManager;->saveSettingsLocked()V

    .line 355
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_8c

    .line 357
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizeManager;->isHigherPriorityThanDefault(I)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 358
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/KeyCustomizeManager;->mNotifyKeyCustomizeInfoChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 359
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/KeyCustomizeManager;->mNotifyKeyCustomizeInfoChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 363
    :cond_65
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    const/16 v3, 0x8

    invoke-virtual {v0, v3, p2}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->get(II)Landroid/view/WindowManager$KeyCustomizeInfo;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_72

    move v0, v2

    goto :goto_73

    :cond_72
    move v0, v3

    .line 365
    .local v0, "hasDoublePressData":Z
    :goto_73
    iget-object v4, p0, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    const/16 v5, 0x10

    invoke-virtual {v4, v5, p2}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->get(II)Landroid/view/WindowManager$KeyCustomizeInfo;

    move-result-object v4

    if-eqz v4, :cond_7e

    goto :goto_7f

    :cond_7e
    move v2, v3

    .line 366
    .local v2, "hasTriplePressData":Z
    :goto_7f
    if-nez v0, :cond_86

    if-nez v2, :cond_86

    .line 367
    invoke-direct {p0, p2}, Lcom/android/server/policy/KeyCustomizeManager;->removeMultiTapKeyEventHandler(I)V

    .line 370
    :cond_86
    if-eqz p3, :cond_8b

    .line 371
    invoke-direct {p0, p2, v1}, Lcom/android/server/policy/KeyCustomizeManager;->restoreDefaultPriorityPolicy(II)V

    .line 373
    :cond_8b
    return-void

    .line 355
    .end local v0    # "hasDoublePressData":Z
    .end local v2    # "hasTriplePressData":Z
    :catchall_8c
    move-exception v1

    :try_start_8d
    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8c

    throw v1
.end method

.method dispatchKeyCustomizeKeyEvent(ILandroid/view/KeyEvent;)I
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1286
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/policy/KeyCustomizeManager;->dispatchKeyCustomizeKeyEvent(ILandroid/view/KeyEvent;Z)I

    move-result v0

    return v0
.end method

.method dispatchKeyCustomizeKeyEvent(ILandroid/view/KeyEvent;Z)I
    .registers 22
    .param p1, "displayId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "forceDispatching"    # Z

    .line 1291
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 1292
    .local v3, "keyCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    .line 1293
    .local v4, "repeatCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v5

    .line 1294
    .local v5, "isLongPress":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    const/4 v8, 0x1

    if-nez v6, :cond_1b

    move v6, v8

    goto :goto_1c

    :cond_1b
    const/4 v6, 0x0

    .line 1296
    .local v6, "down":Z
    :goto_1c
    const/4 v9, 0x3

    invoke-virtual {v0, v9, v3}, Lcom/android/server/policy/KeyCustomizeManager;->getAction(II)I

    move-result v10

    .line 1297
    .local v10, "pressAction":I
    const/16 v11, 0x8

    invoke-virtual {v0, v11, v3}, Lcom/android/server/policy/KeyCustomizeManager;->getAction(II)I

    move-result v11

    .line 1298
    .local v11, "doubleAction":I
    const/16 v12, 0x10

    invoke-virtual {v0, v12, v3}, Lcom/android/server/policy/KeyCustomizeManager;->getAction(II)I

    move-result v12

    .line 1299
    .local v12, "tripleAction":I
    const/4 v13, 0x4

    invoke-virtual {v0, v13, v3}, Lcom/android/server/policy/KeyCustomizeManager;->getAction(II)I

    move-result v14

    .line 1301
    .local v14, "longPressAction":I
    const/4 v15, 0x0

    .line 1302
    .local v15, "handler":Lcom/android/server/policy/MultiTapKeyEventHandler;
    const/16 v16, 0x0

    .line 1303
    .local v16, "isDoubleTapEnabled":Z
    const/16 v17, 0x0

    .line 1304
    .local v17, "isTripleTapEnabled":Z
    const/4 v7, -0x1

    if-eqz v1, :cond_3c

    if-ne v1, v7, :cond_5b

    .line 1305
    :cond_3c
    iget-object v7, v0, Lcom/android/server/policy/KeyCustomizeManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v7, v7, Lcom/android/server/policy/PhoneWindowManagerExt;->mDefaultDisplayMultiTapHandlers:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v15, v7

    check-cast v15, Lcom/android/server/policy/MultiTapKeyEventHandler;

    .line 1306
    if-eqz v15, :cond_4e

    invoke-virtual {v15}, Lcom/android/server/policy/MultiTapKeyEventHandler;->isDoubleTapEnabled()Z

    move-result v7

    goto :goto_4f

    :cond_4e
    const/4 v7, 0x0

    :goto_4f
    move/from16 v16, v7

    .line 1307
    if-eqz v15, :cond_58

    invoke-virtual {v15}, Lcom/android/server/policy/MultiTapKeyEventHandler;->isTripleTapEnabled()Z

    move-result v7

    goto :goto_59

    :cond_58
    const/4 v7, 0x0

    :goto_59
    move/from16 v17, v7

    .line 1310
    :cond_5b
    const/4 v7, 0x2

    if-eq v11, v8, :cond_cd

    if-eq v11, v9, :cond_cd

    if-eqz v11, :cond_cd

    if-nez v12, :cond_66

    goto/16 :goto_cd

    .line 1339
    :cond_66
    if-eq v10, v8, :cond_81

    if-eq v14, v8, :cond_81

    if-eq v10, v9, :cond_81

    if-ne v14, v9, :cond_6f

    goto :goto_81

    .line 1392
    :cond_6f
    if-eq v10, v7, :cond_79

    if-ne v14, v7, :cond_74

    goto :goto_79

    .line 1397
    :cond_74
    if-eqz v5, :cond_eb

    if-ne v14, v13, :cond_eb

    .line 1398
    return v8

    .line 1394
    :cond_79
    :goto_79
    invoke-virtual {v0, v2}, Lcom/android/server/policy/KeyCustomizeManager;->sendBroadcast(Landroid/view/KeyEvent;)I

    move-result v9

    const/4 v13, -0x1

    if-ne v9, v13, :cond_eb

    .line 1395
    return v8

    .line 1343
    :cond_81
    :goto_81
    if-eqz v6, :cond_a3

    .line 1344
    if-nez v4, :cond_8f

    .line 1345
    const/4 v7, 0x0

    iput-boolean v7, v0, Lcom/android/server/policy/KeyCustomizeManager;->mIsKeyLongPressed:Z

    .line 1348
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->FW_B2B_DEDICATED_APP:Z

    if-eqz v7, :cond_8f

    .line 1349
    invoke-direct {v0, v3, v2}, Lcom/android/server/policy/KeyCustomizeManager;->startMCPTTService(ILandroid/view/KeyEvent;)V

    .line 1352
    :cond_8f
    if-eqz v5, :cond_c5

    .line 1353
    iput-boolean v8, v0, Lcom/android/server/policy/KeyCustomizeManager;->mIsKeyLongPressed:Z

    .line 1354
    if-ne v14, v8, :cond_99

    .line 1355
    invoke-virtual {v0, v13, v3}, Lcom/android/server/policy/KeyCustomizeManager;->startActivity(II)V

    .line 1356
    return v8

    .line 1357
    :cond_99
    if-ne v14, v9, :cond_9f

    .line 1358
    invoke-virtual {v0, v13, v2, v3}, Lcom/android/server/policy/KeyCustomizeManager;->startService(ILandroid/view/KeyEvent;I)V

    .line 1359
    return v8

    .line 1360
    :cond_9f
    if-ne v14, v13, :cond_a2

    .line 1361
    return v8

    .line 1363
    :cond_a2
    return v9

    .line 1367
    :cond_a3
    iget-boolean v7, v0, Lcom/android/server/policy/KeyCustomizeManager;->mIsKeyLongPressed:Z

    if-nez v7, :cond_be

    .line 1368
    if-ne v10, v8, :cond_ad

    .line 1369
    invoke-virtual {v0, v9, v3}, Lcom/android/server/policy/KeyCustomizeManager;->startActivity(II)V

    goto :goto_c5

    .line 1370
    :cond_ad
    if-ne v10, v9, :cond_b3

    .line 1371
    invoke-virtual {v0, v9, v2, v3}, Lcom/android/server/policy/KeyCustomizeManager;->startService(ILandroid/view/KeyEvent;I)V

    goto :goto_c5

    .line 1374
    :cond_b3
    if-eqz p3, :cond_c5

    .line 1375
    iget-object v7, v0, Lcom/android/server/policy/KeyCustomizeManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/high16 v13, 0x10000000

    const/4 v9, 0x0

    invoke-virtual {v7, v3, v13, v9}, Lcom/android/server/policy/PhoneWindowManagerExt;->injectionKeyEvent(III)V

    goto :goto_c5

    .line 1381
    :cond_be
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->FW_B2B_DEDICATED_APP:Z

    if-eqz v7, :cond_c5

    .line 1382
    invoke-direct {v0, v3, v2}, Lcom/android/server/policy/KeyCustomizeManager;->startMCPTTService(ILandroid/view/KeyEvent;)V

    .line 1387
    :cond_c5
    :goto_c5
    if-nez p3, :cond_cc

    if-eq v10, v8, :cond_cc

    const/4 v7, 0x3

    if-ne v10, v7, :cond_eb

    .line 1390
    :cond_cc
    return v8

    .line 1314
    :cond_cd
    :goto_cd
    const/4 v7, 0x0

    .line 1315
    .local v7, "isLaunchedLongPressAction":Z
    if-eqz v5, :cond_e2

    .line 1316
    if-ne v14, v8, :cond_d7

    .line 1317
    invoke-virtual {v0, v13, v3}, Lcom/android/server/policy/KeyCustomizeManager;->startActivity(II)V

    .line 1318
    const/4 v7, 0x1

    goto :goto_e2

    .line 1319
    :cond_d7
    const/4 v9, 0x3

    if-ne v14, v9, :cond_df

    .line 1320
    invoke-virtual {v0, v13, v2, v3}, Lcom/android/server/policy/KeyCustomizeManager;->startService(ILandroid/view/KeyEvent;I)V

    .line 1321
    const/4 v7, 0x1

    goto :goto_e2

    .line 1322
    :cond_df
    if-ne v14, v13, :cond_e2

    .line 1323
    const/4 v7, 0x1

    .line 1327
    :cond_e2
    :goto_e2
    if-nez v16, :cond_ed

    if-eqz v17, :cond_e7

    goto :goto_ed

    .line 1336
    :cond_e7
    if-eqz v7, :cond_ea

    .line 1337
    return v8

    .line 1339
    .end local v7    # "isLaunchedLongPressAction":Z
    :cond_ea
    nop

    .line 1401
    :cond_eb
    const/4 v7, 0x2

    return v7

    .line 1328
    .restart local v7    # "isLaunchedLongPressAction":Z
    :cond_ed
    :goto_ed
    if-eqz v15, :cond_fb

    invoke-virtual {v15, v2}, Lcom/android/server/policy/MultiTapKeyEventHandler;->dispatchMultiTapKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v9

    if-nez v9, :cond_fb

    if-eqz v5, :cond_fb

    if-nez v7, :cond_fb

    .line 1330
    const/4 v8, 0x3

    return v8

    .line 1332
    :cond_fb
    return v8
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 9
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 2099
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "KeyCustomize data state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mXmlVersion:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 2100
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2101
    :try_start_10
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCurrentPriority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    invoke-virtual {v2}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->getPriority()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2103
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "KEY_PRESS_DOWN OR UP ---"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2104
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->getAll(I)Landroid/util/SparseArray;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/policy/KeyCustomizeManager;->dumpKeyCustomizeInfo(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/SparseArray;)V

    .line 2106
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "KEY_PRESS_LONG ---"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2107
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->getAll(I)Landroid/util/SparseArray;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/policy/KeyCustomizeManager;->dumpKeyCustomizeInfo(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/SparseArray;)V

    .line 2109
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "KEY_PRESS_DOUBLE ---"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2110
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->getAll(I)Landroid/util/SparseArray;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/policy/KeyCustomizeManager;->dumpKeyCustomizeInfo(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/SparseArray;)V

    .line 2112
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "KEY_PRESS_TRIPLE ---"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2113
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->getAll(I)Landroid/util/SparseArray;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/policy/KeyCustomizeManager;->dumpKeyCustomizeInfo(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/SparseArray;)V

    .line 2115
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_B2B_DEDICATED_APP:Z

    if-eqz v1, :cond_9e

    .line 2116
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "BACKUP KEY_PRESS_DOWN OR UP ---"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2117
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    .line 2118
    # invokes: Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->getBackupKeyCustomizeDataLocked(I)Landroid/util/SparseArray;
    invoke-static {v1, v2}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->access$1200(Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;I)Landroid/util/SparseArray;

    move-result-object v1

    .line 2117
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/policy/KeyCustomizeManager;->dumpKeyCustomizeInfo(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/SparseArray;)V

    .line 2120
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "BACKUP KEY_PRESS_LONG ---"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2121
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    .line 2122
    # invokes: Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->getBackupKeyCustomizeDataLocked(I)Landroid/util/SparseArray;
    invoke-static {v1, v3}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->access$1200(Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;I)Landroid/util/SparseArray;

    move-result-object v1

    .line 2121
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/policy/KeyCustomizeManager;->dumpKeyCustomizeInfo(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/SparseArray;)V

    .line 2126
    :cond_9e
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "HotKeys="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2127
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    # invokes: Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->getHotKeyMapLocked()Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->access$1300(Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;)Landroid/util/SparseArray;

    move-result-object v1

    .line 2128
    .local v1, "hotKeyMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/ComponentName;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_ad
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_d5

    .line 2129
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 2130
    .local v3, "keyCode":I
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 2131
    .local v4, "componentName":Landroid/content/ComponentName;
    if-eqz v4, :cond_d2

    .line 2132
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, " KeyCode "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 2133
    const-string v5, ", componentName: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2128
    .end local v3    # "keyCode":I
    .end local v4    # "componentName":Landroid/content/ComponentName;
    :cond_d2
    add-int/lit8 v2, v2, 0x1

    goto :goto_ad

    .line 2137
    .end local v1    # "hotKeyMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/ComponentName;>;"
    .end local v2    # "i":I
    :cond_d5
    monitor-exit v0
    :try_end_d6
    .catchall {:try_start_10 .. :try_end_d6} :catchall_124

    .line 2139
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_B2B_DEDICATED_APP:Z

    if-eqz v0, :cond_108

    .line 2140
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2141
    const-string/jumbo v0, "mMigrationCodeB2BDeltaXCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mMigrationCodeB2BDeltaXCover:Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2142
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2143
    const-string/jumbo v0, "mMigrationCodeB2BDeltaTop="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mMigrationCodeB2BDeltaTop:Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2144
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2145
    const-string/jumbo v0, "hasBackupData="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    # invokes: Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->hasBackupData()Z
    invoke-static {v0}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->access$000(Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2147
    :cond_108
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "XmlFileErrorCode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mXmlFileErrorCode:Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2149
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mIsAvailableRoutinePlus="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mIsAvailableRoutinePlus:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2150
    return-void

    .line 2137
    :catchall_124
    move-exception v1

    :try_start_125
    monitor-exit v0
    :try_end_126
    .catchall {:try_start_125 .. :try_end_126} :catchall_124

    throw v1
.end method

.method getAction(II)I
    .registers 6
    .param p1, "press"    # I
    .param p2, "keyCode"    # I

    .line 798
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 799
    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    .line 800
    # invokes: Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->getKeyCustomizeDataLocked(I)Landroid/util/SparseArray;
    invoke-static {v1, p1}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->access$500(Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;I)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$KeyCustomizeInfo;

    .line 801
    .local v1, "info":Landroid/view/WindowManager$KeyCustomizeInfo;
    if-nez v1, :cond_14

    .line 802
    const/4 v2, -0x1

    monitor-exit v0

    return v2

    .line 804
    :cond_14
    iget v2, v1, Landroid/view/WindowManager$KeyCustomizeInfo;->action:I

    monitor-exit v0

    return v2

    .line 805
    .end local v1    # "info":Landroid/view/WindowManager$KeyCustomizeInfo;
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method getHotKeyComponentName(I)Landroid/content/ComponentName;
    .registers 4
    .param p1, "keyCode"    # I

    .line 2035
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2036
    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    # invokes: Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->getHotKeyMapLocked()Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->access$1300(Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    monitor-exit v0

    return-object v1

    .line 2037
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method getIntent(II)Landroid/content/Intent;
    .registers 6
    .param p1, "press"    # I
    .param p2, "keyCode"    # I

    .line 820
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 821
    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    .line 822
    # invokes: Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->getKeyCustomizeDataLocked(I)Landroid/util/SparseArray;
    invoke-static {v1, p1}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->access$500(Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;I)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$KeyCustomizeInfo;

    .line 823
    .local v1, "info":Landroid/view/WindowManager$KeyCustomizeInfo;
    if-nez v1, :cond_14

    .line 824
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 826
    :cond_14
    iget-object v2, v1, Landroid/view/WindowManager$KeyCustomizeInfo;->intent:Landroid/content/Intent;

    monitor-exit v0

    return-object v2

    .line 827
    .end local v1    # "info":Landroid/view/WindowManager$KeyCustomizeInfo;
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method getKeyCustomizeEvent(II)Landroid/view/WindowManager$KeyCustomizeInfo;
    .registers 4
    .param p1, "press"    # I
    .param p2, "keyCode"    # I

    .line 197
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->get(II)Landroid/view/WindowManager$KeyCustomizeInfo;

    move-result-object v0

    return-object v0
.end method

.method getKeyCustomizeEventAll(I)Ljava/util/List;
    .registers 3
    .param p1, "press"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/WindowManager$KeyCustomizeInfo;",
            ">;"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->getAll(I)Landroid/util/SparseArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/policy/KeyCustomizeManager;->sparseArrayToList(Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getMultiTapKeyEventHandler(I)Lcom/android/server/policy/MultiTapKeyEventHandler;
    .registers 5
    .param p1, "keyCode"    # I

    .line 1139
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDefaultDisplayMultiTapHandlers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/MultiTapKeyEventHandler;

    .line 1140
    .local v0, "handler":Lcom/android/server/policy/MultiTapKeyEventHandler;
    if-nez v0, :cond_1e

    .line 1141
    new-instance v1, Lcom/android/server/policy/MultiTapKeyEventHandler;

    new-instance v2, Lcom/android/server/policy/KeyCustomizeManager$MultiTapCustomizeKeyCallback;

    invoke-direct {v2, p0, p1}, Lcom/android/server/policy/KeyCustomizeManager$MultiTapCustomizeKeyCallback;-><init>(Lcom/android/server/policy/KeyCustomizeManager;I)V

    invoke-direct {v1, p1, v2}, Lcom/android/server/policy/MultiTapKeyEventHandler;-><init>(ILcom/android/server/policy/MultiTapKeyCallback;)V

    move-object v0, v1

    .line 1143
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizeManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mDefaultDisplayMultiTapHandlers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1145
    :cond_1e
    return-object v0
.end method

.method getPriority(II)I
    .registers 6
    .param p1, "press"    # I
    .param p2, "keyCode"    # I

    .line 809
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 810
    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    .line 811
    # invokes: Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->getKeyCustomizeDataLocked(I)Landroid/util/SparseArray;
    invoke-static {v1, p1}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->access$500(Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;I)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$KeyCustomizeInfo;

    .line 812
    .local v1, "info":Landroid/view/WindowManager$KeyCustomizeInfo;
    if-nez v1, :cond_14

    .line 813
    const/4 v2, -0x1

    monitor-exit v0

    return v2

    .line 815
    :cond_14
    iget v2, v1, Landroid/view/WindowManager$KeyCustomizeInfo;->priority:I

    monitor-exit v0

    return v2

    .line 816
    .end local v1    # "info":Landroid/view/WindowManager$KeyCustomizeInfo;
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method getXmlFileErrorCode()Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;
    .registers 2

    .line 1647
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mXmlFileErrorCode:Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;

    return-object v0
.end method

.method initXmlFileInfo()V
    .registers 5

    .line 1890
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizeManager;->updateXmlVersion()Z

    move-result v0

    .line 1891
    .local v0, "shouldSaveSettings":Z
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/android/server/policy/KeyCustomizeManager;->getKeyCustomizeDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "key_customize_info.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1892
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 1893
    const-string v2, "KeyCustomizeManager"

    const-string/jumbo v3, "xml file no exists."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    const/4 v0, 0x1

    .line 1897
    :cond_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initXmlFileInfo, ver="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/policy/KeyCustomizeManager;->mXmlVersion:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " saveSettings="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyCustomizeManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    if-eqz v0, :cond_4d

    .line 1899
    iget-object v2, p0, Lcom/android/server/policy/KeyCustomizeManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1900
    :try_start_45
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizeManager;->saveSettingsLocked()V

    .line 1901
    monitor-exit v2

    goto :goto_4d

    :catchall_4a
    move-exception v3

    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_4a

    throw v3

    .line 1903
    :cond_4d
    :goto_4d
    return-void
.end method

.method isHigherPriorityThanDefault(I)Z
    .registers 3
    .param p1, "priority"    # I

    .line 376
    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public synthetic lambda$new$0$KeyCustomizeManager()V
    .registers 5

    .line 1210
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    if-nez v0, :cond_9

    .line 1211
    return-void

    .line 1214
    :cond_9
    const-string v0, "KeyCustomizeManager"

    const-string v1, "broadcast keyCustomize info changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.action.KEYCUSTOMIZE_INFO_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1216
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizeManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v3, "com.samsung.android.permisson.ACCESS_KEYCUSTOMIZE_INFO"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1218
    return-void
.end method

.method public synthetic lambda$updateCallback$1$KeyCustomizeManager()Z
    .registers 2

    .line 1222
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    .line 1223
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$updateCallback$2$KeyCustomizeManager()Z
    .registers 3

    .line 1227
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->handleShortPressOnHome(I)V

    .line 1228
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$updateCallback$3$KeyCustomizeManager()Z
    .registers 5

    .line 1232
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/16 v1, 0x18

    const/high16 v2, 0x10000000

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->injectionKeyEvent(III)V

    .line 1234
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$updateCallback$4$KeyCustomizeManager()Z
    .registers 5

    .line 1238
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/16 v1, 0x19

    const/high16 v2, 0x10000000

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->injectionKeyEvent(III)V

    .line 1240
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$updateCallback$5$KeyCustomizeManager()Z
    .registers 5

    .line 1244
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/4 v1, 0x4

    const/high16 v2, 0x10000000

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->injectionKeyEvent(III)V

    .line 1246
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$updateCallback$6$KeyCustomizeManager()Z
    .registers 4

    .line 1250
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    .line 1251
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 1252
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isNavigationBarVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1253
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->toggleOneHandOpByHomeKey()Z

    goto :goto_37

    .line 1256
    :cond_1d
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDoubleTapLaunchBehavior:I

    const/4 v2, 0x3

    if-nez v0, :cond_32

    .line 1258
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isCameraRunning()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1259
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendBroadcastDoubleClick(I)V

    .line 1261
    :cond_31
    return v1

    .line 1264
    :cond_32
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->handleDoubleTapLaunchCamera(I)V

    .line 1266
    :cond_37
    :goto_37
    return v1
.end method

.method public synthetic lambda$updateCallback$7$KeyCustomizeManager()Z
    .registers 2

    .line 1270
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v0

    if-nez v0, :cond_17

    .line 1271
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isOneHandOpTriggeredByHomeKey()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1272
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->toggleOneHandOpByHomeKey()Z

    .line 1275
    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method loadSettingsLocked()V
    .registers 13

    .line 1651
    const-string v0, "backup"

    const-string v1, "KeyCustomizeManager"

    const-string/jumbo v2, "loadSettingsLockedInternal"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    const/4 v2, 0x0

    .line 1654
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/android/server/policy/KeyCustomizeManager;->getKeyCustomizeDir()Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "key_customize_info.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1656
    .local v3, "file":Ljava/io/File;
    :try_start_17
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v4

    .line 1657
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 1658
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 1662
    :cond_29
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 1663
    .local v5, "type":I
    const/4 v6, 0x2

    if-ne v5, v6, :cond_109

    .line 1664
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1665
    .local v6, "tag":Ljava/lang/String;
    const-string/jumbo v7, "keycustomize_info_version"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_53

    .line 1666
    const-string/jumbo v7, "version"

    invoke-interface {v4, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1667
    .local v7, "value":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_51

    .line 1668
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, p0, Lcom/android/server/policy/KeyCustomizeManager;->mXmlVersion:F

    .line 1670
    .end local v7    # "value":Ljava/lang/String;
    :cond_51
    goto/16 :goto_109

    :cond_53
    const-string/jumbo v7, "press"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v9, 0x3

    if-eqz v7, :cond_6e

    .line 1671
    iget-object v7, p0, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    .line 1672
    # invokes: Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->getKeyCustomizeDataLocked(I)Landroid/util/SparseArray;
    invoke-static {v7, v9}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->access$500(Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;I)Landroid/util/SparseArray;

    move-result-object v7

    .line 1673
    .local v7, "infoMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/WindowManager$KeyCustomizeInfo;>;"
    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V

    .line 1674
    invoke-direct {p0, v4, v7, v9}, Lcom/android/server/policy/KeyCustomizeManager;->parseKeyCustomizeAttributes(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/SparseArray;I)V

    .line 1675
    invoke-direct {p0, v9, v7}, Lcom/android/server/policy/KeyCustomizeManager;->initMultiTapKeyEventHandler(ILandroid/util/SparseArray;)V

    .line 1676
    .end local v7    # "infoMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/WindowManager$KeyCustomizeInfo;>;"
    goto/16 :goto_109

    :cond_6e
    const-string/jumbo v7, "long"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v10, 0x4

    if-eqz v7, :cond_89

    .line 1677
    iget-object v7, p0, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    .line 1678
    # invokes: Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->getKeyCustomizeDataLocked(I)Landroid/util/SparseArray;
    invoke-static {v7, v10}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->access$500(Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;I)Landroid/util/SparseArray;

    move-result-object v7

    .line 1679
    .restart local v7    # "infoMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/WindowManager$KeyCustomizeInfo;>;"
    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V

    .line 1680
    invoke-direct {p0, v4, v7, v10}, Lcom/android/server/policy/KeyCustomizeManager;->parseKeyCustomizeAttributes(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/SparseArray;I)V

    .line 1681
    invoke-direct {p0, v10, v7}, Lcom/android/server/policy/KeyCustomizeManager;->initMultiTapKeyEventHandler(ILandroid/util/SparseArray;)V

    .line 1682
    .end local v7    # "infoMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/WindowManager$KeyCustomizeInfo;>;"
    goto/16 :goto_109

    :cond_89
    const-string v7, "double"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a3

    .line 1683
    iget-object v7, p0, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    .line 1684
    const/16 v8, 0x8

    # invokes: Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->getKeyCustomizeDataLocked(I)Landroid/util/SparseArray;
    invoke-static {v7, v8}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->access$500(Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;I)Landroid/util/SparseArray;

    move-result-object v7

    .line 1685
    .restart local v7    # "infoMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/WindowManager$KeyCustomizeInfo;>;"
    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V

    .line 1686
    invoke-direct {p0, v4, v7, v8}, Lcom/android/server/policy/KeyCustomizeManager;->parseKeyCustomizeAttributes(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/SparseArray;I)V

    .line 1687
    invoke-direct {p0, v8, v7}, Lcom/android/server/policy/KeyCustomizeManager;->initMultiTapKeyEventHandler(ILandroid/util/SparseArray;)V

    .line 1688
    .end local v7    # "infoMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/WindowManager$KeyCustomizeInfo;>;"
    goto :goto_109

    .line 1689
    :cond_a3
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->FW_B2B_DEDICATED_APP:Z

    if-eqz v7, :cond_f4

    .line 1690
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_bd

    .line 1691
    iget-object v7, p0, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    const-string/jumbo v11, "true"

    .line 1692
    invoke-interface {v4, v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1691
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    # invokes: Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->setHasBackupData(Z)V
    invoke-static {v7, v8}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->access$1400(Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;Z)V

    .line 1695
    :cond_bd
    const-string v7, "backup_press"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d2

    .line 1696
    iget-object v7, p0, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    # invokes: Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->getBackupKeyCustomizeDataLocked(I)Landroid/util/SparseArray;
    invoke-static {v7, v9}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->access$1200(Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;I)Landroid/util/SparseArray;

    move-result-object v7

    .line 1698
    .restart local v7    # "infoMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/WindowManager$KeyCustomizeInfo;>;"
    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V

    .line 1699
    invoke-direct {p0, v4, v7, v9}, Lcom/android/server/policy/KeyCustomizeManager;->parseKeyCustomizeAttributes(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/SparseArray;I)V

    .end local v7    # "infoMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/WindowManager$KeyCustomizeInfo;>;"
    goto :goto_e7

    .line 1700
    :cond_d2
    const-string v7, "backup_long"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e7

    .line 1701
    iget-object v7, p0, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    # invokes: Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->getBackupKeyCustomizeDataLocked(I)Landroid/util/SparseArray;
    invoke-static {v7, v10}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->access$1200(Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;I)Landroid/util/SparseArray;

    move-result-object v7

    .line 1703
    .restart local v7    # "infoMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/WindowManager$KeyCustomizeInfo;>;"
    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V

    .line 1704
    invoke-direct {p0, v4, v7, v10}, Lcom/android/server/policy/KeyCustomizeManager;->parseKeyCustomizeAttributes(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/SparseArray;I)V

    goto :goto_e8

    .line 1700
    .end local v7    # "infoMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/WindowManager$KeyCustomizeInfo;>;"
    :cond_e7
    :goto_e7
    nop

    .line 1707
    :goto_e8
    const-string/jumbo v7, "migration"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f4

    .line 1708
    invoke-direct {p0, v4}, Lcom/android/server/policy/KeyCustomizeManager;->parseMigrationAttributes(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1713
    :cond_f4
    const-string/jumbo v7, "hot_key"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_109

    .line 1714
    iget-object v7, p0, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    .line 1715
    # invokes: Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->getHotKeyMapLocked()Landroid/util/SparseArray;
    invoke-static {v7}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->access$1300(Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;)Landroid/util/SparseArray;

    move-result-object v7

    .line 1716
    .local v7, "hotkeyMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/ComponentName;>;"
    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V

    .line 1717
    invoke-direct {p0, v4, v7}, Lcom/android/server/policy/KeyCustomizeManager;->parseHotKeysAttributes(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/SparseArray;)V

    .line 1722
    .end local v6    # "tag":Ljava/lang/String;
    .end local v7    # "hotkeyMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/ComponentName;>;"
    :cond_109
    :goto_109
    const/4 v6, 0x1

    if-ne v5, v6, :cond_29

    .line 1723
    sget-object v0, Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;->SUCCESS:Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mXmlFileErrorCode:Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;
    :try_end_110
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_110} :catch_135
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_110} :catch_116
    .catchall {:try_start_17 .. :try_end_110} :catchall_114

    .line 1731
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "type":I
    :goto_110
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1732
    goto :goto_14f

    .line 1731
    :catchall_114
    move-exception v0

    goto :goto_150

    .line 1727
    :catch_116
    move-exception v0

    .line 1728
    .local v0, "e":Ljava/lang/Exception;
    :try_start_117
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to parse "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ". Error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1729
    sget-object v1, Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;->UNKNOWN_ERROR:Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;

    iput-object v1, p0, Lcom/android/server/policy/KeyCustomizeManager;->mXmlFileErrorCode:Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_110

    .line 1724
    :catch_135
    move-exception v0

    .line 1725
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File not found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    sget-object v1, Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;->FILE_NOT_FOUND:Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;

    iput-object v1, p0, Lcom/android/server/policy/KeyCustomizeManager;->mXmlFileErrorCode:Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;
    :try_end_14e
    .catchall {:try_start_117 .. :try_end_14e} :catchall_114

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    goto :goto_110

    .line 1733
    :goto_14f
    return-void

    .line 1731
    :goto_150
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1732
    throw v0
.end method

.method putHotKey(ILandroid/content/ComponentName;)V
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .line 2004
    if-nez p2, :cond_a

    .line 2005
    const-string v0, "KeyCustomizeManager"

    const-string v1, "componentName is empty. Can not set hot key info."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    return-void

    .line 2009
    :cond_a
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2010
    :try_start_d
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    # invokes: Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->putHotKeyLocked(ILandroid/content/ComponentName;)V
    invoke-static {v1, p1, p2}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->access$1500(Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;ILandroid/content/ComponentName;)V

    .line 2012
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizeManager;->saveSettingsLocked()V

    .line 2013
    monitor-exit v0

    .line 2014
    return-void

    .line 2013
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_17

    throw v1
.end method

.method putKeyCustomizeEvent(ILandroid/view/WindowManager$KeyCustomizeInfo;Z)V
    .registers 9
    .param p1, "press"    # I
    .param p2, "info"    # Landroid/view/WindowManager$KeyCustomizeInfo;
    .param p3, "forced"    # Z

    .line 147
    if-nez p3, :cond_10

    .line 149
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    iget v1, p2, Landroid/view/WindowManager$KeyCustomizeInfo;->priority:I

    invoke-virtual {v0, v1}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->isRequestedHigherPriority(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 150
    return-void

    .line 154
    :cond_d
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizeManager;->isValidatedInputData(ILandroid/view/WindowManager$KeyCustomizeInfo;)V

    .line 157
    :cond_10
    iget v0, p2, Landroid/view/WindowManager$KeyCustomizeInfo;->keyCode:I

    .line 158
    .local v0, "keyCode":I
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v1, :cond_4c

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "putKeyCustomizeEvent keyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " priority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Landroid/view/WindowManager$KeyCustomizeInfo;->priority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " forced="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " Caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    .line 160
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 159
    const-string v2, "KeyCustomizeManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_4c
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->put(ILandroid/view/WindowManager$KeyCustomizeInfo;)V

    .line 164
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizeManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 165
    :try_start_54
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizeManager;->saveSettingsLocked()V

    .line 166
    monitor-exit v1
    :try_end_58
    .catchall {:try_start_54 .. :try_end_58} :catchall_b5

    .line 168
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    invoke-virtual {v1}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->getPriority()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/policy/KeyCustomizeManager;->isHigherPriorityThanDefault(I)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 169
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizeManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/KeyCustomizeManager;->mNotifyKeyCustomizeInfoChanged:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 170
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizeManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/KeyCustomizeManager;->mNotifyKeyCustomizeInfoChanged:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 173
    :cond_72
    and-int/lit8 v1, p1, 0x8

    const/4 v2, 0x1

    if-eqz v1, :cond_99

    .line 174
    const/16 v1, 0x1a

    if-ne v0, v1, :cond_81

    .line 175
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizeManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateDoublePressPowerBehavior()V

    .line 176
    return-void

    .line 178
    :cond_81
    const/16 v1, 0x18

    if-eq v0, v1, :cond_89

    const/16 v1, 0x19

    if-ne v0, v1, :cond_92

    .line 180
    :cond_89
    invoke-virtual {p0, v0}, Lcom/android/server/policy/KeyCustomizeManager;->getMultiTapKeyEventHandler(I)Lcom/android/server/policy/MultiTapKeyEventHandler;

    move-result-object v1

    const/16 v3, 0x96

    invoke-virtual {v1, v3}, Lcom/android/server/policy/MultiTapKeyEventHandler;->setMultiTapTimeout(I)V

    .line 183
    :cond_92
    invoke-virtual {p0, v0}, Lcom/android/server/policy/KeyCustomizeManager;->getMultiTapKeyEventHandler(I)Lcom/android/server/policy/MultiTapKeyEventHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/policy/MultiTapKeyEventHandler;->setDoubleTapEnabled(Z)V

    .line 188
    :cond_99
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_b4

    .line 189
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    const/16 v3, 0x10

    invoke-virtual {v1, v3, v0}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->get(II)Landroid/view/WindowManager$KeyCustomizeInfo;

    move-result-object v1

    .line 190
    .local v1, "tripleInfo":Landroid/view/WindowManager$KeyCustomizeInfo;
    if-eqz v1, :cond_b4

    iget v3, v1, Landroid/view/WindowManager$KeyCustomizeInfo;->priority:I

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_b4

    .line 191
    invoke-virtual {p0, v0}, Lcom/android/server/policy/KeyCustomizeManager;->getMultiTapKeyEventHandler(I)Lcom/android/server/policy/MultiTapKeyEventHandler;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/policy/MultiTapKeyEventHandler;->setTripleTapEnabled(Z)V

    .line 194
    .end local v1    # "tripleInfo":Landroid/view/WindowManager$KeyCustomizeInfo;
    :cond_b4
    return-void

    .line 166
    :catchall_b5
    move-exception v2

    :try_start_b6
    monitor-exit v1
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    throw v2
.end method

.method removeHotKey(Ljava/lang/String;)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2017
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_50

    .line 2018
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2019
    :try_start_9
    sget-object v1, Lcom/android/server/policy/KeyCustomizeManager;->ALL_HOT_KEYCODE:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_48

    aget v4, v1, v3

    .line 2020
    .local v4, "keyCode":I
    invoke-virtual {p0, v4}, Lcom/android/server/policy/KeyCustomizeManager;->getHotKeyComponentName(I)Landroid/content/ComponentName;

    move-result-object v5

    .line 2021
    .local v5, "componentName":Landroid/content/ComponentName;
    if-eqz v5, :cond_45

    .line 2022
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_45

    .line 2023
    const-string v6, "KeyCustomizeManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeHotKey keyCode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " packageName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    iget-object v6, p0, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    # invokes: Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->removeHotKeyLocked(I)V
    invoke-static {v6, v4}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->access$1600(Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;I)V

    .line 2019
    .end local v4    # "keyCode":I
    .end local v5    # "componentName":Landroid/content/ComponentName;
    :cond_45
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 2029
    :cond_48
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizeManager;->saveSettingsLocked()V

    .line 2030
    monitor-exit v0

    goto :goto_50

    :catchall_4d
    move-exception v1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_9 .. :try_end_4f} :catchall_4d

    throw v1

    .line 2032
    :cond_50
    :goto_50
    return-void
.end method

.method removeKeyCustomizeEvent(IIIZ)V
    .registers 7
    .param p1, "priority"    # I
    .param p2, "press"    # I
    .param p3, "keyCode"    # I
    .param p4, "restore"    # Z

    .line 206
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->isRequestedHigherPriority(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 207
    return-void

    .line 210
    :cond_9
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_3c

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeKeyCustomizeEvent priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " keyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " press="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " restore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyCustomizeManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_3c
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->isEmptyData(II)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requested data has been removed. priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " keyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " press="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " restore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyCustomizeManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizeManager;->isHigherPriorityThanDefault(I)Z

    move-result v0

    if-eqz v0, :cond_7d

    if-eqz p4, :cond_7d

    .line 219
    invoke-direct {p0, p3, p2}, Lcom/android/server/policy/KeyCustomizeManager;->restoreDefaultPriorityPolicy(II)V

    .line 221
    :cond_7d
    return-void

    .line 224
    :cond_7e
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->remove(II)V

    .line 225
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 226
    :try_start_86
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizeManager;->saveSettingsLocked()V

    .line 227
    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_86 .. :try_end_8a} :catchall_d4

    .line 229
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizeManager;->isHigherPriorityThanDefault(I)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 230
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizeManager;->mNotifyKeyCustomizeInfoChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 231
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizeManager;->mNotifyKeyCustomizeInfoChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 234
    :cond_9e
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_b3

    .line 235
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p3}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->get(II)Landroid/view/WindowManager$KeyCustomizeInfo;

    move-result-object v0

    if-eqz v0, :cond_b0

    .line 236
    invoke-direct {p0, p3}, Lcom/android/server/policy/KeyCustomizeManager;->setDoubleTapDisabled(I)V

    goto :goto_b3

    .line 238
    :cond_b0
    invoke-direct {p0, p3}, Lcom/android/server/policy/KeyCustomizeManager;->removeMultiTapKeyEventHandler(I)V

    .line 241
    :cond_b3
    :goto_b3
    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_c8

    .line 242
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p3}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->get(II)Landroid/view/WindowManager$KeyCustomizeInfo;

    move-result-object v0

    if-eqz v0, :cond_c5

    .line 243
    invoke-direct {p0, p3}, Lcom/android/server/policy/KeyCustomizeManager;->setTripleTapDisabled(I)V

    goto :goto_c8

    .line 245
    :cond_c5
    invoke-direct {p0, p3}, Lcom/android/server/policy/KeyCustomizeManager;->removeMultiTapKeyEventHandler(I)V

    .line 249
    :cond_c8
    :goto_c8
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizeManager;->isHigherPriorityThanDefault(I)Z

    move-result v0

    if-eqz v0, :cond_d3

    if-eqz p4, :cond_d3

    .line 250
    invoke-direct {p0, p3, p2}, Lcom/android/server/policy/KeyCustomizeManager;->restoreDefaultPriorityPolicy(II)V

    .line 252
    :cond_d3
    return-void

    .line 227
    :catchall_d4
    move-exception v1

    :try_start_d5
    monitor-exit v0
    :try_end_d6
    .catchall {:try_start_d5 .. :try_end_d6} :catchall_d4

    throw v1
.end method

.method saveSettingsLocked()V
    .registers 19

    .line 1518
    move-object/from16 v1, p0

    const-string/jumbo v0, "migration"

    const-string/jumbo v2, "hot_key"

    const-string/jumbo v3, "keycustomize_info_version"

    const-string v4, "backup"

    const-string v5, "Unable to close."

    const-string v6, "KeyCustomizeManager"

    const-string/jumbo v7, "saveSettingsLocked"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    new-instance v7, Ljava/io/StringWriter;

    invoke-direct {v7}, Ljava/io/StringWriter;-><init>()V

    .line 1522
    .local v7, "stringWriter":Ljava/io/StringWriter;
    :try_start_1c
    new-instance v8, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v8}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1523
    .local v8, "xmlSerializer":Lorg/xmlpull/v1/XmlSerializer;
    invoke-interface {v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 1524
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v8, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1526
    invoke-interface {v8, v10, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1527
    const-string/jumbo v9, "version"

    iget v11, v1, Lcom/android/server/policy/KeyCustomizeManager;->mXmlVersion:F

    invoke-static {v11}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v10, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1528
    invoke-interface {v8, v10, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1530
    const/4 v3, 0x0

    .line 1531
    .local v3, "infoMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/WindowManager$KeyCustomizeInfo;>;"
    sget-object v9, Lcom/android/server/policy/KeyCustomizeManager;->BASIC_PRESS_TYPE:[I

    array-length v11, v9

    const/4 v13, 0x0

    :goto_44
    const/4 v14, 0x4

    const/4 v15, 0x3

    if-ge v13, v11, :cond_72

    aget v16, v9, v13

    move/from16 v17, v16

    .line 1532
    .local v17, "type":I
    iget-object v12, v1, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    move/from16 v10, v17

    .end local v17    # "type":I
    .local v10, "type":I
    # invokes: Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->getKeyCustomizeDataLocked(I)Landroid/util/SparseArray;
    invoke-static {v12, v10}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->access$500(Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;I)Landroid/util/SparseArray;

    move-result-object v12

    move-object v3, v12

    .line 1533
    const/4 v12, 0x0

    .line 1534
    .local v12, "tag":Ljava/lang/String;
    if-ne v10, v15, :cond_5d

    .line 1535
    const-string/jumbo v14, "press"

    move-object v12, v14

    goto :goto_6b

    .line 1536
    :cond_5d
    if-ne v10, v14, :cond_64

    .line 1537
    const-string/jumbo v14, "long"

    move-object v12, v14

    goto :goto_6b

    .line 1538
    :cond_64
    const/16 v14, 0x8

    if-ne v10, v14, :cond_6b

    .line 1539
    const-string v14, "double"

    move-object v12, v14

    .line 1541
    :cond_6b
    :goto_6b
    invoke-direct {v1, v8, v12, v3}, Lcom/android/server/policy/KeyCustomizeManager;->writeKeyCustomizeAttributes(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1531
    .end local v10    # "type":I
    .end local v12    # "tag":Ljava/lang/String;
    add-int/lit8 v13, v13, 0x1

    const/4 v10, 0x0

    goto :goto_44

    .line 1544
    :cond_72
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->FW_B2B_DEDICATED_APP:Z

    if-eqz v9, :cond_bb

    .line 1545
    const/4 v9, 0x0

    invoke-interface {v8, v9, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1546
    nop

    .line 1547
    iget-object v9, v1, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    # invokes: Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->hasBackupData()Z
    invoke-static {v9}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->access$000(Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;)Z

    move-result v9

    if-eqz v9, :cond_87

    const-string/jumbo v9, "true"

    goto :goto_89

    :cond_87
    const-string v9, "false"

    .line 1546
    :goto_89
    const/4 v10, 0x0

    invoke-interface {v8, v10, v4, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1548
    invoke-interface {v8, v10, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1550
    sget-object v4, Lcom/android/server/policy/KeyCustomizeManager;->BACKUP_PRESS_TYPE:[I

    array-length v9, v4

    const/4 v12, 0x0

    :goto_94
    if-ge v12, v9, :cond_b1

    aget v10, v4, v12

    .line 1551
    .restart local v10    # "type":I
    iget-object v11, v1, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    # invokes: Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->getBackupKeyCustomizeDataLocked(I)Landroid/util/SparseArray;
    invoke-static {v11, v10}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->access$1200(Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;I)Landroid/util/SparseArray;

    move-result-object v11

    move-object v3, v11

    .line 1552
    const/4 v11, 0x0

    .line 1553
    .local v11, "tag":Ljava/lang/String;
    if-ne v10, v15, :cond_a6

    .line 1554
    const-string v13, "backup_press"

    move-object v11, v13

    goto :goto_ab

    .line 1555
    :cond_a6
    if-ne v10, v14, :cond_ab

    .line 1556
    const-string v13, "backup_long"

    move-object v11, v13

    .line 1558
    :cond_ab
    :goto_ab
    invoke-direct {v1, v8, v11, v3}, Lcom/android/server/policy/KeyCustomizeManager;->writeKeyCustomizeAttributes(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1550
    .end local v10    # "type":I
    .end local v11    # "tag":Ljava/lang/String;
    add-int/lit8 v12, v12, 0x1

    goto :goto_94

    .line 1561
    :cond_b1
    const/4 v4, 0x0

    invoke-interface {v8, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1562
    invoke-direct {v1, v8}, Lcom/android/server/policy/KeyCustomizeManager;->writeMigrationAttributes(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1563
    invoke-interface {v8, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1567
    :cond_bb
    const/4 v0, 0x0

    invoke-interface {v8, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1568
    iget-object v0, v1, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    # invokes: Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->getHotKeyMapLocked()Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->access$1300(Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-direct {v1, v8, v0}, Lcom/android/server/policy/KeyCustomizeManager;->writeHotKeysAttributes(Lorg/xmlpull/v1/XmlSerializer;Landroid/util/SparseArray;)V

    .line 1569
    const/4 v0, 0x0

    invoke-interface {v8, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1572
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1573
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlSerializer;->flush()V
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_d2} :catch_d3

    .line 1576
    .end local v3    # "infoMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/WindowManager$KeyCustomizeInfo;>;"
    .end local v8    # "xmlSerializer":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_e8

    .line 1574
    :catch_d3
    move-exception v0

    .line 1575
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed saveSettings "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    .end local v0    # "e":Ljava/io/IOException;
    :goto_e8
    nop

    .line 1580
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/android/server/policy/KeyCustomizeManager;->getKeyCustomizeDir()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "key_customize_info.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    move-object v2, v0

    .line 1581
    .local v2, "atomicFile":Landroid/util/AtomicFile;
    const/4 v3, 0x0

    .line 1583
    .local v3, "file":Ljava/io/FileOutputStream;
    :try_start_fc
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    move-object v3, v0

    .line 1584
    invoke-virtual {v7}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1585
    const/16 v0, 0xa

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 1586
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_114
    .catch Ljava/io/IOException; {:try_start_fc .. :try_end_114} :catch_134
    .catchall {:try_start_fc .. :try_end_114} :catchall_131

    .line 1593
    if-eqz v3, :cond_130

    .line 1594
    :try_start_116
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_119
    .catch Ljava/io/IOException; {:try_start_116 .. :try_end_119} :catch_11a

    goto :goto_130

    .line 1596
    :catch_11a
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 1597
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_122
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_163

    .line 1598
    :cond_130
    :goto_130
    goto :goto_163

    .line 1592
    :catchall_131
    move-exception v0

    move-object v4, v0

    goto :goto_164

    .line 1587
    :catch_134
    move-exception v0

    .line 1588
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_135
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1589
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to open "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " for persisting. "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_154
    .catchall {:try_start_135 .. :try_end_154} :catchall_131

    .line 1593
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_130

    .line 1594
    :try_start_156
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_159
    .catch Ljava/io/IOException; {:try_start_156 .. :try_end_159} :catch_15a

    goto :goto_130

    .line 1596
    :catch_15a
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 1597
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_122

    .line 1601
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "atomicFile":Landroid/util/AtomicFile;
    .end local v3    # "file":Ljava/io/FileOutputStream;
    :goto_163
    return-void

    .line 1593
    .restart local v2    # "atomicFile":Landroid/util/AtomicFile;
    .restart local v3    # "file":Ljava/io/FileOutputStream;
    :goto_164
    if-eqz v3, :cond_180

    .line 1594
    :try_start_166
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_169
    .catch Ljava/io/IOException; {:try_start_166 .. :try_end_169} :catch_16a

    goto :goto_180

    .line 1596
    :catch_16a
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 1597
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_181

    .line 1598
    .end local v0    # "e":Ljava/io/IOException;
    :cond_180
    :goto_180
    nop

    .line 1599
    :goto_181
    throw v4
.end method

.method sendBroadcast(Landroid/view/KeyEvent;)I
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 831
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/KeyCustomizeManager;->sendBroadcast(Landroid/view/KeyEvent;Z)I

    move-result v0

    return v0
.end method

.method sendBroadcast(Landroid/view/KeyEvent;Z)I
    .registers 20
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "isLongPress"    # Z

    .line 835
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    const/4 v0, 0x0

    .line 836
    .local v0, "press":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v6, 0x0

    if-nez v4, :cond_10

    const/4 v4, 0x1

    goto :goto_11

    :cond_10
    move v4, v6

    .line 837
    .local v4, "down":Z
    :goto_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    .line 838
    .local v7, "repeatCount":I
    if-eqz v3, :cond_1a

    .line 839
    const/4 v0, 0x4

    move v8, v0

    goto :goto_22

    .line 840
    :cond_1a
    if-eqz v7, :cond_20

    if-nez v4, :cond_1f

    goto :goto_20

    .line 843
    :cond_1f
    return v6

    .line 841
    :cond_20
    :goto_20
    const/4 v0, 0x3

    move v8, v0

    .line 846
    .end local v0    # "press":I
    .local v8, "press":I
    :goto_22
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    .line 848
    .local v9, "keyCode":I
    const/4 v10, 0x0

    .line 853
    .local v10, "intent":Landroid/content/Intent;
    iget-object v11, v1, Lcom/android/server/policy/KeyCustomizeManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 854
    :try_start_2a
    iget-object v0, v1, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    .line 855
    # invokes: Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->getKeyCustomizeDataLocked(I)Landroid/util/SparseArray;
    invoke-static {v0, v8}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->access$500(Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;I)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$KeyCustomizeInfo;

    .line 856
    .local v0, "info":Landroid/view/WindowManager$KeyCustomizeInfo;
    if-nez v0, :cond_3a

    .line 857
    monitor-exit v11

    return v6

    .line 859
    :cond_3a
    iget-object v12, v0, Landroid/view/WindowManager$KeyCustomizeInfo;->intent:Landroid/content/Intent;

    move-object v10, v12

    .line 860
    iget v12, v0, Landroid/view/WindowManager$KeyCustomizeInfo;->keyCode:I

    .line 861
    .local v12, "infoKeyCode":I
    iget v13, v0, Landroid/view/WindowManager$KeyCustomizeInfo;->priority:I

    .line 862
    .local v13, "infoPriority":I
    iget v14, v0, Landroid/view/WindowManager$KeyCustomizeInfo;->dispatching:I

    .line 863
    .local v14, "infoDispatching":I
    iget v15, v0, Landroid/view/WindowManager$KeyCustomizeInfo;->userId:I

    move v0, v15

    .line 864
    .local v0, "infoUserId":I
    monitor-exit v11
    :try_end_47
    .catchall {:try_start_2a .. :try_end_47} :catchall_147

    .line 866
    const/16 v15, 0xa

    if-nez v10, :cond_50

    .line 867
    invoke-direct {v1, v13, v2, v3}, Lcom/android/server/policy/KeyCustomizeManager;->getDefaultIntent(ILandroid/view/KeyEvent;Z)Landroid/content/Intent;

    move-result-object v10

    goto :goto_98

    .line 869
    :cond_50
    sget-boolean v16, Lcom/samsung/android/rune/CoreRune;->FW_B2B_DEDICATED_APP:Z

    if-eqz v16, :cond_88

    const/16 v5, 0x44e

    if-ne v13, v5, :cond_88

    .line 870
    invoke-virtual {v10}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v5

    .line 871
    .local v5, "packageName":Ljava/lang/String;
    const-string v6, "com.att.eptt"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7e

    .line 872
    const-string v6, "com.verizon.pushtotalkplus"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6d

    goto :goto_7e

    .line 875
    :cond_6d
    const-string v6, "com.samsung.android.knox.intent.extra.KEY_CODE"

    invoke-virtual {v10, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 876
    nop

    .line 877
    if-eqz v4, :cond_77

    const/4 v6, 0x1

    goto :goto_78

    .line 878
    :cond_77
    const/4 v6, 0x2

    .line 876
    :goto_78
    const-string v11, "com.samsung.android.knox.intent.extra.KEY_REPORT_TYPE"

    invoke-virtual {v10, v11, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_8f

    .line 873
    :cond_7e
    :goto_7e
    invoke-static/range {p1 .. p1}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v6

    const-string v11, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v10, v11, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_8f

    .line 880
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_88
    if-eq v13, v15, :cond_90

    const/16 v5, 0x32

    if-ne v13, v5, :cond_8f

    goto :goto_90

    :cond_8f
    :goto_8f
    goto :goto_98

    .line 882
    :cond_90
    :goto_90
    invoke-direct {v1, v10, v2, v3}, Lcom/android/server/policy/KeyCustomizeManager;->migrationForKnoxIntent(Landroid/content/Intent;Landroid/view/KeyEvent;Z)Z

    move-result v5

    if-eqz v5, :cond_98

    .line 883
    const/4 v5, 0x0

    return v5

    .line 888
    :cond_98
    :goto_98
    if-nez v10, :cond_ba

    .line 889
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can not senBroadcast. intent is null. keyCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " press="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "KeyCustomizeManager"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    const/4 v5, 0x0

    return v5

    .line 894
    :cond_ba
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendBroadcastAsUser intent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " userId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "KeyCustomizeManager"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    iget-object v5, v1, Lcom/android/server/policy/KeyCustomizeManager;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v10, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 897
    const/16 v5, 0x3f7

    const/4 v6, -0x1

    if-eq v5, v12, :cond_120

    const/16 v5, 0x437

    if-eq v5, v12, :cond_120

    const/16 v5, 0x4f

    if-ne v5, v12, :cond_f1

    goto :goto_120

    .line 916
    :cond_f1
    and-int/lit8 v5, v8, 0x4

    if-eqz v5, :cond_11e

    .line 917
    const/16 v5, 0xbb

    if-eq v9, v5, :cond_fc

    const/4 v5, 0x3

    if-ne v9, v5, :cond_11e

    .line 918
    :cond_fc
    if-eq v13, v15, :cond_102

    const/16 v5, 0x32

    if-ne v13, v5, :cond_11e

    .line 920
    :cond_102
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Long press of key("

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ") action should be blocked by knox policy"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v11, "KeyCustomizeManager"

    invoke-static {v11, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    return v6

    .line 927
    :cond_11e
    const/4 v5, 0x0

    return v5

    .line 900
    :cond_120
    :goto_120
    if-eq v13, v15, :cond_126

    const/16 v5, 0x32

    if-ne v13, v5, :cond_146

    .line 902
    :cond_126
    if-nez v4, :cond_135

    invoke-direct {v1, v10}, Lcom/android/server/policy/KeyCustomizeManager;->isReportedKeyUp(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_135

    invoke-direct {v1, v10}, Lcom/android/server/policy/KeyCustomizeManager;->isBlockedKeyUp(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_135

    .line 904
    return v6

    .line 906
    :cond_135
    if-eqz v4, :cond_146

    if-nez v7, :cond_146

    .line 907
    invoke-direct {v1, v10}, Lcom/android/server/policy/KeyCustomizeManager;->isReportedKeyDown(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_146

    invoke-direct {v1, v10}, Lcom/android/server/policy/KeyCustomizeManager;->isBlockedKeyDown(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_146

    .line 909
    return v6

    .line 912
    :cond_146
    return v14

    .line 864
    .end local v0    # "infoUserId":I
    .end local v12    # "infoKeyCode":I
    .end local v13    # "infoPriority":I
    .end local v14    # "infoDispatching":I
    :catchall_147
    move-exception v0

    :try_start_148
    monitor-exit v11
    :try_end_149
    .catchall {:try_start_148 .. :try_end_149} :catchall_147

    throw v0
.end method

.method startActivity(II)V
    .registers 13
    .param p1, "press"    # I
    .param p2, "keyCode"    # I

    .line 931
    const/4 v0, 0x0

    .line 932
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizeManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 933
    :try_start_4
    iget-object v2, p0, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    .line 934
    # invokes: Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->getKeyCustomizeDataLocked(I)Landroid/util/SparseArray;
    invoke-static {v2, p1}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->access$500(Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;I)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$KeyCustomizeInfo;

    .line 935
    .local v2, "info":Landroid/view/WindowManager$KeyCustomizeInfo;
    if-nez v2, :cond_32

    .line 936
    const-string v3, "KeyCustomizeManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not startActivity. There is no data of keyCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " press="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    monitor-exit v1

    return-void

    .line 940
    :cond_32
    iget-object v3, v2, Landroid/view/WindowManager$KeyCustomizeInfo;->intent:Landroid/content/Intent;

    move-object v0, v3

    .line 941
    .end local v2    # "info":Landroid/view/WindowManager$KeyCustomizeInfo;
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_4 .. :try_end_36} :catchall_9f

    .line 943
    if-nez v0, :cond_57

    .line 944
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not startActivity. intent is null. keyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " press="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyCustomizeManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    return-void

    .line 949
    :cond_57
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizeManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_78

    .line 950
    iget-object v4, p0, Lcom/android/server/policy/KeyCustomizeManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v7, 0x8000000

    const/4 v8, 0x0

    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v6, v0

    invoke-static/range {v4 .. v9}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 953
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/android/server/policy/KeyCustomizeManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v3, p0, Lcom/android/server/policy/KeyCustomizeManager;->mFilterIntent:Landroid/content/Intent;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->setPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 954
    .end local v1    # "pendingIntent":Landroid/app/PendingIntent;
    goto :goto_7f

    .line 955
    :cond_78
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizeManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 958
    :goto_7f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startActivity keyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " press="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyCustomizeManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    return-void

    .line 941
    :catchall_9f
    move-exception v2

    :try_start_a0
    monitor-exit v1
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_9f

    throw v2
.end method

.method startService(ILandroid/view/KeyEvent;I)V
    .registers 10
    .param p1, "press"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "keyCode"    # I

    .line 968
    const/4 v0, 0x0

    .line 970
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizeManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 971
    :try_start_4
    iget-object v2, p0, Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    .line 972
    # invokes: Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->getKeyCustomizeDataLocked(I)Landroid/util/SparseArray;
    invoke-static {v2, p1}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->access$500(Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;I)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$KeyCustomizeInfo;

    .line 973
    .local v2, "info":Landroid/view/WindowManager$KeyCustomizeInfo;
    if-nez v2, :cond_32

    .line 974
    const-string v3, "KeyCustomizeManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not startService. There is no data of keyCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " press="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    monitor-exit v1

    return-void

    .line 978
    :cond_32
    iget-object v3, v2, Landroid/view/WindowManager$KeyCustomizeInfo;->intent:Landroid/content/Intent;

    move-object v0, v3

    .line 979
    iget v3, v2, Landroid/view/WindowManager$KeyCustomizeInfo;->priority:I

    move v2, v3

    .line 980
    .local v2, "priority":I
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_4 .. :try_end_39} :catchall_cd

    .line 982
    if-nez v0, :cond_5a

    .line 983
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not startService. intent is null. keyCode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " press="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "KeyCustomizeManager"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    return-void

    .line 988
    :cond_5a
    const/4 v1, 0x0

    .line 989
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_69

    .line 990
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 992
    :cond_69
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_B2B_DEDICATED_APP:Z

    if-eqz v3, :cond_85

    const/16 v3, 0x44e

    if-ne v2, v3, :cond_85

    .line 993
    const-string v3, "com.att.firstnet.grey"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_85

    if-eqz p2, :cond_85

    .line 994
    invoke-static {p2}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v3

    const-string v4, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_a6

    .line 996
    :cond_85
    const/4 v3, 0x0

    .line 997
    .local v3, "extraAction":Ljava/lang/String;
    and-int/lit8 v4, p1, 0x3

    if-eqz v4, :cond_8e

    .line 998
    const-string/jumbo v3, "press"

    goto :goto_9c

    .line 999
    :cond_8e
    and-int/lit8 v4, p1, 0x4

    if-eqz v4, :cond_96

    .line 1000
    const-string/jumbo v3, "long"

    goto :goto_9c

    .line 1001
    :cond_96
    and-int/lit8 v4, p1, 0x8

    if-eqz v4, :cond_9c

    .line 1002
    const-string v3, "double"

    .line 1004
    :cond_9c
    :goto_9c
    const-string v4, "extraKeyCode"

    invoke-virtual {v0, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1005
    const-string v4, "extraKeyAction"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1008
    .end local v3    # "extraAction":Ljava/lang/String;
    :goto_a6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startService keyCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " press="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KeyCustomizeManager"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    iget-object v3, p0, Lcom/android/server/policy/KeyCustomizeManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1010
    return-void

    .line 980
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "priority":I
    :catchall_cd
    move-exception v2

    :try_start_ce
    monitor-exit v1
    :try_end_cf
    .catchall {:try_start_ce .. :try_end_cf} :catchall_cd

    throw v2
.end method

.method updateXmlVersion()Z
    .registers 3

    .line 1882
    iget v0, p0, Lcom/android/server/policy/KeyCustomizeManager;->mXmlVersion:F

    const v1, 0x3e4ccccd    # 0.2f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_d

    .line 1883
    iput v1, p0, Lcom/android/server/policy/KeyCustomizeManager;->mXmlVersion:F

    .line 1884
    const/4 v0, 0x1

    return v0

    .line 1886
    :cond_d
    const/4 v0, 0x0

    return v0
.end method
