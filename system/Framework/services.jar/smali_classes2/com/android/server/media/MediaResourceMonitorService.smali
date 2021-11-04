.class public Lcom/android/server/media/MediaResourceMonitorService;
.super Lcom/android/server/SystemService;
.source "MediaResourceMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final INTENT_ACTION_CF_SINGLE:Ljava/lang/String; = "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

.field public static final INTENT_ACTION_DMA_SINGLE:Ljava/lang/String; = "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

.field public static final INTENT_DMA_PACKAGE:Ljava/lang/String; = "com.sec.android.diagmonagent"

.field public static final MMFW_ERROR_LOGGING_FEATURE:Ljava/lang/String; = "MMER"

.field public static final MMFW_LOGGING_APP_ID:Ljava/lang/String; = "MMFW"

.field public static final MMFW_LOGGING_TRACKING_ID:Ljava/lang/String; = "4H9-399-505457"

.field public static final MMFW_LOGGING_TYPE:Ljava/lang/String; = "ev"

.field private static final SERVICE_NAME:Ljava/lang/String; = "media_resource_monitor"

.field private static final TAG:Ljava/lang/String; = "MediaResourceMonitor"

.field private static final mServiceEnabled:Z


# instance fields
.field private final CUSTOM_DIMENSION_PACKAGE_KEY:Ljava/lang/String;

.field private final mMediaResourceMonitorImpl:Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 59
    const-string v0, "MediaResourceMonitor"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/MediaResourceMonitorService;->DEBUG:Z

    .line 64
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/MediaResourceMonitorService;->mServiceEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 80
    const-string v0, "1003"

    iput-object v0, p0, Lcom/android/server/media/MediaResourceMonitorService;->CUSTOM_DIMENSION_PACKAGE_KEY:Ljava/lang/String;

    .line 87
    new-instance v0, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;

    invoke-direct {v0, p0}, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;-><init>(Lcom/android/server/media/MediaResourceMonitorService;)V

    iput-object v0, p0, Lcom/android/server/media/MediaResourceMonitorService;->mMediaResourceMonitorImpl:Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/media/MediaResourceMonitorService;)Landroid/content/pm/PackageManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaResourceMonitorService;

    .line 57
    iget-object v0, p0, Lcom/android/server/media/MediaResourceMonitorService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/media/MediaResourceMonitorService;Landroid/content/pm/PackageManager;)Landroid/content/pm/PackageManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaResourceMonitorService;
    .param p1, "x1"    # Landroid/content/pm/PackageManager;

    .line 57
    iput-object p1, p0, Lcom/android/server/media/MediaResourceMonitorService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p1
.end method

.method static synthetic access$100()Z
    .registers 1

    .line 57
    sget-boolean v0, Lcom/android/server/media/MediaResourceMonitorService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200()Z
    .registers 1

    .line 57
    sget-boolean v0, Lcom/android/server/media/MediaResourceMonitorService;->mServiceEnabled:Z

    return v0
.end method


# virtual methods
.method public onStart()V
    .registers 3

    .line 92
    iget-object v0, p0, Lcom/android/server/media/MediaResourceMonitorService;->mMediaResourceMonitorImpl:Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;

    const-string/jumbo v1, "media_resource_monitor"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/media/MediaResourceMonitorService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 93
    return-void
.end method
