.class Lcom/android/server/SystemServer$4;
.super Ljava/lang/Object;
.source "SystemServer.java"

# interfaces
.implements Landroid/os/IServiceCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/SystemServer;->startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SystemServer;


# direct methods
.method constructor <init>(Lcom/android/server/SystemServer;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/SystemServer;

    .line 2214
    iput-object p1, p0, Lcom/android/server/SystemServer$4;->this$0:Lcom/android/server/SystemServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/content/Context;)Landroid/os/IBinder;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 2217
    new-instance v0, Lcom/android/server/DirEncryptService;

    invoke-direct {v0, p1}, Lcom/android/server/DirEncryptService;-><init>(Landroid/content/Context;)V

    .line 2218
    .local v0, "dEncService":Lcom/android/server/DirEncryptService;
    nop

    .line 2219
    const-string v1, "SystemServer"

    const-string v2, "DirEncryptService.SystemReady"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2220
    invoke-virtual {v0}, Lcom/android/server/DirEncryptService;->systemReady()V

    .line 2222
    return-object v0
.end method
