.class public Lcom/android/server/semclipboard/SemClipboardService;
.super Landroid/sec/clipboard/IClipboardService$Stub;
.source "SemClipboardService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/semclipboard/SemClipboardService$SemClipboardBroadcastReceiver;,
        Lcom/android/server/semclipboard/SemClipboardService$ClipboardPolicyChangedListenerImpl;,
        Lcom/android/server/semclipboard/SemClipboardService$ClipDataComparator;,
        Lcom/android/server/semclipboard/SemClipboardService$ISharedClipboardDataList;,
        Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;,
        Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;,
        Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;
    }
.end annotation


# static fields
.field private static final ACTION_DEMO_RESET_STARTED:Ljava/lang/String; = "com.samsung.sea.rm.DEMO_RESET_STARTED"

.field private static final DELETE_FILE_SERVICE:Ljava/lang/String; = "com.samsung.clipboardsaveservice.ClipboardDeleteFileAppService"

.field private static final KNOX_LABELS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SAVE_SERVICE_PACKAGE:Ljava/lang/String; = "com.samsung.clipboardsaveservice"

.field private static final TAG:Ljava/lang/String; = "SemClipboardService"

.field private static final TMP_FILE_OWNER_CANONICAL_PATH:Ljava/lang/String; = "/data/data/com.samsung.clipboardsaveservice/files/"

.field private static final TMP_FILE_SAVE_PATH:Ljava/lang/String; = "com.samsung.clipboardsaveservice/files/"

.field private static sService:Landroid/content/IClipboard;


# instance fields
.field private final MSG_DELETE_TEMP_FILE:I

.field private final MSG_DISMISS_DIALOG:I

.field private final MSG_SHOW_DIALOG:I

.field private final MSG_START_SERVICE:I

.field private final MSG_UPDATE_DIALOG:I

.field private clipPickerDataList:Lcom/android/server/semclipboard/SemClipboardService$ISharedClipboardDataList;

.field private final mAmInternal:Landroid/app/ActivityManagerInternal;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mAutofillInternal:Landroid/view/autofill/AutofillManagerInternal;

.field private mCallingId:I

.field private mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

.field private mClipBoardDataUiEventImp:Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;

.field private mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

.field private final mClipboardEventListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

.field private final mContentCaptureInternal:Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

.field private mContext:Landroid/content/Context;

.field private mCurrentUserContext:Landroid/content/Context;

.field private mEnableFormatId:I

.field private final mHandler:Landroid/os/Handler;

.field private mIsDialogShowing:Z

.field private mIsLogging:Z

.field private mIsPluginShowing:Z

.field private final mPermissionOwner:Landroid/os/IBinder;

.field private mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;

.field private mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

.field private final mUgm:Landroid/app/IUriGrantsManager;

.field private final mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

.field private mUm:Landroid/os/IUserManager;

.field private final mUserChangedListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/content/clipboard/IOnUserChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mWm:Lcom/android/server/wm/WindowManagerInternal;

