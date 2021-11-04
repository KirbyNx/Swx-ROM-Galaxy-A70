.class Lcom/android/server/HeimdAllFsService$1;
.super Ljava/lang/Object;
.source "HeimdAllFsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/HeimdAllFsService;->connectInstalld()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/HeimdAllFsService;


# direct methods
.method constructor <init>(Lcom/android/server/HeimdAllFsService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/HeimdAllFsService;

    .line 273
    iput-object p1, p0, Lcom/android/server/HeimdAllFsService$1;->this$0:Lcom/android/server/HeimdAllFsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 276
    const-string v0, "HeimdAllFS"

    const-string/jumbo v1, "installd died; reconnecting"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Lcom/android/server/HeimdAllFsService$1;->this$0:Lcom/android/server/HeimdAllFsService;

    # invokes: Lcom/android/server/HeimdAllFsService;->connectInstalld()V
    invoke-static {v0}, Lcom/android/server/HeimdAllFsService;->access$000(Lcom/android/server/HeimdAllFsService;)V

    .line 278
    return-void
.end method
