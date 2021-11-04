.class public final synthetic Lcom/android/server/-$$Lambda$SystemServer$w0Iznhm34hS4F2mVrwsPt2YnJW8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/-$$Lambda$SystemServer$w0Iznhm34hS4F2mVrwsPt2YnJW8;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/-$$Lambda$SystemServer$w0Iznhm34hS4F2mVrwsPt2YnJW8;

    invoke-direct {v0}, Lcom/android/server/-$$Lambda$SystemServer$w0Iznhm34hS4F2mVrwsPt2YnJW8;-><init>()V

    sput-object v0, Lcom/android/server/-$$Lambda$SystemServer$w0Iznhm34hS4F2mVrwsPt2YnJW8;->INSTANCE:Lcom/android/server/-$$Lambda$SystemServer$w0Iznhm34hS4F2mVrwsPt2YnJW8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onModuleServiceConnected(Landroid/os/IBinder;)V
    .registers 2

    invoke-static {p1}, Lcom/android/server/SystemServer;->lambda$startOtherServices$6(Landroid/os/IBinder;)V

    return-void
.end method