.field private mWorkingUiInterfaceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 141
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/semclipboard/SemClipboardService;->sService:Landroid/content/IClipboard;

    .line 2241
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "KNOX_MESSAGE"

    const-string v2, "EFSS_MESSAGE"

    const-string v3, "POTAL_MESSAGE"

    const-string v4, "CHAT_MESSAGE"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    .line 2242
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/semclipboard/SemClipboardService;->KNOX_LABELS:Ljava/util/ArrayList;

    .line 2241
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .line 526
    invoke-direct {p0}, Landroid/sec/clipboard/IClipboardService$Stub;-><init>()V

    .line 148
    new-instance v0, Lcom/android/server/semclipboard/SemClipboardService$ISharedClipboardDataList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/semclipboard/SemClipboardService$ISharedClipboardDataList;-><init>(Lcom/android/server/semclipboard/SemClipboardService;Lcom/android/server/semclipboard/SemClipboardService$1;)V

    iput-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->clipPickerDataList:Lcom/android/server/semclipboard/SemClipboardService$ISharedClipboardDataList;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mWorkingUiInterfaceList:Ljava/util/ArrayList;

    .line 151
    new-instance v0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;

    invoke-direct {v0, p0, v1}, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;-><init>(Lcom/android/server/semclipboard/SemClipboardService;Lcom/android/server/semclipboard/SemClipboardService$1;)V

    iput-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipBoardDataUiEventImp:Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;

    .line 152
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mIsLogging:Z

    .line 154
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mCallingId:I

    .line 165
    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    .line 166
    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mUserChangedListeners:Landroid/os/RemoteCallbackList;

    .line 1533
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/semclipboard/SemClipboardService;->MSG_SHOW_DIALOG:I

    .line 1534
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/server/semclipboard/SemClipboardService;->MSG_START_SERVICE:I

    .line 1535
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/server/semclipboard/SemClipboardService;->MSG_UPDATE_DIALOG:I

    .line 1536
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/server/semclipboard/SemClipboardService;->MSG_DISMISS_DIALOG:I

    .line 1537
    const/4 v3, 0x5

    iput v3, p0, Lcom/android/server/semclipboard/SemClipboardService;->MSG_DELETE_TEMP_FILE:I

    .line 1632
    new-instance v3, Lcom/android/server/semclipboard/SemClipboardService$2;

    invoke-direct {v3, p0}, Lcom/android/server/semclipboard/SemClipboardService$2;-><init>(Lcom/android/server/semclipboard/SemClipboardService;)V

    iput-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService;->mHandler:Landroid/os/Handler;

    .line 527
    const-string v3, "SemClipboardService"

    const-string v4, "SemClipboardService start"

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iput-object p1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    .line 529
    invoke-static {}, Landroid/sec/clipboard/util/CompatabilityHelper;->migrationClipboard()V

    .line 530
    iput-boolean v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mIsDialogShowing:Z

    .line 531
    new-instance v3, Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-direct {v3, p1, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;-><init>(Landroid/content/Context;Z)V

    iput-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    .line 532
    new-instance v0, Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-direct {v0, p1, v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    .line 534
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    .line 535
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mUgm:Landroid/app/IUriGrantsManager;

    .line 536
    const-class v0, Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/uri/UriGrantsManagerInternal;

    iput-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 537
    const-string/jumbo v0, "user"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/os/IUserManager;

    iput-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mUm:Landroid/os/IUserManager;

    .line 538
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "persona"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 539
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "rcp"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemRemoteContentManager;

    iput-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    .line 541
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    const-string/jumbo v3, "semclipboard"

    invoke-interface {v0, v3}, Lcom/android/server/uri/UriGrantsManagerInternal;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 542
    .local v0, "permOwner":Landroid/os/IBinder;
    iput-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    .line 544
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 545
    .local v3, "knoxFilter":Landroid/content/IntentFilter;
    const-string v4, "enterprise.container.remove.progress"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 547
    const-string v4, "com.samsung.knox.clipboard.sync"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 549
    const-string v4, "enterprise.container.uninstalled"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 550
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 551
    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;

    invoke-direct {v5, p0}, Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;-><init>(Lcom/android/server/semclipboard/SemClipboardService;)V

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 554
    invoke-direct {p0}, Lcom/android/server/semclipboard/SemClipboardService;->registerBroadcastReceiver()V

    .line 556
    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/sec/clipboard/data/ClipboardConstants;->CLIPBOARD_ALLOWED_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 557
    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/sec/clipboard/data/ClipboardConstants;->CLIPBOARD_SHARED_ALLOWED_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    move-result-object v6

    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 558
    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/sec/clipboard/data/ClipboardConstants;->RCP_CONTENT_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    move-result-object v6

    invoke-virtual {v4, v5, v2, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 559
    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/sec/clipboard/data/ClipboardConstants;->CLIPBOARD_ALLOWED_DENYLIST_APP_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    move-result-object v6

    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 560
    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/sec/clipboard/data/ClipboardConstants;->CLIPBOARD_ALLOWED_ALLOWLIST_APP_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    move-result-object v6

    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 562
    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    move-result-object v2

    new-instance v4, Lcom/android/server/semclipboard/SemClipboardService$ClipboardPolicyChangedListenerImpl;

    invoke-direct {v4, p0, v1}, Lcom/android/server/semclipboard/SemClipboardService$ClipboardPolicyChangedListenerImpl;-><init>(Lcom/android/server/semclipboard/SemClipboardService;Lcom/android/server/semclipboard/SemClipboardService$1;)V

    invoke-virtual {v2, v4}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->registerClipboardPolicyChangeListener(Landroid/sec/clipboard/util/ClipboardPolicyObserver$ClipboardPolicyChangeListener;)V

    .line 564
    invoke-direct {p0}, Lcom/android/server/semclipboard/SemClipboardService;->registerKnoxModeChangeObserver()V

    .line 568
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 569
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mPm:Landroid/content/pm/PackageManager;

    .line 570
    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mWm:Lcom/android/server/wm/WindowManagerInternal;

    .line 571
    const-class v1, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    iput-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContentCaptureInternal:Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    .line 572
    const-class v1, Landroid/view/autofill/AutofillManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillManagerInternal;

    iput-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mAutofillInternal:Landroid/view/autofill/AutofillManagerInternal;

    .line 574
    return-void
.end method

.method private ListChange(I)V
    .registers 7
    .param p1, "state"    # I

    .line 1777
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mWorkingUiInterfaceList:Ljava/util/ArrayList;

    if-eqz v0, :cond_30

    .line 1778
    const/4 v1, 0x0

    .line 1779
    .local v1, "uiInterface":Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1780
    .local v0, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_30

    .line 1782
    :try_start_c
    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService;->mWorkingUiInterfaceList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    move-object v1, v3

    .line 1783
    invoke-interface {v1, p1}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->setClipboardDataListChange(I)V
    :try_end_18
    .catch Landroid/os/DeadObjectException; {:try_start_c .. :try_end_18} :catch_1e
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_18} :catch_19
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_18} :catch_19

    goto :goto_2c

    .line 1789
    :catch_19
    move-exception v3

    .line 1790
    .local v3, "re":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2d

    .line 1784
    .end local v3    # "re":Ljava/lang/Exception;
    :catch_1e
    move-exception v3

    .line 1785
    .local v3, "de":Landroid/os/DeadObjectException;
    invoke-virtual {v3}, Landroid/os/DeadObjectException;->printStackTrace()V

    .line 1786
    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mWorkingUiInterfaceList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1787
    add-int/lit8 v2, v2, -0x1

    .line 1788
    nop

    .end local v3    # "de":Landroid/os/DeadObjectException;
    add-int/lit8 v0, v0, -0x1

    .line 1791
    :goto_2c
    nop

    .line 1780
    :goto_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1794
    .end local v0    # "size":I
    .end local v1    # "uiInterface":Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    .end local v2    # "i":I
    :cond_30
    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/ClipboardUIManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/semclipboard/SemClipboardService;

    .line 132
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/semclipboard/SemClipboardService;Landroid/sec/clipboard/ClipboardUIManager;)Landroid/sec/clipboard/ClipboardUIManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/semclipboard/SemClipboardService;
    .param p1, "x1"    # Landroid/sec/clipboard/ClipboardUIManager;

    .line 132
    iput-object p1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/semclipboard/SemClipboardService;

    .line 132
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/semclipboard/SemClipboardService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/semclipboard/SemClipboardService;

    .line 132
    iget v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mEnableFormatId:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/IClipboardDataPasteEvent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/semclipboard/SemClipboardService;

    .line 132
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/semclipboard/SemClipboardService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/semclipboard/SemClipboardService;
    .param p1, "x1"    # I

    .line 132
    invoke-direct {p0, p1}, Lcom/android/server/semclipboard/SemClipboardService;->notifyUserChanged(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/semclipboard/SemClipboardService;

    .line 132
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/semclipboard/SemClipboardService;

    .line 132
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/semclipboard/SemClipboardService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/semclipboard/SemClipboardService;
    .param p1, "x1"    # I

    .line 132
    invoke-direct {p0, p1}, Lcom/android/server/semclipboard/SemClipboardService;->ListChange(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/semclipboard/SemClipboardService;ILcom/samsung/android/content/clipboard/data/SemClipData;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/semclipboard/SemClipboardService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/samsung/android/content/clipboard/data/SemClipData;

    .line 132
    invoke-direct {p0, p1, p2}, Lcom/android/server/semclipboard/SemClipboardService;->notifyListChange(ILcom/samsung/android/content/clipboard/data/SemClipData;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/semclipboard/SemClipboardService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/semclipboard/SemClipboardService;

    .line 132
    invoke-direct {p0}, Lcom/android/server/semclipboard/SemClipboardService;->getPersonaManager()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/semclipboard/SemClipboardService;)Lcom/samsung/android/knox/SemPersonaManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/semclipboard/SemClipboardService;

    .line 132
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/semclipboard/SemClipboardService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/semclipboard/SemClipboardService;
    .param p1, "x1"    # I

    .line 132
    invoke-direct {p0, p1}, Lcom/android/server/semclipboard/SemClipboardService;->doSyncForFota(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/semclipboard/SemClipboardService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/semclipboard/SemClipboardService;

    .line 132
    invoke-direct {p0}, Lcom/android/server/semclipboard/SemClipboardService;->isKioskEnabled()Z

    move-result v0

    return v0
.end method

.method private final addActiveOwnerLocked(ILjava/lang/String;)V
    .registers 13
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .line 2329
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 2330
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 2331
    .local v1, "targetUserHandle":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2333
    .local v2, "oldIdentity":J
    const/4 v4, 0x0

    :try_start_d
    invoke-interface {v0, p2, v4, v1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 2334
    .local v4, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_3d

    .line 2337
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5, p1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v5

    if-eqz v5, :cond_1e

    .end local v4    # "pi":Landroid/content/pm/PackageInfo;
    goto :goto_5a

    .line 2338
    .restart local v4    # "pi":Landroid/content/pm/PackageInfo;
    :cond_1e
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Calling uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " does not own package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "pm":Landroid/content/pm/IPackageManager;
    .end local v1    # "targetUserHandle":I
    .end local v2    # "oldIdentity":J
    .end local p0    # "this":Lcom/android/server/semclipboard/SemClipboardService;
    .end local p1    # "uid":I
    .end local p2    # "pkg":Ljava/lang/String;
    throw v5

    .line 2335
    .restart local v0    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v1    # "targetUserHandle":I
    .restart local v2    # "oldIdentity":J
    .restart local p0    # "this":Lcom/android/server/semclipboard/SemClipboardService;
    .restart local p1    # "uid":I
    .restart local p2    # "pkg":Ljava/lang/String;
    :cond_3d
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "pm":Landroid/content/pm/IPackageManager;
    .end local v1    # "targetUserHandle":I
    .end local v2    # "oldIdentity":J
    .end local p0    # "this":Lcom/android/server/semclipboard/SemClipboardService;
    .end local p1    # "uid":I
    .end local p2    # "pkg":Ljava/lang/String;
    throw v5
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_54} :catch_59
    .catchall {:try_start_d .. :try_end_54} :catchall_54

    .line 2343
    .end local v4    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v0    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v1    # "targetUserHandle":I
    .restart local v2    # "oldIdentity":J
    .restart local p0    # "this":Lcom/android/server/semclipboard/SemClipboardService;
    .restart local p1    # "uid":I
    .restart local p2    # "pkg":Ljava/lang/String;
    :catchall_54
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2344
    throw v4

    .line 2340
    :catch_59
    move-exception v4

    .line 2343
    :goto_5a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2344
    nop

    .line 2347
    :try_start_5e
    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getFileManagerList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_68
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/sec/clipboard/data/file/FileManager;

    .line 2348
    .local v5, "fileManager":Landroid/sec/clipboard/data/file/FileManager;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_75
    invoke-virtual {v5}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v7

    if-ge v6, v7, :cond_a7

    .line 2349
    invoke-virtual {v5, v6}, Landroid/sec/clipboard/data/file/FileManager;->get(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v7

    .line 2350
    .local v7, "semItem":Lcom/samsung/android/content/clipboard/data/SemClipData;
    if-eqz v7, :cond_a4

    .line 2351
    invoke-virtual {v7}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getActivePermissionOwners()Ljava/util/HashSet;

    move-result-object v8

    if-eqz v8, :cond_a4

    invoke-virtual {v7}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getActivePermissionOwners()Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a4

    .line 2352
    invoke-virtual {v7}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getCallerUid()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-direct {p0, v7, v8, p2, v9}, Lcom/android/server/semclipboard/SemClipboardService;->grantItemLocked(Lcom/samsung/android/content/clipboard/data/SemClipData;ILjava/lang/String;I)V

    .line 2353
    invoke-virtual {v7}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getActivePermissionOwners()Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_a4} :catch_a9

    .line 2348
    .end local v7    # "semItem":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :cond_a4
    add-int/lit8 v6, v6, 0x1

    goto :goto_75

    .line 2357
    .end local v5    # "fileManager":Landroid/sec/clipboard/data/file/FileManager;
    .end local v6    # "i":I
    :cond_a7
    goto :goto_68

    .line 2360
    :cond_a8
    goto :goto_c4

    .line 2358
    :catch_a9
    move-exception v4

    .line 2359
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception occurred during operation to acquire permission in addActiveOwnerLocked. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SemClipboardService"

    invoke-static {v6, v5}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2361
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_c4
    return-void
.end method

.method private addData(ILcom/samsung/android/content/clipboard/data/SemClipData;)I
    .registers 12
    .param p1, "type"    # I
    .param p2, "data"    # Lcom/samsung/android/content/clipboard/data/SemClipData;

    .line 1083
    const-string v0, "SemClipboardService"

    const-string v1, "addData.."

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    invoke-direct {p0, p1, p2}, Lcom/android/server/semclipboard/SemClipboardService;->checkDuplicatedItem(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z

    move-result v1

    const/16 v2, 0x10

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v1, :cond_56

    .line 1085
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The data are the same.:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    if-eq p1, v5, :cond_31

    if-eq p1, v3, :cond_31

    if-eq p1, v2, :cond_31

    goto :goto_34

    .line 1090
    :cond_31
    invoke-direct {p0, p2, p1}, Lcom/android/server/semclipboard/SemClipboardService;->deleteTempFile(Lcom/samsung/android/content/clipboard/data/SemClipData;I)V

    .line 1095
    :goto_34
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getFileManagerList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/FileManager;

    .line 1096
    .local v0, "fileManager":Landroid/sec/clipboard/data/file/FileManager;
    if-eqz v0, :cond_55

    invoke-virtual {v0, v4}, Landroid/sec/clipboard/data/file/FileManager;->getWrap(I)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v1

    if-eqz v1, :cond_55

    .line 1097
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/sec/clipboard/remote/SemClipboardRemoteManager;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/remote/SemClipboardRemoteManager;

    move-result-object v1

    invoke-virtual {v0, v4}, Landroid/sec/clipboard/data/file/FileManager;->getWrap(I)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/sec/clipboard/remote/SemClipboardRemoteManager;->copy(Landroid/sec/clipboard/data/file/WrapFileClipData;)V

    .line 1100
    :cond_55
    return v5

    .line 1105
    .end local v0    # "fileManager":Landroid/sec/clipboard/data/file/FileManager;
    :cond_56
    const/4 v1, 0x1

    :try_start_57
    const-string/jumbo v6, "startDoPDrag"

    invoke-virtual {p2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getLabel()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_93

    const-string/jumbo v6, "startDoPCopy"

    .line 1106
    invoke-virtual {p2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getLabel()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_93

    .line 1107
    invoke-virtual {p2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipData()Landroid/content/ClipData;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v6

    if-eqz v6, :cond_cf

    .line 1108
    invoke-virtual {p2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipData()Landroid/content/ClipData;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v6

    const-string v7, "com.microsoft.appmanager"

    invoke-virtual {v6, v7}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_cf

    .line 1109
    :cond_93
    const-string v6, "DoP/MDE clip item : seek and destroy DoP/MDE clip in DB"

    invoke-static {v0, v6}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    invoke-virtual {p2, v1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setPCClip(Z)V

    .line 1111
    iget-object v6, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;->findPCClips()Ljava/lang/String;

    move-result-object v6

    .line 1112
    .local v6, "removeId":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_cf

    .line 1113
    iget-object v7, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v7, v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getClipByID(Ljava/lang/String;)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v7

    .line 1114
    .local v7, "removeData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    if-nez v7, :cond_b6

    .line 1115
    iget-object v8, p0, Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v8, v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getClipByID(Ljava/lang/String;)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v8

    move-object v7, v8

    .line 1117
    :cond_b6
    iget-object v8, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v8, v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeClipByID(Ljava/lang/String;)Z

    .line 1118
    invoke-direct {p0, v5, v7}, Lcom/android/server/semclipboard/SemClipboardService;->notifyListChange(ILcom/samsung/android/content/clipboard/data/SemClipData;)V

    .line 1119
    invoke-direct {p0, v5}, Lcom/android/server/semclipboard/SemClipboardService;->ListChange(I)V
    :try_end_c1
    .catch Ljava/lang/NullPointerException; {:try_start_57 .. :try_end_c1} :catch_c9
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_c1} :catch_c2

    goto :goto_cf

    .line 1124
    .end local v6    # "removeId":Ljava/lang/String;
    .end local v7    # "removeData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :catch_c2
    move-exception v6

    .line 1125
    .local v6, "e":Landroid/os/RemoteException;
    const-string v7, "RE while getting clip for DoP/MDE"

    invoke-static {v0, v7}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d0

    .line 1122
    .end local v6    # "e":Landroid/os/RemoteException;
    :catch_c9
    move-exception v6

    .line 1123
    .local v6, "e":Ljava/lang/NullPointerException;
    const-string v7, "NPE while checking for DoP/MDE"

    invoke-static {v0, v7}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    .end local v6    # "e":Ljava/lang/NullPointerException;
    :cond_cf
    :goto_cf
    nop

    .line 1130
    :goto_d0
    invoke-virtual {p2, p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getAlternateClipData(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v6

    .line 1131
    .local v6, "addItem":Lcom/samsung/android/content/clipboard/data/SemClipData;
    const/4 v7, 0x1

    .line 1132
    .local v7, "ret":I
    if-eqz v6, :cond_11b

    .line 1134
    if-eq p1, v3, :cond_10d

    if-ne p1, v2, :cond_dc

    goto :goto_10d

    .line 1180
    :cond_dc
    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    iget v3, p0, Lcom/android/server/semclipboard/SemClipboardService;->mCallingId:I

    invoke-virtual {v2, v6, v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->addData(Lcom/samsung/android/content/clipboard/data/SemClipData;I)Z

    move-result v2

    if-eqz v2, :cond_102

    .line 1181
    invoke-virtual {v6}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v2

    const-string v3, "CBCT"

    invoke-direct {p0, v2, v3}, Lcom/android/server/semclipboard/SemClipboardService;->sendLoggingForCB(ILjava/lang/String;)V

    .line 1182
    invoke-direct {p0, v1}, Lcom/android/server/semclipboard/SemClipboardService;->ListChange(I)V

    .line 1183
    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v2, v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/semclipboard/SemClipboardService;->notifyListChange(ILcom/samsung/android/content/clipboard/data/SemClipData;)V

    .line 1184
    const-string v1, "add success"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    const/4 v7, 0x0

    goto :goto_107

    .line 1187
    :cond_102
    const-string v1, "Failed to add data."

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    :goto_107
    if-ne p1, v5, :cond_120

    .line 1191
    invoke-direct {p0, p2, p1}, Lcom/android/server/semclipboard/SemClipboardService;->deleteTempFile(Lcom/samsung/android/content/clipboard/data/SemClipData;I)V

    goto :goto_120

    .line 1135
    :cond_10d
    :goto_10d
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/semclipboard/-$$Lambda$SemClipboardService$ckpIsGiKRG2DOCgJX2rn0KlXprU;

    invoke-direct {v1, p0, v6, p2, p1}, Lcom/android/server/semclipboard/-$$Lambda$SemClipboardService$ckpIsGiKRG2DOCgJX2rn0KlXprU;-><init>(Lcom/android/server/semclipboard/SemClipboardService;Lcom/samsung/android/content/clipboard/data/SemClipData;Lcom/samsung/android/content/clipboard/data/SemClipData;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1175
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1176
    return v4

    .line 1195
    :cond_11b
    const-string v1, "data is null"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    :cond_120
    :goto_120
    return v7
.end method

.method private canReadAcrossProfiles()Z
    .registers 7

    .line 1726
    const/4 v0, 0x1

    .line 1728
    .local v0, "canCrossCopyPaste":Z
    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_3a

    .line 1730
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->getPersonaId()I

    move-result v1

    .line 1731
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mUm:Landroid/os/IUserManager;

    invoke-interface {v2, v1}, Landroid/os/IUserManager;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v2

    .line 1732
    .local v2, "b":Landroid/os/Bundle;
    const-string/jumbo v3, "no_cross_profile_copy_paste"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1c

    const/4 v3, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v3, 0x0

    :goto_1d
    move v0, v3

    .line 1733
    const-string v3, "SemClipboardService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "canReadAcrossProfiles : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_34} :catch_36

    .line 1736
    nop

    .end local v1    # "userId":I
    .end local v2    # "b":Landroid/os/Bundle;
    goto :goto_3a

    .line 1734
    :catch_36
    move-exception v1

    .line 1735
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1738
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3a
    :goto_3a
    return v0
.end method

.method private checkCallerIsSystemOrSignature()Z
    .registers 3

    .line 2136
    invoke-direct {p0}, Lcom/android/server/semclipboard/SemClipboardService;->isCallerSystemOrSignature()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2137
    const/4 v0, 0x1

    return v0

    .line 2139
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disallowed call for uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemClipboardService"

    invoke-static {v1, v0}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    const/4 v0, 0x0

    return v0
.end method

.method private checkDuplicatedItem(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z
    .registers 13
    .param p1, "type"    # I
    .param p2, "data"    # Lcom/samsung/android/content/clipboard/data/SemClipData;

    .line 702
    invoke-direct {p0, p2}, Lcom/android/server/semclipboard/SemClipboardService;->checkEqualsLatestItem(Lcom/samsung/android/content/clipboard/data/SemClipData;)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v0

    .line 703
    .local v0, "duplicatedLatestItem":Lcom/samsung/android/content/clipboard/data/SemClipData;
    const/16 v1, 0x10

    const/4 v2, 0x4

    const/4 v3, 0x2

    const-string v4, "SemClipboardService"

    const/4 v5, 0x1

    if-eqz v0, :cond_35

    .line 704
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The data is same with latest item.:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    if-eq p1, v3, :cond_2c

    if-eq p1, v2, :cond_2c

    if-eq p1, v1, :cond_2c

    goto :goto_2f

    .line 709
    :cond_2c
    invoke-direct {p0, p2, p1}, Lcom/android/server/semclipboard/SemClipboardService;->deleteTempFile(Lcom/samsung/android/content/clipboard/data/SemClipData;I)V

    .line 712
    :goto_2f
    const/16 v1, 0x8

    invoke-direct {p0, v1, v0}, Lcom/android/server/semclipboard/SemClipboardService;->notifyListChange(ILcom/samsung/android/content/clipboard/data/SemClipData;)V

    .line 713
    return v5

    .line 716
    :cond_35
    invoke-direct {p0, p2}, Lcom/android/server/semclipboard/SemClipboardService;->checkEqualsItem(Lcom/samsung/android/content/clipboard/data/SemClipData;)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v6

    .line 717
    .local v6, "duplicatedEqualsItem":Lcom/samsung/android/content/clipboard/data/SemClipData;
    const/4 v7, 0x0

    if-eqz v6, :cond_6e

    .line 719
    iget-object v8, p0, Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    iget-object v9, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v8, v9, v7}, Landroid/sec/clipboard/data/ClipboardDataMgr;->replaceWithTargetForUser(Landroid/sec/clipboard/data/ClipboardDataMgr;I)V

    .line 720
    iget-object v7, p0, Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v7, p2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->reAddForKnox(Lcom/samsung/android/content/clipboard/data/SemClipData;)V

    .line 723
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The data exist in clipboard.:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    if-eq p1, v3, :cond_67

    if-eq p1, v2, :cond_67

    if-eq p1, v1, :cond_67

    goto :goto_6a

    .line 728
    :cond_67
    invoke-direct {p0, p2, p1}, Lcom/android/server/semclipboard/SemClipboardService;->deleteTempFile(Lcom/samsung/android/content/clipboard/data/SemClipData;I)V

    .line 732
    :goto_6a
    invoke-direct {p0, v5, v6}, Lcom/android/server/semclipboard/SemClipboardService;->notifyListChange(ILcom/samsung/android/content/clipboard/data/SemClipData;)V

    .line 733
    return v5

    .line 735
    :cond_6e
    return v7
.end method

.method private checkEqualsItem(Lcom/samsung/android/content/clipboard/data/SemClipData;)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .registers 9
    .param p1, "data"    # Lcom/samsung/android/content/clipboard/data/SemClipData;

    .line 756
    monitor-enter p0

    .line 757
    :try_start_1
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v0

    .line 758
    .local v0, "dataSize":I
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->sharedSize()I

    move-result v1

    .line 761
    .local v1, "sharedSize":I
    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->isKnoxTwoEnabled()Z

    move-result v2

    .line 762
    .local v2, "isKnoxMode":Z
    if-nez v2, :cond_3b

    .line 763
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    if-ge v3, v0, :cond_39

    .line 764
    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4, v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v4

    .line 765
    .local v4, "item":Lcom/samsung/android/content/clipboard/data/SemClipData;
    if-eqz v4, :cond_36

    invoke-virtual {v4}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v5

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v6

    if-ne v5, v6, :cond_36

    invoke-virtual {v4, p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 766
    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v5, v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->swapClipItemWithTop(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v5

    monitor-exit p0

    return-object v5

    .line 763
    .end local v4    # "item":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .end local v3    # "i":I
    :cond_39
    goto/16 :goto_dd

    .line 771
    :cond_3b
    if-lez v0, :cond_8c

    if-lez v1, :cond_8c

    .line 772
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_40
    if-ge v3, v0, :cond_65

    .line 773
    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4, v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v4

    .line 774
    .restart local v4    # "item":Lcom/samsung/android/content/clipboard/data/SemClipData;
    if-eqz v4, :cond_62

    invoke-virtual {v4}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v5

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v6

    if-ne v5, v6, :cond_62

    invoke-virtual {v4, p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 775
    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v5, v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->swapClipItemWithTop(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v5

    monitor-exit p0

    return-object v5

    .line 772
    .end local v4    # "item":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :cond_62
    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    .line 779
    .end local v3    # "i":I
    :cond_65
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_66
    if-ge v3, v1, :cond_8b

    .line 780
    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4, v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getSharedItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v4

    .line 781
    .local v4, "sharedItem":Lcom/samsung/android/content/clipboard/data/SemClipData;
    if-eqz v4, :cond_88

    invoke-virtual {v4}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v5

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v6

    if-ne v5, v6, :cond_88

    invoke-virtual {v4, p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_88

    .line 782
    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v5, v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->swapClipItemWithTop(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v5

    monitor-exit p0

    return-object v5

    .line 779
    .end local v4    # "sharedItem":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :cond_88
    add-int/lit8 v3, v3, 0x1

    goto :goto_66

    .end local v3    # "i":I
    :cond_8b
    goto :goto_dd

    .line 787
    :cond_8c
    if-lez v0, :cond_b5

    .line 788
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_8f
    if-ge v3, v0, :cond_b4

    .line 789
    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4, v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v4

    .line 790
    .local v4, "item":Lcom/samsung/android/content/clipboard/data/SemClipData;
    if-eqz v4, :cond_b1

    invoke-virtual {v4}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v5

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v6

    if-ne v5, v6, :cond_b1

    invoke-virtual {v4, p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b1

    .line 791
    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v5, v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->swapClipItemWithTop(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v5

    monitor-exit p0

    return-object v5

    .line 788
    .end local v4    # "item":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :cond_b1
    add-int/lit8 v3, v3, 0x1

    goto :goto_8f

    .end local v3    # "i":I
    :cond_b4
    goto :goto_dd

    .line 796
    :cond_b5
    if-lez v1, :cond_dd

    .line 797
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_b8
    if-ge v3, v1, :cond_dd

    .line 798
    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4, v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getSharedItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v4

    .line 799
    .local v4, "sharedItem":Lcom/samsung/android/content/clipboard/data/SemClipData;
    if-eqz v4, :cond_da

    invoke-virtual {v4}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v5

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v6

    if-ne v5, v6, :cond_da

    invoke-virtual {v4, p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_da

    .line 800
    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v5, v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->swapClipItemWithTop(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v5

    monitor-exit p0

    return-object v5

    .line 797
    .end local v4    # "sharedItem":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :cond_da
    add-int/lit8 v3, v3, 0x1

    goto :goto_b8

    .line 806
    .end local v0    # "dataSize":I
    .end local v1    # "sharedSize":I
    .end local v2    # "isKnoxMode":Z
    .end local v3    # "i":I
    :cond_dd
    :goto_dd
    monitor-exit p0

    .line 808
    const/4 v0, 0x0

    return-object v0

    .line 806
    :catchall_e0
    move-exception v0

    monitor-exit p0
    :try_end_e2
    .catchall {:try_start_1 .. :try_end_e2} :catchall_e0

    throw v0
.end method

.method private checkEqualsLatestItem(Lcom/samsung/android/content/clipboard/data/SemClipData;)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .registers 7
    .param p1, "data"    # Lcom/samsung/android/content/clipboard/data/SemClipData;

    .line 740
    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->isKnoxTwoEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/semclipboard/SemClipboardService;->getLatestItemInternal(Z)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v0

    .line 741
    .local v0, "latestData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    const/4 v1, 0x0

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v3

    if-eq v2, v3, :cond_16

    goto :goto_32

    .line 745
    :cond_16
    invoke-virtual {v0, p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 746
    .local v2, "result":Z
    if-eqz v2, :cond_31

    .line 747
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->replaceWithTargetForUser(Landroid/sec/clipboard/data/ClipboardDataMgr;I)V

    .line 748
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v1, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->reAddForKnox(Lcom/samsung/android/content/clipboard/data/SemClipData;)V

    .line 749
    const-string v1, "SemClipboardService"

    const-string v3, "completed reAddForKnox method"

    invoke-static {v1, v3}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    return-object v0

    .line 752
    :cond_31
    return-object v1

    .line 742
    .end local v2    # "result":Z
    :cond_32
    :goto_32
    return-object v1
.end method

.method private clipboardAccessAllowed(ILjava/lang/String;II)Z
    .registers 11
    .param p1, "op"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "userId"    # I

    .line 975
    const-string v0, "SemClipboardService"

    const-string v1, "com.samsung.sept.Clipboard"

    invoke-virtual {v1, p2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    .line 976
    return v2

    .line 979
    :cond_c
    const-string v1, "com.samsung.android.app.cocktailbarservice"

    invoke-virtual {v1, p2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 980
    return v2

    .line 985
    :cond_15
    const/4 v1, 0x0

    :try_start_16
    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v3, p1, p3, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v3
    :try_end_1c
    .catch Ljava/lang/SecurityException; {:try_start_16 .. :try_end_1c} :catch_b2

    if-eqz v3, :cond_1f

    .line 986
    return v1

    .line 991
    :cond_1f
    nop

    .line 994
    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService;->mPm:Landroid/content/pm/PackageManager;

    const-string v4, "android.permission.READ_CLIPBOARD_IN_BACKGROUND"

    invoke-virtual {v3, v4, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2b

    .line 996
    return v2

    .line 999
    :cond_2b
    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "default_input_method"

    invoke-static {v3, v4, p4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 1001
    .local v3, "defaultIme":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4c

    .line 1002
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1003
    .local v4, "imePkg":Ljava/lang/String;
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 1004
    return v2

    .line 1008
    .end local v4    # "imePkg":Ljava/lang/String;
    :cond_4c
    const/16 v4, 0x1d

    if-eq p1, v4, :cond_6c

    const/16 v0, 0x1e

    if-ne p1, v0, :cond_55

    .line 1044
    return v2

    .line 1046
    :cond_55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown clipboard appop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1016
    :cond_6c
    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mWm:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v4, p3}, Lcom/android/server/wm/WindowManagerInternal;->isUidFocused(I)Z

    move-result v4

    if-nez v4, :cond_7d

    .line 1017
    invoke-direct {p0, p2}, Lcom/android/server/semclipboard/SemClipboardService;->isInternalSysWindowAppWithWindowFocus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7b

    goto :goto_7d

    :cond_7b
    move v2, v1

    goto :goto_7e

    :cond_7d
    :goto_7d
    nop

    :goto_7e
    move v1, v2

    .line 1018
    .local v1, "allowed":Z
    if-nez v1, :cond_89

    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContentCaptureInternal:Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    if-eqz v2, :cond_89

    .line 1025
    invoke-virtual {v2, p3, p4}, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;->isContentCaptureServiceForUser(II)Z

    move-result v1

    .line 1027
    :cond_89
    if-nez v1, :cond_93

    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mAutofillInternal:Landroid/view/autofill/AutofillManagerInternal;

    if-eqz v2, :cond_93

    .line 1034
    invoke-virtual {v2, p3, p4}, Landroid/view/autofill/AutofillManagerInternal;->isAugmentedAutofillServiceForUser(II)Z

    move-result v1

    .line 1036
    :cond_93
    if-nez v1, :cond_b1

    .line 1037
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Denying clipboard access to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", application is not in focus neither is a system service for user "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    :cond_b1
    return v1

    .line 988
    .end local v1    # "allowed":Z
    .end local v3    # "defaultIme":Ljava/lang/String;
    :catch_b2
    move-exception v2

    .line 989
    .local v2, "e":Ljava/lang/SecurityException;
    const-string v3, "clipboardAccess appOps security exception"

    invoke-static {v0, v3}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    return v1
.end method

.method private copyFileToOwner(ILjava/lang/String;)Ljava/io/File;
    .registers 8
    .param p1, "persId"    # I
    .param p2, "personaPath"    # Ljava/lang/String;

    .line 454
    const-string v0, "/data/semclipboard/deletedClips.xml"

    const/4 v1, 0x0

    .line 455
    .local v1, "tempFile":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyFileToUserZero : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemClipboardService"

    invoke-static {v3, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :try_start_21
    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    if-nez v2, :cond_32

    .line 458
    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "rcp"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/SemRemoteContentManager;

    iput-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    .line 460
    :cond_32
    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    const/4 v4, 0x0

    invoke-virtual {v2, p1, p2, v4, v0}, Lcom/samsung/android/knox/SemRemoteContentManager;->copyFileInternal(ILjava/lang/String;ILjava/lang/String;)I

    .line 461
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_3d} :catch_3f

    move-object v1, v2

    .line 464
    goto :goto_55

    .line 462
    :catch_3f
    move-exception v0

    .line 463
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "inside file copy exception "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_55
    return-object v1
.end method

.method private deleteTempFile(Lcom/samsung/android/content/clipboard/data/SemClipData;I)V
    .registers 8
    .param p1, "clipData"    # Lcom/samsung/android/content/clipboard/data/SemClipData;
    .param p2, "type"    # I

    .line 1201
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 1202
    return-void

    .line 1205
    :cond_5
    const-string v0, ""

    .line 1206
    .local v0, "filePath":Ljava/lang/String;
    const-string v1, ""

    .line 1208
    .local v1, "extraFilePath":Ljava/lang/String;
    const/4 v2, 0x2

    if-eq p2, v2, :cond_24

    const/4 v2, 0x4

    if-eq p2, v2, :cond_1c

    const/16 v2, 0x10

    if-eq p2, v2, :cond_14

    goto :goto_35

    .line 1221
    :cond_14
    move-object v2, p1

    check-cast v2, Lcom/samsung/android/content/clipboard/data/SemUriClipData;

    .line 1222
    .local v2, "uriData":Lcom/samsung/android/content/clipboard/data/SemUriClipData;
    invoke-virtual {v2}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->getThumbnailPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_35

    .line 1210
    .end local v2    # "uriData":Lcom/samsung/android/content/clipboard/data/SemUriClipData;
    :cond_1c
    move-object v2, p1

    check-cast v2, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    .line 1211
    .local v2, "htmlData":Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;
    invoke-virtual {v2}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->getThumbnailImagePath()Ljava/lang/String;

    move-result-object v0

    .line 1212
    goto :goto_35

    .line 1214
    .end local v2    # "htmlData":Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;
    :cond_24
    move-object v2, p1

    check-cast v2, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    .line 1215
    .local v2, "trgData":Lcom/samsung/android/content/clipboard/data/SemImageClipData;
    invoke-virtual {v2}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getBitmapPath()Ljava/lang/String;

    move-result-object v0

    .line 1216
    invoke-virtual {v2}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->HasExtraData()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1217
    invoke-virtual {v2}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getExtraDataPath()Ljava/lang/String;

    move-result-object v1

    .line 1226
    .end local v2    # "trgData":Lcom/samsung/android/content/clipboard/data/SemImageClipData;
    :cond_35
    :goto_35
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6f

    const-string v2, "com.samsung.clipboardsaveservice/files/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 1227
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 1228
    .local v2, "message":Landroid/os/Message;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1230
    .local v3, "bundle":Landroid/os/Bundle;
    invoke-direct {p0, v0}, Lcom/android/server/semclipboard/SemClipboardService;->validateTmpFilePath(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 1231
    const-string/jumbo v4, "path"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    :cond_59
    invoke-direct {p0, v1}, Lcom/android/server/semclipboard/SemClipboardService;->validateTmpFilePath(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 1235
    const-string v4, "extra_path"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    :cond_64
    const/4 v4, 0x5

    iput v4, v2, Landroid/os/Message;->what:I

    .line 1238
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1239
    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1241
    .end local v2    # "message":Landroid/os/Message;
    .end local v3    # "bundle":Landroid/os/Bundle;
    :cond_6f
    return-void
.end method

.method private doSyncForFota(I)V
    .registers 11
    .param p1, "id"    # I

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/semclipboard"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/shared/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, "sharedPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 434
    .local v1, "sharedFolder":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_89

    .line 435
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doSyncForFota : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemClipboardService"

    invoke-static {v3, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/user/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/com.sec.knox.bridge/shared_prefs/deletedClips.xml"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 437
    .local v2, "deletedClipsPath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 438
    .local v4, "delClipsFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_86

    .line 439
    invoke-direct {p0, p1, v2}, Lcom/android/server/semclipboard/SemClipboardService;->copyFileToOwner(ILjava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 440
    .local v5, "tempFile":Ljava/io/File;
    if-eqz v5, :cond_80

    .line 441
    invoke-direct {p0, v5}, Lcom/android/server/semclipboard/SemClipboardService;->parseXML(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v6

    .line 442
    .local v6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v5}, Lcom/android/server/semclipboard/SemClipboardService;->deleteDir(Ljava/io/File;)V

    .line 443
    iget-object v7, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v7, p1, v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;->updateFotaClips(ILjava/util/ArrayList;)V

    .line 444
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateFotaClips : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_86

    .line 446
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_80
    const-string/jumbo v6, "tempfile is null"

    invoke-static {v3, v6}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    .end local v5    # "tempFile":Ljava/io/File;
    :cond_86
    :goto_86
    invoke-virtual {p0, v1}, Lcom/android/server/semclipboard/SemClipboardService;->deleteDir(Ljava/io/File;)V

    .line 451
    .end local v2    # "deletedClipsPath":Ljava/lang/String;
    .end local v4    # "delClipsFile":Ljava/io/File;
    :cond_89
    return-void
.end method

.method private getIntendingUid(Ljava/lang/String;I)I
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 954
    invoke-direct {p0, p1, p2}, Lcom/android/server/semclipboard/SemClipboardService;->getIntendingUserId(Ljava/lang/String;I)I

    move-result v0

    .line 955
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 954
    invoke-static {v0, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    return v0
.end method

.method private getIntendingUserId(Ljava/lang/String;I)I
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 959
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 960
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 961
    .local v1, "callingUserId":I
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v2

    if-eqz v2, :cond_27

    if-ne v1, p2, :cond_11

    goto :goto_27

    .line 965
    :cond_11
    move v2, v1

    .line 966
    .local v2, "intendingUserId":I
    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 967
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x2

    .line 966
    const-string v9, "checkClipboardServiceCallingUser"

    move v6, p2

    move-object v10, p1

    invoke-virtual/range {v3 .. v10}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 970
    return v2

    .line 962
    .end local v2    # "intendingUserId":I
    :cond_27
    :goto_27
    return v1
.end method

.method private getLatestItemInternal(Z)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .registers 11
    .param p1, "isKnoxMode"    # Z

    .line 812
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v0

    .line 813
    .local v0, "dataSize":I
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->sharedSize()I

    move-result v1

    .line 814
    .local v1, "sharedSize":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLatestItemInternal : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemClipboardService"

    invoke-static {v3, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    const/4 v2, 0x0

    .line 817
    .local v2, "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    const/4 v3, 0x0

    if-nez p1, :cond_2d

    .line 818
    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4, v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getTopItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v2

    goto :goto_6a

    .line 820
    :cond_2d
    if-lez v0, :cond_52

    if-lez v1, :cond_52

    .line 821
    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4, v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getSharedItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v4

    .line 822
    .local v4, "sharedData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v5, v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v3

    .line 823
    .local v3, "myData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    if-eqz v4, :cond_51

    if-eqz v3, :cond_51

    .line 824
    invoke-virtual {v4}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getTimestamp()J

    move-result-wide v5

    invoke-virtual {v3}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getTimestamp()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_4f

    move-object v5, v4

    goto :goto_50

    :cond_4f
    move-object v5, v3

    :goto_50
    move-object v2, v5

    .line 826
    .end local v3    # "myData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    .end local v4    # "sharedData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :cond_51
    goto :goto_6a

    .line 827
    :cond_52
    if-lez v0, :cond_5b

    .line 828
    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4, v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getTopItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v2

    goto :goto_6a

    .line 829
    :cond_5b
    if-lez v1, :cond_6a

    .line 830
    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4, v5, v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->replaceWithTargetForUser(Landroid/sec/clipboard/data/ClipboardDataMgr;I)V

    .line 831
    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4, v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getSharedItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v2

    .line 835
    :cond_6a
    :goto_6a
    return-object v2
.end method

.method private getPersonaManager()Z
    .registers 4

    .line 1768
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 1769
    return v1

    .line 1770
    :cond_6
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->KNOX_V2_ENABLED:Z

    if-eqz v0, :cond_17

    .line 1771
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 1773
    :cond_17
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v0, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    return v1
.end method

.method private static getService()Landroid/content/IClipboard;
    .registers 3

    .line 1676
    sget-object v0, Lcom/android/server/semclipboard/SemClipboardService;->sService:Landroid/content/IClipboard;

    if-eqz v0, :cond_5

    .line 1677
    return-object v0

    .line 1679
    :cond_5
    const-string v0, "clipboard"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1680
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IClipboard;

    move-result-object v1

    sput-object v1, Lcom/android/server/semclipboard/SemClipboardService;->sService:Landroid/content/IClipboard;

    .line 1682
    if-nez v1, :cond_1a

    .line 1683
    const-string v1, "SemClipboardService"

    const-string v2, "Original clipboard service is null!"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    :cond_1a
    sget-object v1, Lcom/android/server/semclipboard/SemClipboardService;->sService:Landroid/content/IClipboard;

    return-object v1
.end method

.method private getUserId()I
    .registers 4

    .line 187
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 188
    .local v0, "userId":I
    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 189
    const/4 v0, 0x0

    .line 190
    const-string v1, "SemClipboardService"

    const-string/jumbo v2, "getUserId(), This is DualApp."

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_13
    return v0
.end method

.method private final grantItemLocked(Lcom/samsung/android/content/clipboard/data/SemClipData;ILjava/lang/String;I)V
    .registers 10
    .param p1, "semClipData"    # Lcom/samsung/android/content/clipboard/data/SemClipData;
    .param p2, "sourceUid"    # I
    .param p3, "targetPkg"    # Ljava/lang/String;
    .param p4, "targetUserId"    # I

    .line 2364
    instance-of v0, p1, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    if-eqz v0, :cond_11

    .line 2365
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    invoke-virtual {v0}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 2366
    .local v0, "imageDataUri":Landroid/net/Uri;
    if-eqz v0, :cond_10

    .line 2367
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/server/semclipboard/SemClipboardService;->grantUriLocked(Landroid/net/Uri;ILjava/lang/String;I)V

    .line 2369
    .end local v0    # "imageDataUri":Landroid/net/Uri;
    :cond_10
    goto :goto_4b

    .line 2370
    :cond_11
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    .line 2371
    .local v0, "item":Landroid/content/ClipData;
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    .line 2372
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1a
    if-ge v2, v1, :cond_4b

    .line 2373
    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_31

    .line 2374
    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3, p2, p3, p4}, Lcom/android/server/semclipboard/SemClipboardService;->grantUriLocked(Landroid/net/Uri;ILjava/lang/String;I)V

    .line 2377
    :cond_31
    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 2378
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_48

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_48

    .line 2379
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {p0, v4, p2, p3, p4}, Lcom/android/server/semclipboard/SemClipboardService;->grantUriLocked(Landroid/net/Uri;ILjava/lang/String;I)V

    .line 2372
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 2383
    .end local v0    # "item":Landroid/content/ClipData;
    .end local v1    # "N":I
    .end local v2    # "j":I
    :cond_4b
    :goto_4b
    return-void
.end method

.method private final grantUriLocked(Landroid/net/Uri;ILjava/lang/String;I)V
    .registers 16
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "sourceUid"    # I
    .param p3, "targetPkg"    # Ljava/lang/String;
    .param p4, "targetUserId"    # I

    .line 2387
    const-string v0, "SemClipboardService"

    if-eqz p1, :cond_70

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_70

    .line 2389
    :cond_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2391
    .local v1, "ident":J
    :try_start_15
    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService;->mUgm:Landroid/app/IUriGrantsManager;

    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    .line 2392
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x1

    .line 2394
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-static {p1, v5}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v9

    .line 2391
    move v5, p2

    move-object v6, p3

    move v10, p4

    invoke-interface/range {v3 .. v10}, Landroid/app/IUriGrantsManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_2c} :catch_4f
    .catch Ljava/lang/SecurityException; {:try_start_15 .. :try_end_2c} :catch_33
    .catchall {:try_start_15 .. :try_end_2c} :catchall_31

    .line 2402
    nop

    :goto_2d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2403
    goto :goto_6b

    .line 2402
    :catchall_31
    move-exception v0

    goto :goto_6c

    .line 2399
    :catch_33
    move-exception v3

    .line 2400
    .local v3, "e":Ljava/lang/SecurityException;
    :try_start_34
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "grantUriLocked SecurityException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2402
    nop

    .end local v3    # "e":Ljava/lang/SecurityException;
    goto :goto_2d

    .line 2396
    :catch_4f
    move-exception v3

    .line 2398
    .local v3, "ignored":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "grantUriLocked RemoteException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catchall {:try_start_34 .. :try_end_69} :catchall_31

    .line 2402
    nop

    .end local v3    # "ignored":Landroid/os/RemoteException;
    goto :goto_2d

    .line 2404
    :goto_6b
    return-void

    .line 2402
    :goto_6c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2403
    throw v0

    .line 2387
    .end local v1    # "ident":J
    :cond_70
    :goto_70
    return-void
.end method

.method private isAFWmode(I)Z
    .registers 14
    .param p1, "userId"    # I

    .line 2144
    const-string v0, ", "

    const-string v1, "SemClipboardService"

    const/4 v2, 0x0

    .line 2145
    .local v2, "result":Z
    const-wide/16 v3, -0x1

    .line 2147
    .local v3, "origId":J
    const-wide/16 v5, -0x1

    if-eqz p1, :cond_8c

    .line 2148
    :try_start_b
    iget-object v7, p0, Lcom/android/server/semclipboard/SemClipboardService;->mUm:Landroid/os/IUserManager;

    if-nez v7, :cond_1a

    .line 2149
    const-string/jumbo v7, "user"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    check-cast v7, Landroid/os/IUserManager;

    iput-object v7, p0, Lcom/android/server/semclipboard/SemClipboardService;->mUm:Landroid/os/IUserManager;

    .line 2151
    :cond_1a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    move-wide v3, v7

    .line 2152
    iget-object v7, p0, Lcom/android/server/semclipboard/SemClipboardService;->mUm:Landroid/os/IUserManager;

    invoke-interface {v7, p1}, Landroid/os/IUserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    .line 2153
    .local v7, "ui":Landroid/content/pm/UserInfo;
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v8

    .line 2154
    .local v8, "isManagedProfile":Z
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v9

    .line 2155
    .local v9, "isKnoxWorkspace":Z
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isEnabled, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_58} :catch_75
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_58} :catch_63
    .catchall {:try_start_b .. :try_end_58} :catchall_61

    .line 2156
    if-eqz v8, :cond_5e

    if-nez v9, :cond_5e

    const/4 v0, 0x1

    goto :goto_5f

    :cond_5e
    const/4 v0, 0x0

    :goto_5f
    move v2, v0

    .end local v2    # "result":Z
    .local v0, "result":Z
    goto :goto_8c

    .line 2165
    .end local v0    # "result":Z
    .end local v7    # "ui":Landroid/content/pm/UserInfo;
    .end local v8    # "isManagedProfile":Z
    .end local v9    # "isKnoxWorkspace":Z
    .restart local v2    # "result":Z
    :catchall_61
    move-exception v0

    goto :goto_84

    .line 2161
    :catch_63
    move-exception v0

    .line 2162
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_64
    const-string/jumbo v7, "isEnabled() Exception!"

    invoke-static {v1, v7}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2163
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6d
    .catchall {:try_start_64 .. :try_end_6d} :catchall_61

    .line 2165
    .end local v0    # "ex":Ljava/lang/Exception;
    cmp-long v0, v3, v5

    if-eqz v0, :cond_91

    .line 2166
    :goto_71
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_91

    .line 2158
    :catch_75
    move-exception v0

    .line 2159
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_76
    const-string/jumbo v7, "isEnabled() RemoteException!"

    invoke-static {v1, v7}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_7f
    .catchall {:try_start_76 .. :try_end_7f} :catchall_61

    .line 2165
    .end local v0    # "e":Landroid/os/RemoteException;
    cmp-long v0, v3, v5

    if-eqz v0, :cond_91

    .line 2166
    goto :goto_71

    .line 2165
    :goto_84
    cmp-long v1, v3, v5

    if-eqz v1, :cond_8b

    .line 2166
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2168
    :cond_8b
    throw v0

    .line 2165
    :cond_8c
    :goto_8c
    cmp-long v0, v3, v5

    if-eqz v0, :cond_91

    .line 2166
    goto :goto_71

    .line 2169
    :cond_91
    :goto_91
    return v2
.end method

.method private isCallerSystemOrSignature()Z
    .registers 3

    .line 2131
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2132
    .local v0, "callingUid":I
    invoke-direct {p0, v0}, Lcom/android/server/semclipboard/SemClipboardService;->isUidSystem(I)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-direct {p0, v0}, Lcom/android/server/semclipboard/SemClipboardService;->isUidSignature(I)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_13

    :cond_11
    const/4 v1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v1, 0x1

    :goto_14
    return v1
.end method

.method private isEnabled(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 1718
    invoke-direct {p0, p1}, Lcom/android/server/semclipboard/SemClipboardService;->isAFWmode(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1719
    const/4 v0, 0x0

    return v0

    .line 1722
    :cond_e
    const/4 v0, 0x1

    return v0
.end method

.method private isInternalSysWindowAppWithWindowFocus(Ljava/lang/String;)Z
    .registers 4
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 1052
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mPm:Landroid/content/pm/PackageManager;

    const-string v1, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_18

    .line 1054
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mWm:Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerInternal;->isUidFocused(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1055
    const/4 v0, 0x1

    return v0

    .line 1059
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method private isKioskEnabled()Z
    .registers 4

    .line 515
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 516
    .local v0, "bRet":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isKioskEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemClipboardService"

    invoke-static {v2, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    return v0
.end method

.method private isServiceCallFromOther()Z
    .registers 8

    .line 228
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 229
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 231
    .local v1, "callingUser":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 234
    .local v2, "ident":J
    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getCurrentListOwnerUid()I

    move-result v4

    .line 236
    .local v4, "currUser":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " isServiceCallFromOther getPersonaId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SemClipboardService"

    invoke-static {v6, v5}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 239
    if-eq v1, v4, :cond_2f

    const/4 v5, 0x1

    goto :goto_30

    :cond_2f
    const/4 v5, 0x0

    :goto_30
    return v5
.end method

.method private isUidSignature(I)Z
    .registers 4
    .param p1, "uid"    # I

    .line 2127
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private isUidSystem(I)Z
    .registers 4
    .param p1, "uid"    # I

    .line 2123
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_d

    if-nez p1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method private notifyFilterUpdated(I)V
    .registers 12
    .param p1, "filter"    # I

    .line 1824
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1826
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_4f

    .line 1827
    :try_start_7
    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_4c

    .line 1829
    .local v3, "n":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_e
    if-ge v4, v3, :cond_41

    .line 1831
    :try_start_10
    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;

    .line 1832
    .local v5, "li":Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;
    iget-object v6, p0, Lcom/android/server/semclipboard/SemClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v7, 0x1d

    iget v8, v5, Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;->mUid:I

    iget-object v9, v5, Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v6

    if-nez v6, :cond_31

    .line 1833
    iget-object v6, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;

    invoke-interface {v6, p1}, Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;->onUpdateFilter(I)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_31} :catch_3d
    .catchall {:try_start_10 .. :try_end_31} :catchall_32

    .line 1838
    .end local v5    # "li":Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;
    :cond_31
    goto :goto_3e

    .line 1841
    .end local v4    # "i":I
    :catchall_32
    move-exception v4

    :try_start_33
    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1842
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1843
    nop

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/semclipboard/SemClipboardService;
    .end local p1    # "filter":I
    throw v4

    .line 1835
    .restart local v0    # "ident":J
    .restart local v4    # "i":I
    .restart local p0    # "this":Lcom/android/server/semclipboard/SemClipboardService;
    .restart local p1    # "filter":I
    :catch_3d
    move-exception v5

    .line 1829
    :goto_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 1841
    .end local v4    # "i":I
    :cond_41
    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1842
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1843
    nop

    .line 1844
    .end local v3    # "n":I
    monitor-exit v2

    .line 1847
    goto :goto_53

    .line 1844
    :catchall_4c
    move-exception v3

    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_33 .. :try_end_4e} :catchall_4c

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/semclipboard/SemClipboardService;
    .end local p1    # "filter":I
    :try_start_4e
    throw v3
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_4f} :catch_4f

    .line 1845
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/semclipboard/SemClipboardService;
    .restart local p1    # "filter":I
    :catch_4f
    move-exception v2

    .line 1846
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1848
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_53
    return-void
.end method

.method private notifyListChange(ILcom/samsung/android/content/clipboard/data/SemClipData;)V
    .registers 13
    .param p1, "event"    # I
    .param p2, "data"    # Lcom/samsung/android/content/clipboard/data/SemClipData;

    .line 1797
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1799
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_4f

    .line 1800
    :try_start_7
    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_4c

    .line 1802
    .local v3, "n":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_e
    if-ge v4, v3, :cond_41

    .line 1804
    :try_start_10
    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;

    .line 1805
    .local v5, "li":Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;
    iget-object v6, p0, Lcom/android/server/semclipboard/SemClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v7, 0x1d

    iget v8, v5, Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;->mUid:I

    iget-object v9, v5, Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v6

    if-nez v6, :cond_31

    .line 1806
    iget-object v6, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;

    invoke-interface {v6, p1, p2}, Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;->onClipboardEvent(ILcom/samsung/android/content/clipboard/data/SemClipData;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_31} :catch_3d
    .catchall {:try_start_10 .. :try_end_31} :catchall_32

    .line 1811
    .end local v5    # "li":Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;
    :cond_31
    goto :goto_3e

    .line 1814
    .end local v4    # "i":I
    :catchall_32
    move-exception v4

    :try_start_33
    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1815
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1816
    nop

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/semclipboard/SemClipboardService;
    .end local p1    # "event":I
    .end local p2    # "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    throw v4

    .line 1808
    .restart local v0    # "ident":J
    .restart local v4    # "i":I
    .restart local p0    # "this":Lcom/android/server/semclipboard/SemClipboardService;
    .restart local p1    # "event":I
    .restart local p2    # "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :catch_3d
    move-exception v5

    .line 1802
    :goto_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 1814
    .end local v4    # "i":I
    :cond_41
    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1815
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1816
    nop

    .line 1817
    .end local v3    # "n":I
    monitor-exit v2

    .line 1820
    goto :goto_53

    .line 1817
    :catchall_4c
    move-exception v3

    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_33 .. :try_end_4e} :catchall_4c

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/semclipboard/SemClipboardService;
    .end local p1    # "event":I
    .end local p2    # "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :try_start_4e
    throw v3
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_4f} :catch_4f

    .line 1818
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/semclipboard/SemClipboardService;
    .restart local p1    # "event":I
    .restart local p2    # "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :catch_4f
    move-exception v2

    .line 1819
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1821
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_53
    return-void
.end method

.method private notifyUserChanged(I)V
    .registers 11
    .param p1, "userId"    # I

    .line 1851
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1852
    .local v0, "ident":J
    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mUserChangedListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1854
    .local v2, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v2, :cond_3d

    .line 1856
    :try_start_d
    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mUserChangedListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;

    .line 1857
    .local v4, "li":Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;
    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v6, 0x1d

    iget v7, v4, Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;->mUid:I

    iget-object v8, v4, Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2e

    .line 1858
    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService;->mUserChangedListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/content/clipboard/IOnUserChangedListener;

    invoke-interface {v5, p1}, Lcom/samsung/android/content/clipboard/IOnUserChangedListener;->onUserChanged(I)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_2e} :catch_39
    .catchall {:try_start_d .. :try_end_2e} :catchall_2f

    .line 1863
    .end local v4    # "li":Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;
    :cond_2e
    goto :goto_3a

    .line 1866
    .end local v3    # "i":I
    :catchall_2f
    move-exception v3

    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mUserChangedListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1867
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1868
    throw v3

    .line 1860
    .restart local v3    # "i":I
    :catch_39
    move-exception v4

    .line 1854
    :goto_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1866
    .end local v3    # "i":I
    :cond_3d
    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService;->mUserChangedListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1867
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1868
    nop

    .line 1869
    return-void
.end method

.method private parseXML(Ljava/io/File;)Ljava/util/ArrayList;
    .registers 14
    .param p1, "delClip"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 469
    const-string/jumbo v0, "inside exception for Close connection"

    const-string v1, "SemClipboardService"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 470
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 474
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_b
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    .line 475
    .local v4, "factoryObject":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 476
    .local v5, "myparser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v6

    .line 477
    const/4 v6, 0x0

    invoke-interface {v5, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 479
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    .line 480
    .local v7, "event":I
    :goto_21
    const/4 v8, 0x1

    if-eq v7, v8, :cond_59

    .line 481
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 482
    .local v8, "name":Ljava/lang/String;
    const/4 v9, 0x3

    if-eq v7, v9, :cond_2c

    goto :goto_53

    .line 486
    :cond_2c
    const-string v9, "boolean"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_53

    .line 487
    const-string/jumbo v9, "name"

    invoke-interface {v5, v6, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 488
    .local v9, "val":Ljava/lang/String;
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "parseXML : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    .end local v9    # "val":Ljava/lang/String;
    :cond_53
    :goto_53
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_57} :catch_74
    .catchall {:try_start_b .. :try_end_57} :catchall_72

    move v7, v9

    .line 495
    .end local v8    # "name":Ljava/lang/String;
    goto :goto_21

    .line 499
    .end local v4    # "factoryObject":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5    # "myparser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "event":I
    :cond_59
    nop

    .line 501
    :try_start_5a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5d} :catch_5e

    .line 504
    :goto_5d
    goto :goto_98

    .line 502
    :catch_5e
    move-exception v4

    .line 503
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_64
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_5d

    .line 499
    :catchall_72
    move-exception v4

    goto :goto_99

    .line 496
    :catch_74
    move-exception v4

    .line 497
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_75
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "inside exception for parsexml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8a
    .catchall {:try_start_75 .. :try_end_8a} :catchall_72

    .line 499
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_98

    .line 501
    :try_start_8d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_90} :catch_91

    goto :goto_5d

    .line 502
    :catch_91
    move-exception v4

    .line 503
    .restart local v4    # "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_64

    .line 507
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_98
    :goto_98
    return-object v2

    .line 499
    :goto_99
    if-eqz v3, :cond_b2

    .line 501
    :try_start_9b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_9e} :catch_9f

    .line 504
    goto :goto_b2

    .line 502
    :catch_9f
    move-exception v5

    .line 503
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_b2
    :goto_b2
    throw v4
.end method

.method private registerBroadcastReceiver()V
    .registers 4

    .line 2294
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2295
    .local v0, "userFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2296
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2297
    const-string v1, "com.samsung.sea.rm.DEMO_RESET_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2299
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/semclipboard/SemClipboardService$SemClipboardBroadcastReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/semclipboard/SemClipboardService$SemClipboardBroadcastReceiver;-><init>(Lcom/android/server/semclipboard/SemClipboardService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2300
    return-void
.end method

.method private registerKnoxModeChangeObserver()V
    .registers 5

    .line 577
    const-string v0, "SemClipboardService"

    const-string v1, "SemClipboardService.registerKnoxModeChangeObserver() Registered..."

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :try_start_7
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    new-instance v2, Lcom/android/server/semclipboard/SemClipboardService$1;

    invoke-direct {v2, p0}, Lcom/android/server/semclipboard/SemClipboardService$1;-><init>(Lcom/android/server/semclipboard/SemClipboardService;)V

    invoke-interface {v1, v2, v0}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_13} :catch_14

    .line 616
    goto :goto_30

    .line 613
    :catch_14
    move-exception v1

    .line 614
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Error during calling BMS.registerKnoxModeChangeObserver(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 618
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_30
    return-void
.end method

.method private sendClipDataToOriginal(Lcom/samsung/android/content/clipboard/data/SemClipData;Ljava/lang/String;I)V
    .registers 12
    .param p1, "data"    # Lcom/samsung/android/content/clipboard/data/SemClipData;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingId"    # I

    .line 1272
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "SemClipboardService"

    if-ne v0, v1, :cond_20

    .line 1274
    :try_start_9
    invoke-static {}, Lcom/android/server/semclipboard/SemClipboardService;->getService()Landroid/content/IClipboard;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;I)V

    .line 1275
    const-string v0, "String was copied.(Format.TEXT)"

    invoke-static {v2, v0}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_19} :catch_1a

    goto :goto_1e

    .line 1276
    :catch_1a
    move-exception v0

    .line 1277
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1278
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1e
    goto/16 :goto_cd

    .line 1279
    :cond_20
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_46

    .line 1280
    new-instance v0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;

    invoke-direct {v0}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;-><init>()V

    .line 1281
    .local v0, "txt":Lcom/samsung/android/content/clipboard/data/SemTextClipData;
    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setAlternateClipData(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z

    .line 1283
    :try_start_2f
    invoke-static {}, Lcom/android/server/semclipboard/SemClipboardService;->getService()Landroid/content/IClipboard;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    invoke-interface {v1, v3, p2, p3}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;I)V

    .line 1284
    const-string v1, "String was copied.(Format.HTML)"

    invoke-static {v2, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3f} :catch_40

    .line 1287
    goto :goto_44

    .line 1285
    :catch_40
    move-exception v1

    .line 1286
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1288
    .end local v0    # "txt":Lcom/samsung/android/content/clipboard/data/SemTextClipData;
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_44
    goto/16 :goto_cd

    :cond_46
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_64

    .line 1290
    :try_start_4e
    invoke-static {}, Lcom/android/server/semclipboard/SemClipboardService;->getService()Landroid/content/IClipboard;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;I)V

    .line 1291
    const-string v0, "String was copied.(Format.URI)"

    invoke-static {v2, v0}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_5e} :catch_5f

    goto :goto_63

    .line 1292
    :catch_5f
    move-exception v0

    .line 1293
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1294
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_63
    goto :goto_cd

    .line 1295
    :cond_64
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_82

    .line 1297
    :try_start_6c
    invoke-static {}, Lcom/android/server/semclipboard/SemClipboardService;->getService()Landroid/content/IClipboard;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;I)V

    .line 1298
    const-string v0, "String was copied.(Format.INTENT)"

    invoke-static {v2, v0}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_7c} :catch_7d

    goto :goto_81

    .line 1299
    :catch_7d
    move-exception v0

    .line 1300
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1301
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_81
    goto :goto_cd

    .line 1302
    :cond_82
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_cd

    .line 1303
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;

    .line 1304
    .local v0, "multiUri":Lcom/samsung/android/content/clipboard/data/SemUriListClipData;
    invoke-virtual {v0}, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->getUriList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1306
    .local v1, "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v3, 0x0

    .line 1307
    .local v3, "clipData":Landroid/content/ClipData;
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_96
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 1308
    .local v5, "uri":Landroid/net/Uri;
    if-nez v3, :cond_b0

    .line 1309
    iget-object v6, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v5}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v3

    goto :goto_b8

    .line 1311
    :cond_b0
    new-instance v6, Landroid/content/ClipData$Item;

    invoke-direct {v6, v5}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v3, v6}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 1313
    .end local v5    # "uri":Landroid/net/Uri;
    :goto_b8
    goto :goto_96

    .line 1315
    :cond_b9
    if-eqz v3, :cond_cd

    .line 1316
    :try_start_bb
    invoke-static {}, Lcom/android/server/semclipboard/SemClipboardService;->getService()Landroid/content/IClipboard;

    move-result-object v4

    invoke-interface {v4, v3, p2, p3}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;I)V

    .line 1317
    const-string v4, "String was copied.(Format.URI_LIST)"

    invoke-static {v2, v4}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_c7} :catch_c8

    goto :goto_cd

    .line 1319
    :catch_c8
    move-exception v2

    .line 1320
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    nop

    .line 1323
    .end local v0    # "multiUri":Lcom/samsung/android/content/clipboard/data/SemUriListClipData;
    .end local v1    # "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "clipData":Landroid/content/ClipData;
    :cond_cd
    :goto_cd
    return-void
.end method

.method private sendLoggingForCB(ILjava/lang/String;)V
    .registers 9
    .param p1, "type"    # I
    .param p2, "feature"    # Ljava/lang/String;

    .line 2173
    iget-boolean v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mIsLogging:Z

    const-string v1, "SemClipboardService"

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_69

    if-eqz p2, :cond_69

    .line 2174
    const/4 v0, 0x0

    .line 2175
    .local v0, "format":Ljava/lang/String;
    const/4 v2, 0x2

    if-eq p1, v2, :cond_2e

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2b

    const/16 v2, 0x8

    if-eq p1, v2, :cond_28

    const/16 v2, 0x10

    if-eq p1, v2, :cond_25

    const/16 v2, 0x20

    if-eq p1, v2, :cond_22

    .line 2192
    const-string v0, "TEXT"

    goto :goto_31

    .line 2189
    :cond_22
    const-string v0, "URI_LIST"

    .line 2190
    goto :goto_31

    .line 2183
    :cond_25
    const-string v0, "URI"

    .line 2184
    goto :goto_31

    .line 2186
    :cond_28
    const-string v0, "INTENT"

    .line 2187
    goto :goto_31

    .line 2177
    :cond_2b
    const-string v0, "HTML"

    .line 2178
    goto :goto_31

    .line 2180
    :cond_2e
    const-string v0, "BITMAP"

    .line 2181
    nop

    .line 2196
    :goto_31
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2197
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v3, "app_id"

    const-string v4, "com.android.samsung.clipboarduiservice"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2198
    const-string v3, "feature"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2199
    const-string v3, "extra"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2201
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2202
    .local v3, "i":Landroid/content/Intent;
    const-string v4, "data"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2203
    const-string v4, "com.samsung.android.providers.context"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2205
    invoke-static {v1, p2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    :try_start_5b
    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_60} :catch_61

    .line 2211
    goto :goto_68

    .line 2209
    :catch_61
    move-exception v4

    .line 2210
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "logging exception"

    invoke-static {v1, v5}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    .end local v0    # "format":Ljava/lang/String;
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "i":Landroid/content/Intent;
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_68
    goto :goto_6f

    .line 2213
    :cond_69
    const-string/jumbo v0, "no logging!"

    invoke-static {v1, v0}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2215
    :goto_6f
    return-void
.end method

.method private validateTmpFilePath(Ljava/lang/String;)Z
    .registers 8
    .param p1, "filePath"    # Ljava/lang/String;

    .line 1244
    const-string v0, "SemClipboardService"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    .line 1245
    return v2

    .line 1249
    :cond_a
    :try_start_a
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1250
    .local v1, "file":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/user/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->getPersonaId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "com.samsung.clipboardsaveservice/files/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1252
    .local v3, "knoxCanonicalPath":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filePath : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", CanonicalPath ; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TMP_FILE_OWNER_CANONICAL_PATH : /data/data/com.samsung.clipboardsaveservice/files/, knoxCanonicalPath ; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/data/data/com.samsung.clipboardsaveservice/files/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_91

    .line 1256
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_91

    .line 1257
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wrong file -  CanonicalPath : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_90} :catch_94

    .line 1258
    return v2

    .line 1263
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "knoxCanonicalPath":Ljava/lang/String;
    :cond_91
    nop

    .line 1265
    const/4 v0, 0x1

    return v0

    .line 1260
    :catch_94
    move-exception v1

    .line 1261
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occured : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    return v2
.end method


# virtual methods
.method public addClip(Landroid/content/ClipData;Ljava/lang/String;I)V
    .registers 9
    .param p1, "clip"    # Landroid/content/ClipData;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1066
    invoke-direct {p0, p2, p3}, Lcom/android/server/semclipboard/SemClipboardService;->getIntendingUid(Ljava/lang/String;I)I

    move-result v0

    .line 1067
    .local v0, "intendingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1069
    .local v1, "intendingUserId":I
    const/16 v2, 0x1e

    invoke-direct {p0, v2, p2, v0, v1}, Lcom/android/server/semclipboard/SemClipboardService;->clipboardAccessAllowed(ILjava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_11

    .line 1070
    return-void

    .line 1074
    :cond_11
    invoke-static {p1}, Landroid/sec/clipboard/ClipboardConverter;->ClipDataToClipboardData(Landroid/content/ClipData;)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v2

    .line 1075
    .local v2, "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    if-eqz v2, :cond_20

    .line 1076
    invoke-virtual {v2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v2, v4, p3}, Lcom/android/server/semclipboard/SemClipboardService;->setData(ILcom/samsung/android/content/clipboard/data/SemClipData;ZI)I

    goto :goto_27

    .line 1078
    :cond_20
    const-string v3, "SemClipboardService"

    const-string v4, "addClip() - data is null"

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    :goto_27
    return-void
.end method

.method public addClipboardEventListener(Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;Ljava/lang/String;)V
    .registers 7
    .param p1, "listener"    # Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1381
    :try_start_0
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_16

    .line 1382
    :try_start_3
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    new-instance v2, Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v2, v3, p2}, Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, p1, v2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 1383
    monitor-exit v0

    .line 1386
    goto :goto_1a

    .line 1383
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    .end local p0    # "this":Lcom/android/server/semclipboard/SemClipboardService;
    .end local p1    # "listener":Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;
    .end local p2    # "callingPackage":Ljava/lang/String;
    :try_start_15
    throw v1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_16} :catch_16

    .line 1384
    .restart local p0    # "this":Lcom/android/server/semclipboard/SemClipboardService;
    .restart local p1    # "listener":Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;
    .restart local p2    # "callingPackage":Ljava/lang/String;
    :catch_16
    move-exception v0

    .line 1385
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1387
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1a
    return-void
.end method

.method public addRemoteClip(Lcom/samsung/android/content/clipboard/data/SemClipData;)V
    .registers 7
    .param p1, "data"    # Lcom/samsung/android/content/clipboard/data/SemClipData;

    .line 2423
    if-eqz p1, :cond_4c

    .line 2424
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setCallerUid(J)V

    .line 2426
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->findRemoteClips()Ljava/lang/String;

    move-result-object v0

    .line 2427
    .local v0, "removeId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "SemClipboardService"

    if-nez v1, :cond_22

    .line 2428
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v1, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeClipByID(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 2429
    const-string v1, "Deleted existing remote data"

    invoke-static {v2, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2432
    :cond_22
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->addData(Lcom/samsung/android/content/clipboard/data/SemClipData;I)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 2433
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/semclipboard/SemClipboardService;->ListChange(I)V

    .line 2434
    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4, v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/android/server/semclipboard/SemClipboardService;->notifyListChange(ILcom/samsung/android/content/clipboard/data/SemClipData;)V

    .line 2435
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/semclipboard/SemClipboardService;->sendClipDataToOriginal(Lcom/samsung/android/content/clipboard/data/SemClipData;Ljava/lang/String;I)V

    .line 2436
    const-string v1, "Remote data add success"

    invoke-static {v2, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    .line 2438
    :cond_47
    const-string v1, "Failed to add data."

    invoke-static {v2, v1}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 2441
    .end local v0    # "removeId":Ljava/lang/String;
    :cond_4c
    :goto_4c
    return-void
.end method

.method public addUserChangedListener(Lcom/samsung/android/content/clipboard/IOnUserChangedListener;Ljava/lang/String;)V
    .registers 7
    .param p1, "listener"    # Lcom/samsung/android/content/clipboard/IOnUserChangedListener;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1403
    :try_start_0
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mUserChangedListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_16

    .line 1404
    :try_start_3
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mUserChangedListeners:Landroid/os/RemoteCallbackList;

    new-instance v2, Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v2, v3, p2}, Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, p1, v2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 1405
    monitor-exit v0

    .line 1408
    goto :goto_1a

    .line 1405
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    .end local p0    # "this":Lcom/android/server/semclipboard/SemClipboardService;
    .end local p1    # "listener":Lcom/samsung/android/content/clipboard/IOnUserChangedListener;
    .end local p2    # "callingPackage":Ljava/lang/String;
    :try_start_15
    throw v1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_16} :catch_16

    .line 1406
    .restart local p0    # "this":Lcom/android/server/semclipboard/SemClipboardService;
    .restart local p1    # "listener":Lcom/samsung/android/content/clipboard/IOnUserChangedListener;
    .restart local p2    # "callingPackage":Ljava/lang/String;
    :catch_16
    move-exception v0

    .line 1407
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1409
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1a
    return-void
.end method

.method public deleteDir(Ljava/io/File;)V
    .registers 3
    .param p1, "file"    # Ljava/io/File;

    .line 511
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/sec/clipboard/util/FileHelper;->delete(Ljava/io/File;)V

    .line 512
    return-void
.end method

.method public dismissDialog()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1615
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1616
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1617
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2251
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    const-string v1, "SemClipboardService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 2252
    :cond_b
    invoke-virtual {p0, p2}, Lcom/android/server/semclipboard/SemClipboardService;->dumpClipboard(Ljava/io/PrintWriter;)V

    .line 2253
    return-void
.end method

.method dumpClipboard(Ljava/io/PrintWriter;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2256
    monitor-enter p0

    .line 2257
    :try_start_1
    const-string v0, "Current Clipboard Service state:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2258
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/clipboard/util/FileHelper;->getLoadMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2259
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v0

    .line 2260
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->getPersonaId()I

    move-result v1

    .line 2261
    .local v1, "userId":I
    const-string v2, "  size="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2262
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2263
    const-string v2, "  userId="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2264
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2265
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2c
    if-ge v2, v0, :cond_97

    .line 2266
    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v3, v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v3

    .line 2267
    .local v3, "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    const-string v4, "  index="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2268
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2269
    const-string v4, "  id="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2270
    invoke-virtual {v3}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2271
    const-string v4, "  type="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2272
    invoke-virtual {v3}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2273
    const-string v4, "  protected="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2274
    invoke-virtual {v3}, Lcom/samsung/android/content/clipboard/data/SemClipData;->isProtected()Z

    move-result v4

    if-eqz v4, :cond_63

    const-string/jumbo v4, "true"

    goto :goto_65

    :cond_63
    const-string v4, "false"

    :goto_65
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2275
    const-string v4, "  callerUid="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2276
    invoke-virtual {v3}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getCallerUid()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 2277
    const-string v4, "  timestamp="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2278
    invoke-virtual {v3}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 2279
    const-string v4, "  pc_clip="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2280
    invoke-virtual {v3}, Lcom/samsung/android/content/clipboard/data/SemClipData;->isPCClip()Z

    move-result v4

    if-eqz v4, :cond_8f

    const-string/jumbo v4, "true"

    goto :goto_91

    :cond_8f
    const-string v4, "false"

    :goto_91
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2265
    .end local v3    # "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 2282
    .end local v0    # "size":I
    .end local v1    # "userId":I
    .end local v2    # "i":I
    :cond_97
    monitor-exit p0

    .line 2283
    return-void

    .line 2282
    :catchall_99
    move-exception v0

    monitor-exit p0
    :try_end_9b
    .catchall {:try_start_1 .. :try_end_9b} :catchall_99

    throw v0
.end method

.method public getClip(Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .registers 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2012
    invoke-direct {p0, p2, p3}, Lcom/android/server/semclipboard/SemClipboardService;->getIntendingUid(Ljava/lang/String;I)I

    move-result v0

    .line 2013
    .local v0, "intendingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 2015
    .local v1, "intendingUserId":I
    const/16 v2, 0x1d

    invoke-direct {p0, v2, p2, v0, v1}, Lcom/android/server/semclipboard/SemClipboardService;->clipboardAccessAllowed(ILjava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_12

    .line 2016
    const/4 v2, 0x0

    return-object v2

    .line 2020
    :cond_12
    invoke-direct {p0, v0, p2}, Lcom/android/server/semclipboard/SemClipboardService;->addActiveOwnerLocked(ILjava/lang/String;)V

    .line 2022
    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v2, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getClipByID(Ljava/lang/String;)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v2

    .line 2023
    .local v2, "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    if-nez v2, :cond_23

    .line 2024
    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v3, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getClipByID(Ljava/lang/String;)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v2

    .line 2026
    :cond_23
    return-object v2
.end method

.method public getClipData(ILjava/lang/String;I)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .registers 16
    .param p1, "format"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 629
    monitor-enter p0

    .line 630
    :try_start_1
    invoke-virtual {p0, p3}, Lcom/android/server/semclipboard/SemClipboardService;->isClipboardAllowed(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d0

    invoke-virtual {p0, p3}, Lcom/android/server/semclipboard/SemClipboardService;->isPackageAllowed(I)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_d0

    .line 636
    :cond_10
    invoke-direct {p0, p2, p3}, Lcom/android/server/semclipboard/SemClipboardService;->getIntendingUid(Ljava/lang/String;I)I

    move-result v0

    .line 637
    .local v0, "intendingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 639
    .local v2, "intendingUserId":I
    const/16 v3, 0x1d

    invoke-direct {p0, v3, p2, v0, v2}, Lcom/android/server/semclipboard/SemClipboardService;->clipboardAccessAllowed(ILjava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_22

    .line 640
    monitor-exit p0

    return-object v1

    .line 644
    :cond_22
    invoke-direct {p0, v0, p2}, Lcom/android/server/semclipboard/SemClipboardService;->addActiveOwnerLocked(ILjava/lang/String;)V

    .line 646
    const/4 v3, 0x0

    .line 648
    .local v3, "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->isKnoxTwoEnabled()Z

    move-result v4

    .line 650
    .local v4, "isKnoxTwoMode":Z
    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v5

    .line 651
    .local v5, "currentClipboardDataCount":I
    if-eqz v4, :cond_3a

    .line 652
    iget-object v6, p0, Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v6

    add-int/2addr v6, v5

    .local v6, "iClipboardDataCount":I
    goto :goto_3b

    .line 654
    .end local v6    # "iClipboardDataCount":I
    :cond_3a
    move v6, v5

    .line 657
    .restart local v6    # "iClipboardDataCount":I
    :goto_3b
    if-lez v6, :cond_ce

    .line 660
    invoke-virtual {p0, p3}, Lcom/android/server/semclipboard/SemClipboardService;->isClipboardShareAllowed(I)Z

    move-result v7

    if-nez v7, :cond_66

    .line 661
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_44
    if-ge v7, v5, :cond_64

    .line 662
    iget-object v8, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v8, v7}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getCallerUid()J

    move-result-wide v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_61

    .line 663
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v1, v7}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 661
    :cond_61
    add-int/lit8 v7, v7, 0x1

    goto :goto_44

    .line 666
    .end local v7    # "i":I
    :cond_64
    monitor-exit p0

    return-object v1

    .line 669
    :cond_66
    if-eqz v4, :cond_77

    invoke-direct {p0}, Lcom/android/server/semclipboard/SemClipboardService;->isServiceCallFromOther()Z

    move-result v7

    if-eqz v7, :cond_77

    .line 670
    const-string v7, "SemClipboardService"

    const-string v8, "SemClipboardService GetClipboardData() abnormal called!!!"

    invoke-static {v7, v8}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    monitor-exit p0

    return-object v1

    .line 674
    :cond_77
    if-eqz v4, :cond_86

    .line 675
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/semclipboard/SemClipboardService;->getLatestItemInternal(Z)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v1

    .line 676
    .local v1, "cbData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    const-string v7, "SemClipboardService"

    const-string v8, "cbData in Knox"

    invoke-static {v7, v8}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_95

    .line 677
    .end local v1    # "cbData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :cond_86
    if-lez v5, :cond_c5

    .line 679
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/semclipboard/SemClipboardService;->getLatestItemInternal(Z)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v1

    .line 680
    .restart local v1    # "cbData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    const-string v7, "SemClipboardService"

    const-string/jumbo v8, "owner copy and paste cdData"

    invoke-static {v7, v8}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :goto_95
    if-eqz v1, :cond_ce

    .line 688
    invoke-virtual {v1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v7

    .line 689
    .local v7, "clipType":I
    const-string v8, "SemClipboardService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getItem id : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", input id : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    and-int v8, v7, p1

    if-nez v8, :cond_c3

    .line 691
    invoke-virtual {v1, p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getAlternateClipData(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v8

    move-object v3, v8

    goto :goto_ce

    .line 693
    :cond_c3
    move-object v3, v1

    goto :goto_ce

    .line 682
    .end local v1    # "cbData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    .end local v7    # "clipType":I
    :cond_c5
    const-string v7, "SemClipboardService"

    const-string v8, "KNOX2 SYNC data has not paste item so return null "

    invoke-static {v7, v8}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    monitor-exit p0

    return-object v1

    .line 697
    :cond_ce
    :goto_ce
    monitor-exit p0

    return-object v3

    .line 631
    .end local v0    # "intendingUid":I
    .end local v2    # "intendingUserId":I
    .end local v3    # "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    .end local v4    # "isKnoxTwoMode":Z
    .end local v5    # "currentClipboardDataCount":I
    .end local v6    # "iClipboardDataCount":I
    :cond_d0
    :goto_d0
    const-string v0, "SemClipboardService"

    const-string v2, "getClipData() - Clipboard is not allowed to use."

    invoke-static {v0, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    monitor-exit p0

    return-object v1

    .line 698
    :catchall_d9
    move-exception v0

    monitor-exit p0
    :try_end_db
    .catchall {:try_start_1 .. :try_end_db} :catchall_d9

    throw v0
.end method

.method public getClipIndex(ILjava/lang/String;II)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .registers 12
    .param p1, "index"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "currentUserItemCount"    # I

    .line 1985
    invoke-direct {p0, p2, p3}, Lcom/android/server/semclipboard/SemClipboardService;->getIntendingUid(Ljava/lang/String;I)I

    move-result v0

    .line 1986
    .local v0, "intendingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1988
    .local v1, "intendingUserId":I
    const/16 v2, 0x1d

    invoke-direct {p0, v2, p2, v0, v1}, Lcom/android/server/semclipboard/SemClipboardService;->clipboardAccessAllowed(ILjava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1989
    const/4 v2, 0x0

    return-object v2

    .line 1993
    :cond_12
    const/4 v2, 0x0

    .line 1994
    .local v2, "result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    invoke-virtual {p0, p3}, Lcom/android/server/semclipboard/SemClipboardService;->isClipboardShareAllowed(I)Z

    move-result v3

    if-nez v3, :cond_33

    .line 1995
    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v3, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getCallerUid()J

    move-result-wide v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_44

    .line 1996
    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v3, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v2

    goto :goto_44

    .line 1999
    :cond_33
    if-ge p1, p4, :cond_3c

    .line 2000
    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v3, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v2

    goto :goto_44

    .line 2002
    :cond_3c
    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    sub-int v4, p1, p4

    invoke-virtual {v3, v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getSharedItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v2

    .line 2006
    :cond_44
    :goto_44
    return-object v2
.end method

.method public getClips(Ljava/lang/String;I)Ljava/util/List;
    .registers 14
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/content/clipboard/data/SemClipData;",
            ">;"
        }
    .end annotation

    .line 1932
    monitor-enter p0

    .line 1933
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1936
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/content/clipboard/data/SemClipData;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/server/semclipboard/SemClipboardService;->getIntendingUid(Ljava/lang/String;I)I

    move-result v1

    .line 1937
    .local v1, "intendingUid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1939
    .local v2, "intendingUserId":I
    const/16 v3, 0x1d

    invoke-direct {p0, v3, p1, v1, v2}, Lcom/android/server/semclipboard/SemClipboardService;->clipboardAccessAllowed(ILjava/lang/String;II)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2f

    .line 1940
    const-string v3, "SemClipboardService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clipboardAccess is not allowed. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    monitor-exit p0

    return-object v4

    .line 1945
    :cond_2f
    invoke-virtual {p0, p2}, Lcom/android/server/semclipboard/SemClipboardService;->isClipboardAllowed(I)Z

    move-result v3

    if-eqz v3, :cond_99

    invoke-virtual {p0, p2}, Lcom/android/server/semclipboard/SemClipboardService;->isPackageAllowed(I)Z

    move-result v3

    if-nez v3, :cond_3c

    goto :goto_99

    .line 1950
    :cond_3c
    invoke-direct {p0, v1, p1}, Lcom/android/server/semclipboard/SemClipboardService;->addActiveOwnerLocked(ILjava/lang/String;)V

    .line 1952
    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->getCount()I

    move-result v3

    .line 1953
    .local v3, "totalItemCount":I
    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v5

    .line 1955
    .local v5, "currentUserItemCount":I
    invoke-virtual {p0, p2}, Lcom/android/server/semclipboard/SemClipboardService;->isClipboardShareAllowed(I)Z

    move-result v6

    if-nez v6, :cond_72

    .line 1956
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_50
    if-ge v6, v5, :cond_71

    .line 1957
    iget-object v7, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v7, v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getCallerUid()J

    move-result-wide v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    int-to-long v9, v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_6e

    .line 1958
    iget-object v7, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v7, v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1956
    :cond_6e
    add-int/lit8 v6, v6, 0x1

    goto :goto_50

    .end local v6    # "i":I
    :cond_71
    goto :goto_8f

    .line 1962
    :cond_72
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_73
    if-ge v6, v3, :cond_8f

    .line 1963
    if-ge v6, v5, :cond_81

    .line 1964
    iget-object v7, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v7, v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8c

    .line 1966
    :cond_81
    sub-int v7, v6, v5

    .line 1967
    .local v7, "ownerIndex":I
    iget-object v8, p0, Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v8, v7}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getSharedItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1962
    .end local v7    # "ownerIndex":I
    :goto_8c
    add-int/lit8 v6, v6, 0x1

    goto :goto_73

    .line 1972
    .end local v6    # "index":I
    :cond_8f
    :goto_8f
    new-instance v6, Lcom/android/server/semclipboard/SemClipboardService$ClipDataComparator;

    invoke-direct {v6, v4}, Lcom/android/server/semclipboard/SemClipboardService$ClipDataComparator;-><init>(Lcom/android/server/semclipboard/SemClipboardService$1;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 1973
    monitor-exit p0

    return-object v0

    .line 1946
    .end local v3    # "totalItemCount":I
    .end local v5    # "currentUserItemCount":I
    :cond_99
    :goto_99
    const-string v3, "SemClipboardService"

    const-string v4, "getClipData() - Clipboard is not allowed to use."

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    monitor-exit p0

    return-object v0

    .line 1974
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/content/clipboard/data/SemClipData;>;"
    .end local v1    # "intendingUid":I
    .end local v2    # "intendingUserId":I
    :catchall_a2
    move-exception v0

    monitor-exit p0
    :try_end_a4
    .catchall {:try_start_1 .. :try_end_a4} :catchall_a2

    throw v0
.end method

.method public getCount()I
    .registers 10

    .line 840
    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->getPersonaId()I

    move-result v0

    .line 841
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v1

    .line 843
    .local v1, "dataSize":I
    invoke-virtual {p0, v0}, Lcom/android/server/semclipboard/SemClipboardService;->isClipboardAllowed(I)Z

    move-result v2

    const-string v3, "SemClipboardService"

    if-eqz v2, :cond_7c

    invoke-virtual {p0, v0}, Lcom/android/server/semclipboard/SemClipboardService;->isPackageAllowed(I)Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_7c

    .line 848
    :cond_19
    invoke-virtual {p0, v0}, Lcom/android/server/semclipboard/SemClipboardService;->isClipboardShareAllowed(I)Z

    move-result v2

    if-nez v2, :cond_50

    .line 849
    const/4 v2, 0x0

    .line 850
    .local v2, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_21
    if-ge v4, v1, :cond_3b

    .line 851
    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v5, v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getCallerUid()J

    move-result-wide v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_38

    .line 852
    add-int/lit8 v2, v2, 0x1

    .line 850
    :cond_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 855
    .end local v4    # "i":I
    :cond_3b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDataSize : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    return v2

    .line 859
    .end local v2    # "size":I
    :cond_50
    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->isKnoxTwoEnabled()Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 860
    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->sharedSize()I

    move-result v2

    .line 861
    .local v2, "sharedSize":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCount : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    add-int v3, v1, v2

    return v3

    .line 864
    .end local v2    # "sharedSize":I
    :cond_7b
    return v1

    .line 844
    :cond_7c
    :goto_7c
    const-string v2, "getCount() - Clipboard is not allowed to use."

    invoke-static {v3, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    const/4 v2, 0x0

    return v2
.end method

.method public getCurrentUserItemCount()I
    .registers 2

    .line 1979
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()I
    .registers 2

    .line 1567
    iget v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mEnableFormatId:I

    return v0
.end method

.method public getPersonaId()I
    .registers 2

    .line 197
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->KNOX_V2_ENABLED:Z

    if-eqz v0, :cond_17

    invoke-direct {p0}, Lcom/android/server/semclipboard/SemClipboardService;->getPersonaManager()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 198
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedKnoxId()I

    move-result v0

    .line 199
    .local v0, "userId":I
    if-nez v0, :cond_1b

    .line 200
    invoke-direct {p0}, Lcom/android/server/semclipboard/SemClipboardService;->getUserId()I

    move-result v0

    goto :goto_1b

    .line 203
    .end local v0    # "userId":I
    :cond_17
    invoke-direct {p0}, Lcom/android/server/semclipboard/SemClipboardService;->getUserId()I

    move-result v0

    .line 205
    .restart local v0    # "userId":I
    :cond_1b
    :goto_1b
    return v0
.end method

.method public hideClipboardDialogOnDisplay()V
    .registers 3

    .line 2414
    sget v0, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 2415
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mWm:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerInternal;->hideClipBoard(I)V

    .line 2417
    :cond_b
    return-void
.end method

.method public isClipboardAllowed(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 1743
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_6

    .line 1744
    const/4 v0, 0x0

    return v0

    .line 1746
    :cond_6
    invoke-static {v0}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->isClipboardAllowed(I)Z

    move-result v0

    return v0
.end method

.method public isClipboardShareAllowed(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 1760
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_6

    .line 1761
    const/4 v0, 0x1

    return v0

    .line 1764
    :cond_6
    invoke-static {v0}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->isClipboardSharedAllowed(I)Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .line 1714
    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->getPersonaId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/semclipboard/SemClipboardService;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method isKnoxTwoEnabled()Z
    .registers 6

    .line 209
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->KNOX_V2_ENABLED:Z

    const/4 v1, 0x0

    const-string v2, "SemClipboardService"

    if-eqz v0, :cond_3b

    .line 210
    invoke-direct {p0}, Lcom/android/server/semclipboard/SemClipboardService;->getPersonaManager()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 211
    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->getPersonaId()I

    move-result v0

    .line 213
    .local v0, "currUser":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isKnoxTwoEnabled getPersonaId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v3, v0}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v3

    if-nez v3, :cond_34

    .line 216
    const-string v3, "Current user is a USER, hence return false"

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return v1

    .line 219
    :cond_34
    const-string v1, "Current user is a persona, hence return true"

    invoke-static {v2, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v1, 0x1

    return v1

    .line 223
    .end local v0    # "currUser":I
    :cond_3b
    const-string v0, "\'ro.build.knox.container\' system property is not set to \'2.0\', hence return false"

    invoke-static {v2, v0}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return v1
.end method

.method public isPackageAllowed(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 1752
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_6

    .line 1753
    const/4 v0, 0x0

    return v0

    .line 1755
    :cond_6
    invoke-static {v0}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->isPackageAllowed(I)Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1562
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mIsDialogShowing:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public synthetic lambda$addData$0$SemClipboardService(Lcom/samsung/android/content/clipboard/data/SemClipData;Lcom/samsung/android/content/clipboard/data/SemClipData;I)V
    .registers 10
    .param p1, "addItem"    # Lcom/samsung/android/content/clipboard/data/SemClipData;
    .param p2, "data"    # Lcom/samsung/android/content/clipboard/data/SemClipData;
    .param p3, "type"    # I

    .line 1136
    const/4 v0, 0x0

    .line 1137
    .local v0, "thumbFullPath":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getThumbnailPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1138
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mCurrentUserContext:Landroid/content/Context;

    if-eqz v1, :cond_19

    .line 1139
    invoke-virtual {p1, v1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->createThumbnailFromData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1140
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mCurrentUserContext:Landroid/content/Context;

    goto :goto_21

    .line 1141
    :cond_19
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_21

    .line 1142
    invoke-virtual {p1, v1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->createThumbnailFromData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1145
    :cond_21
    :goto_21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 1146
    invoke-virtual {p1, v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setThumbnailPath(Ljava/lang/String;)Z

    .line 1151
    :cond_2a
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    iget v2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mCallingId:I

    invoke-virtual {v1, p1, v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->addData(Lcom/samsung/android/content/clipboard/data/SemClipData;I)Z

    move-result v1

    const-string v2, "SemClipboardService"

    if-eqz v1, :cond_53

    .line 1152
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v1

    const-string v3, "CBCT"

    invoke-direct {p0, v1, v3}, Lcom/android/server/semclipboard/SemClipboardService;->sendLoggingForCB(ILjava/lang/String;)V

    .line 1153
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/semclipboard/SemClipboardService;->ListChange(I)V

    .line 1154
    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/android/server/semclipboard/SemClipboardService;->notifyListChange(ILcom/samsung/android/content/clipboard/data/SemClipData;)V

    .line 1155
    const-string v1, "add success"

    invoke-static {v2, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    .line 1157
    :cond_53
    const-string v1, "Failed to add data."

    invoke-static {v2, v1}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    :goto_58
    invoke-direct {p0, p2, p3}, Lcom/android/server/semclipboard/SemClipboardService;->deleteTempFile(Lcom/samsung/android/content/clipboard/data/SemClipData;I)V

    .line 1162
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b0

    .line 1163
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1164
    .local v1, "deleteFile":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/semclipboard/temp/"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1166
    .local v3, "pasteFile":Ljava/io/File;
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_9c

    .line 1167
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_b0

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_b0

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-eqz v4, :cond_b0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_b0

    .line 1168
    const-string v4, "Temp preview file of html item will be deleted"

    invoke-static {v2, v4}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/sec/clipboard/util/FileHelper;->delete(Ljava/io/File;)V

    goto :goto_b0

    .line 1172
    :cond_9c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No target file...thumbFullPath : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    .end local v1    # "deleteFile":Ljava/io/File;
    .end local v3    # "pasteFile":Ljava/io/File;
    :cond_b0
    :goto_b0
    return-void
.end method

.method public multiUserMode(ILjava/lang/String;)V
    .registers 9
    .param p1, "id"    # I
    .param p2, "mode"    # Ljava/lang/String;

    .line 1690
    invoke-direct {p0, p1}, Lcom/android/server/semclipboard/SemClipboardService;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "not enabled! multiUserMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemClipboardService"

    invoke-static {v1, v0}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    return-void

    .line 1694
    :cond_1e
    monitor-enter p0

    .line 1695
    :try_start_1f
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->KNOX_V2_ENABLED:Z

    if-eqz v0, :cond_60

    .line 1696
    invoke-direct {p0}, Lcom/android/server/semclipboard/SemClipboardService;->getPersonaManager()Z

    move-result v0

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 1698
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1699
    .local v0, "um":Landroid/os/UserManager;
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1700
    .local v1, "ui":Landroid/content/pm/UserInfo;
    iget v2, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 1702
    .local v2, "parentId":I
    const-string v3, "SemClipboardService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "multiUserMode parentId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v3, v4, v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->replaceWithTargetForUser(Landroid/sec/clipboard/data/ClipboardDataMgr;I)V

    .line 1706
    .end local v0    # "um":Landroid/os/UserManager;
    .end local v1    # "ui":Landroid/content/pm/UserInfo;
    .end local v2    # "parentId":I
    :cond_60
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v0, p1, p2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->multiUserMode(ILjava/lang/String;)V

    .line 1707
    monitor-exit p0
    :try_end_66
    .catchall {:try_start_1f .. :try_end_66} :catchall_6a

    .line 1709
    invoke-direct {p0, p1}, Lcom/android/server/semclipboard/SemClipboardService;->notifyUserChanged(I)V

    .line 1710
    return-void

    .line 1707
    :catchall_6a
    move-exception v0

    :try_start_6b
    monitor-exit p0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw v0
.end method

.method public pasteClip(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 11
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1898
    monitor-enter p0

    .line 1899
    :try_start_1
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 1900
    const-string v0, "SemClipboardService"

    const-string v2, "ClipboardDataPasteEvent is null."

    invoke-static {v0, v2}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    monitor-exit p0

    return v1

    .line 1905
    :cond_f
    invoke-direct {p0, p2, p3}, Lcom/android/server/semclipboard/SemClipboardService;->getIntendingUid(Ljava/lang/String;I)I

    move-result v0

    .line 1906
    .local v0, "intendingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1908
    .local v2, "intendingUserId":I
    const/16 v3, 0x1d

    invoke-direct {p0, v3, p2, v0, v2}, Lcom/android/server/semclipboard/SemClipboardService;->clipboardAccessAllowed(ILjava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_21

    .line 1909
    monitor-exit p0

    return v1

    .line 1913
    :cond_21
    invoke-direct {p0, v0, p2}, Lcom/android/server/semclipboard/SemClipboardService;->addActiveOwnerLocked(ILjava/lang/String;)V

    .line 1915
    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v3, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getClipByID(Ljava/lang/String;)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v3

    .line 1916
    .local v3, "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    if-nez v3, :cond_33

    .line 1917
    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getClipByID(Ljava/lang/String;)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v4

    move-object v3, v4

    .line 1920
    :cond_33
    if-nez v3, :cond_4d

    .line 1921
    const-string v4, "SemClipboardService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot find item whose ID is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    monitor-exit p0

    return v1

    .line 1924
    :cond_4d
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    invoke-interface {v1, v3}, Landroid/sec/clipboard/IClipboardDataPasteEvent;->onPaste(Lcom/samsung/android/content/clipboard/data/SemClipData;)V

    .line 1925
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 1927
    .end local v0    # "intendingUid":I
    .end local v2    # "intendingUserId":I
    .end local v3    # "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :catchall_55
    move-exception v0

    monitor-exit p0
    :try_end_57
    .catchall {:try_start_1 .. :try_end_57} :catchall_55

    throw v0
.end method

.method public registClipboardWorkingFormUiInterfaces(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V
    .registers 7
    .param p1, "iRegInterface"    # Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1333
    monitor-enter p0

    .line 1334
    :try_start_1
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mWorkingUiInterfaceList:Ljava/util/ArrayList;

    if-eqz v0, :cond_4f

    .line 1335
    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->isKnoxTwoEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1336
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->clipPickerDataList:Lcom/android/server/semclipboard/SemClipboardService$ISharedClipboardDataList;

    invoke-interface {p1, v0}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->setClipboardDataMgr(Landroid/sec/clipboard/data/IClipboardDataList;)V

    goto :goto_16

    .line 1339
    :cond_11
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-interface {p1, v0}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->setClipboardDataMgr(Landroid/sec/clipboard/data/IClipboardDataList;)V

    .line 1341
    :goto_16
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipBoardDataUiEventImp:Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;

    invoke-interface {p1, v0}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->setClipboardDataUiEvent(Landroid/sec/clipboard/IClipboardDataUiEvent;)V

    .line 1342
    const/4 v0, 0x0

    .line 1343
    .local v0, "isExist":Z
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mWorkingUiInterfaceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .line 1344
    .local v2, "uiInterface":Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    invoke-interface {v2}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 1345
    const/4 v0, 0x1

    .line 1346
    goto :goto_3f

    .line 1348
    .end local v2    # "uiInterface":Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    :cond_3e
    goto :goto_22

    .line 1349
    :cond_3f
    :goto_3f
    if-nez v0, :cond_47

    .line 1350
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mWorkingUiInterfaceList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    .line 1352
    :cond_47
    const-string v1, "SemClipboardService"

    const-string v2, "exist uiInterface!"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    .end local v0    # "isExist":Z
    :goto_4e
    goto :goto_56

    .line 1355
    :cond_4f
    const-string v0, "SemClipboardService"

    const-string v1, "RegistClipboardWorkingFormUiInterface is null"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    :goto_56
    monitor-exit p0

    .line 1358
    return-void

    .line 1357
    :catchall_58
    move-exception v0

    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_1 .. :try_end_5a} :catchall_58

    throw v0
.end method

.method public removeAll(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1873
    invoke-direct {p0}, Lcom/android/server/semclipboard/SemClipboardService;->checkCallerIsSystemOrSignature()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1874
    return v1

    .line 1878
    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/android/server/semclipboard/SemClipboardService;->getIntendingUid(Ljava/lang/String;I)I

    move-result v0

    .line 1879
    .local v0, "intendingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1881
    .local v2, "intendingUserId":I
    const/16 v3, 0x1e

    invoke-direct {p0, v3, p1, v0, v2}, Lcom/android/server/semclipboard/SemClipboardService;->clipboardAccessAllowed(ILjava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_19

    .line 1882
    return v1

    .line 1886
    :cond_19
    monitor-enter p0

    .line 1887
    :try_start_1a
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeAll()Z

    move-result v1

    .line 1888
    .local v1, "bRes":Z
    if-eqz v1, :cond_2a

    .line 1889
    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-direct {p0, v4, v3}, Lcom/android/server/semclipboard/SemClipboardService;->notifyListChange(ILcom/samsung/android/content/clipboard/data/SemClipData;)V

    .line 1890
    invoke-direct {p0, v4}, Lcom/android/server/semclipboard/SemClipboardService;->ListChange(I)V

    .line 1892
    :cond_2a
    monitor-exit p0

    return v1

    .line 1893
    .end local v1    # "bRes":Z
    :catchall_2c
    move-exception v1

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_1a .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public removeClip(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 9
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2032
    invoke-direct {p0}, Lcom/android/server/semclipboard/SemClipboardService;->checkCallerIsSystemOrSignature()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    sget-object v0, Lcom/android/server/semclipboard/SemClipboardService;->KNOX_LABELS:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 2033
    return v1

    .line 2037
    :cond_10
    invoke-direct {p0, p2, p3}, Lcom/android/server/semclipboard/SemClipboardService;->getIntendingUid(Ljava/lang/String;I)I

    move-result v0

    .line 2038
    .local v0, "intendingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 2040
    .local v2, "intendingUserId":I
    const/16 v3, 0x1e

    invoke-direct {p0, v3, p2, v0, v2}, Lcom/android/server/semclipboard/SemClipboardService;->clipboardAccessAllowed(ILjava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_21

    .line 2041
    return v1

    .line 2045
    :cond_21
    monitor-enter p0

    .line 2046
    :try_start_22
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/semclipboard/SemClipboardService;->getClip(Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v1

    .line 2047
    .local v1, "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v3, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeClipByID(Ljava/lang/String;)Z

    move-result v3

    .line 2048
    .local v3, "result":Z
    if-nez v3, :cond_35

    .line 2049
    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeClipByID(Ljava/lang/String;)Z

    move-result v4

    move v3, v4

    .line 2052
    :cond_35
    if-eqz v3, :cond_3e

    .line 2053
    const/4 v4, 0x2

    invoke-direct {p0, v4, v1}, Lcom/android/server/semclipboard/SemClipboardService;->notifyListChange(ILcom/samsung/android/content/clipboard/data/SemClipData;)V

    .line 2054
    invoke-direct {p0, v4}, Lcom/android/server/semclipboard/SemClipboardService;->ListChange(I)V

    .line 2057
    :cond_3e
    monitor-exit p0

    return v3

    .line 2058
    .end local v1    # "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    .end local v3    # "result":Z
    :catchall_40
    move-exception v1

    monitor-exit p0
    :try_end_42
    .catchall {:try_start_22 .. :try_end_42} :catchall_40

    throw v1
.end method

.method public removeClipboardEventListener(Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;

    .line 1392
    :try_start_0
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_d

    .line 1393
    :try_start_3
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1394
    monitor-exit v0

    .line 1397
    goto :goto_11

    .line 1394
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    .end local p0    # "this":Lcom/android/server/semclipboard/SemClipboardService;
    .end local p1    # "listener":Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;
    :try_start_c
    throw v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_d} :catch_d

    .line 1395
    .restart local p0    # "this":Lcom/android/server/semclipboard/SemClipboardService;
    .restart local p1    # "listener":Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;
    :catch_d
    move-exception v0

    .line 1396
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1398
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_11
    return-void
.end method

.method public removeUserChangedListener(Lcom/samsung/android/content/clipboard/IOnUserChangedListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/samsung/android/content/clipboard/IOnUserChangedListener;

    .line 1414
    :try_start_0
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mUserChangedListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_d

    .line 1415
    :try_start_3
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mUserChangedListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1416
    monitor-exit v0

    .line 1419
    goto :goto_11

    .line 1416
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    .end local p0    # "this":Lcom/android/server/semclipboard/SemClipboardService;
    .end local p1    # "listener":Lcom/samsung/android/content/clipboard/IOnUserChangedListener;
    :try_start_c
    throw v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_d} :catch_d

    .line 1417
    .restart local p0    # "this":Lcom/android/server/semclipboard/SemClipboardService;
    .restart local p1    # "listener":Lcom/samsung/android/content/clipboard/IOnUserChangedListener;
    :catch_d
    move-exception v0

    .line 1418
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1420
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_11
    return-void
.end method

.method public restoreClipboard(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 5
    .param p1, "savePath"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;

    .line 2288
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v0, p1, p2, p3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->restoreClipboard(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 2289
    return-void
.end method

.method public setClipData(ILcom/samsung/android/content/clipboard/data/SemClipData;Ljava/lang/String;IZ)I
    .registers 15
    .param p1, "format"    # I
    .param p2, "data"    # Lcom/samsung/android/content/clipboard/data/SemClipData;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "callingId"    # I
    .param p5, "sendToOrigin"    # Z

    .line 874
    const/4 v0, 0x1

    .line 875
    .local v0, "result":I
    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_10

    .line 876
    const-string v1, "SemClipboardService"

    const-string/jumbo v2, "not enabled! SetClipboardData()"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    return v0

    .line 880
    :cond_10
    if-nez p2, :cond_14

    .line 881
    const/4 v1, 0x3

    return v1

    .line 885
    :cond_14
    invoke-direct {p0, p3, p4}, Lcom/android/server/semclipboard/SemClipboardService;->getIntendingUid(Ljava/lang/String;I)I

    move-result v1

    .line 886
    .local v1, "intendingUid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 888
    .local v2, "intendingUserId":I
    const/16 v3, 0x1e

    invoke-direct {p0, v3, p3, v1, v2}, Lcom/android/server/semclipboard/SemClipboardService;->clipboardAccessAllowed(ILjava/lang/String;II)Z

    move-result v3

    const/4 v4, 0x4

    if-nez v3, :cond_26

    .line 889
    return v4

    .line 893
    :cond_26
    invoke-virtual {p0, p4}, Lcom/android/server/semclipboard/SemClipboardService;->isClipboardAllowed(I)Z

    move-result v3

    if-eqz v3, :cond_ae

    invoke-virtual {p0, p4}, Lcom/android/server/semclipboard/SemClipboardService;->isPackageAllowed(I)Z

    move-result v3

    if-nez v3, :cond_34

    goto/16 :goto_ae

    .line 898
    :cond_34
    const-string v3, "SemClipboardService"

    const-string v4, "==================================================================="

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    iput p4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mCallingId:I

    .line 902
    monitor-enter p0

    .line 903
    :try_start_3e
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_4a

    .line 904
    const-string v3, "SemClipboardService"

    const-string/jumbo v4, "in synchronized"

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    :cond_4a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 908
    .local v3, "callingUid":I
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 909
    .local v4, "callingUser":I
    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;
    :try_end_54
    .catchall {:try_start_3e .. :try_end_54} :catchall_ab

    if-eqz v5, :cond_84

    .line 911
    :try_start_56
    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, p3, v6, v7}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService;->mCurrentUserContext:Landroid/content/Context;
    :try_end_64
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_56 .. :try_end_64} :catch_65
    .catchall {:try_start_56 .. :try_end_64} :catchall_ab

    .line 914
    goto :goto_84

    .line 912
    :catch_65
    move-exception v5

    .line 913
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_66
    const-string v6, "SemClipboardService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "callingPackage :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", NameNotFoundException :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/sec/clipboard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_84
    :goto_84
    invoke-direct {p0, p1, p2}, Lcom/android/server/semclipboard/SemClipboardService;->addData(ILcom/samsung/android/content/clipboard/data/SemClipData;)I

    move-result v5

    move v0, v5

    .line 918
    if-eqz p5, :cond_93

    if-eqz v0, :cond_90

    const/4 v5, 0x2

    if-ne v0, v5, :cond_93

    .line 919
    :cond_90
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/semclipboard/SemClipboardService;->sendClipDataToOriginal(Lcom/samsung/android/content/clipboard/data/SemClipData;Ljava/lang/String;I)V

    .line 921
    .end local v3    # "callingUid":I
    .end local v4    # "callingUser":I
    :cond_93
    monitor-exit p0
    :try_end_94
    .catchall {:try_start_66 .. :try_end_94} :catchall_ab

    .line 922
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=================================================================== "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SemClipboardService"

    invoke-static {v4, v3}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    return v0

    .line 921
    :catchall_ab
    move-exception v3

    :try_start_ac
    monitor-exit p0
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ab

    throw v3

    .line 894
    :cond_ae
    :goto_ae
    const-string v3, "SemClipboardService"

    const-string/jumbo v5, "setClipData() - Clipboard is not allowed to use."

    invoke-static {v3, v5}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    return v4
.end method

.method public setData(ILcom/samsung/android/content/clipboard/data/SemClipData;ZI)I
    .registers 9
    .param p1, "format"    # I
    .param p2, "data"    # Lcom/samsung/android/content/clipboard/data/SemClipData;
    .param p3, "isCallFromGED"    # Z
    .param p4, "callingId"    # I

    .line 928
    const/4 v0, 0x1

    .line 930
    .local v0, "ret":I
    const-string v1, "SemClipboardService"

    if-eqz p3, :cond_11

    invoke-direct {p0}, Lcom/android/server/semclipboard/SemClipboardService;->canReadAcrossProfiles()Z

    move-result v2

    if-nez v2, :cond_11

    .line 931
    const-string v2, "disallow cross profile copy & paste!"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    return v0

    .line 935
    :cond_11
    if-nez p2, :cond_15

    .line 936
    const/4 v1, 0x3

    return v1

    .line 939
    :cond_15
    invoke-virtual {p0, p4}, Lcom/android/server/semclipboard/SemClipboardService;->isClipboardAllowed(I)Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-virtual {p0, p4}, Lcom/android/server/semclipboard/SemClipboardService;->isPackageAllowed(I)Z

    move-result v2

    if-nez v2, :cond_22

    goto :goto_5b

    .line 944
    :cond_22
    const-string v2, "==================================================================="

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setData : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    iput p4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mCallingId:I

    .line 947
    invoke-direct {p0, p1, p2}, Lcom/android/server/semclipboard/SemClipboardService;->addData(ILcom/samsung/android/content/clipboard/data/SemClipData;)I

    move-result v0

    .line 948
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=================================================================== "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    return v0

    .line 940
    :cond_5b
    :goto_5b
    const-string/jumbo v2, "setData() - Clipboard is not allowed to use."

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    const/4 v1, 0x4

    return v1
.end method

.method public showClipboardDialogOnDisplay()V
    .registers 3

    .line 2408
    sget v0, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 2409
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mWm:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerInternal;->showClipBoardPostLayout(I)V

    .line 2411
    :cond_b
    return-void
.end method

.method public showDialog()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1621
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_d

    .line 1622
    const-string v0, "SemClipboardService"

    const-string/jumbo v1, "showUIDataDialog : Context is null."

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    return-void

    .line 1627
    :cond_d
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1628
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1629
    return-void
.end method

.method public showDialogWithType(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "clPasteEvent"    # Landroid/sec/clipboard/IClipboardDataPasteEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1541
    const-string v0, "SemClipboardService"

    const-string/jumbo v1, "show ui clipboard dialog in service"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    iput p1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mEnableFormatId:I

    .line 1544
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "format id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mEnableFormatId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    iput-object p2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .line 1546
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1547
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1548
    return-void
.end method

.method public startMobileContinuity()V
    .registers 3

    .line 2445
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/sec/clipboard/remote/SemClipboardRemoteManager;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/remote/SemClipboardRemoteManager;

    .line 2446
    const-string v0, "SemClipboardService"

    const-string v1, "Start mobile continuity."

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2447
    return-void
.end method

.method public unRegistClipboardWorkingFormUiInterfaces(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V
    .registers 6
    .param p1, "iRegInterface"    # Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1365
    monitor-enter p0

    .line 1366
    :try_start_1
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mWorkingUiInterfaceList:Ljava/util/ArrayList;

    if-eqz v0, :cond_43

    .line 1367
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mWorkingUiInterfaceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .line 1368
    .local v1, "uiInterface":Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    invoke-interface {v1}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1369
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mWorkingUiInterfaceList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1370
    monitor-exit p0

    return-void

    .line 1372
    .end local v1    # "uiInterface":Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    :cond_2c
    goto :goto_b

    .line 1373
    :cond_2d
    const-string v0, "SemClipboardService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    :cond_43
    monitor-exit p0

    .line 1376
    return-void

    .line 1375
    :catchall_45
    move-exception v0

    monitor-exit p0
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_45

    throw v0
.end method

.method public updateClip(Ljava/lang/String;Lcom/samsung/android/content/clipboard/data/SemClipData;Ljava/lang/String;I)Z
    .registers 16
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/samsung/android/content/clipboard/data/SemClipData;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 2063
    invoke-direct {p0}, Lcom/android/server/semclipboard/SemClipboardService;->checkCallerIsSystemOrSignature()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2064
    return v1

    .line 2068
    :cond_8
    invoke-direct {p0, p3, p4}, Lcom/android/server/semclipboard/SemClipboardService;->getIntendingUid(Ljava/lang/String;I)I

    move-result v0

    .line 2069
    .local v0, "intendingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 2071
    .local v2, "intendingUserId":I
    const/16 v3, 0x1e

    invoke-direct {p0, v3, p3, v0, v2}, Lcom/android/server/semclipboard/SemClipboardService;->clipboardAccessAllowed(ILjava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_19

    .line 2072
    return v1

    .line 2076
    :cond_19
    invoke-direct {p0, v0, p3}, Lcom/android/server/semclipboard/SemClipboardService;->addActiveOwnerLocked(ILjava/lang/String;)V

    .line 2078
    const/4 v3, -0x1

    .line 2079
    .local v3, "index":I
    const/4 v4, 0x0

    .line 2081
    .local v4, "originalData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v5

    .line 2082
    .local v5, "clipDataMgrSize":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_25
    if-ge v6, v5, :cond_41

    .line 2083
    iget-object v7, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v7, v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3e

    .line 2084
    move v3, v6

    .line 2085
    iget-object v7, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v7, v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v4

    .line 2082
    :cond_3e
    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    .line 2089
    .end local v6    # "i":I
    :cond_41
    const/4 v6, -0x1

    if-ne v3, v6, :cond_67

    .line 2090
    iget-object v7, p0, Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v7}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v7

    .line 2091
    .local v7, "sharedClipDataMgrSize":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4b
    if-ge v8, v7, :cond_67

    .line 2092
    iget-object v9, p0, Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v9, v8}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_64

    .line 2093
    move v3, v8

    .line 2094
    iget-object v9, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v9, v8}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v4

    .line 2091
    :cond_64
    add-int/lit8 v8, v8, 0x1

    goto :goto_4b

    .line 2099
    .end local v7    # "sharedClipDataMgrSize":I
    .end local v8    # "i":I
    :cond_67
    if-eq v3, v6, :cond_9e

    if-eqz p2, :cond_9e

    if-nez v4, :cond_6e

    goto :goto_9e

    .line 2103
    :cond_6e
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v1, v3, p2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->updateData(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z

    move-result v1

    .line 2104
    .local v1, "result":Z
    if-nez v1, :cond_7c

    .line 2105
    iget-object v6, p0, Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v6, v3, p2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->updateData(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z

    move-result v1

    .line 2108
    :cond_7c
    if-eqz v1, :cond_9d

    .line 2109
    const/4 v6, 0x4

    .line 2110
    .local v6, "updateType":I
    invoke-virtual {v4}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getTimestamp()J

    move-result-wide v7

    invoke-virtual {p2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getTimestamp()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_8e

    .line 2111
    const/16 v6, 0x100

    goto :goto_9a

    .line 2112
    :cond_8e
    invoke-virtual {v4}, Lcom/samsung/android/content/clipboard/data/SemClipData;->isProtected()Z

    move-result v7

    invoke-virtual {p2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->isProtected()Z

    move-result v8

    if-eq v7, v8, :cond_9a

    .line 2113
    const/16 v6, 0x10

    .line 2116
    :cond_9a
    :goto_9a
    invoke-direct {p0, v6, p2}, Lcom/android/server/semclipboard/SemClipboardService;->notifyListChange(ILcom/samsung/android/content/clipboard/data/SemClipData;)V

    .line 2119
    .end local v6    # "updateType":I
    :cond_9d
    return v1

    .line 2100
    .end local v1    # "result":Z
    :cond_9e
    :goto_9e
    return v1
.end method

.method public updateDialogShowingState(Z)V
    .registers 2
    .param p1, "isShowing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1552
    iput-boolean p1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mIsDialogShowing:Z

    .line 1553
    return-void
.end method

.method public updateFilter(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "clPasteEvent"    # Landroid/sec/clipboard/IClipboardDataPasteEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1575
    iput p1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mEnableFormatId:I

    .line 1576
    iput-object p2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .line 1577
    invoke-direct {p0, p1}, Lcom/android/server/semclipboard/SemClipboardService;->notifyFilterUpdated(I)V

    .line 1579
    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1580
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1581
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1584
    :cond_18
    iget-boolean v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mIsPluginShowing:Z

    if-eqz v0, :cond_23

    if-eqz p1, :cond_23

    .line 1585
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/semclipboard/SemClipboardService;->notifyListChange(ILcom/samsung/android/content/clipboard/data/SemClipData;)V

    .line 1587
    :cond_23
    return-void
.end method

.method public updateFilterWithInputType(IILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "inputType"    # I
    .param p3, "clPasteEvent"    # Landroid/sec/clipboard/IClipboardDataPasteEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1594
    iput p1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mEnableFormatId:I

    .line 1595
    iput-object p3, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .line 1596
    shl-int/lit8 p2, p2, 0x8

    .line 1597
    or-int/2addr p1, p2

    .line 1598
    invoke-direct {p0, p1}, Lcom/android/server/semclipboard/SemClipboardService;->notifyFilterUpdated(I)V

    .line 1600
    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1601
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1602
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1605
    :cond_1b
    iget-boolean v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mIsPluginShowing:Z

    if-eqz v0, :cond_26

    if-eqz p1, :cond_26

    .line 1606
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/semclipboard/SemClipboardService;->notifyListChange(ILcom/samsung/android/content/clipboard/data/SemClipData;)V

    .line 1608
    :cond_26
    return-void
.end method

.method public updatePluginShowingState(Z)V
    .registers 2
    .param p1, "isShowing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1557
    iput-boolean p1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mIsPluginShowing:Z

    .line 1558
    return-void
.end method
