.class Lcom/android/server/SpqrService$1;
.super Ljava/lang/Object;
.source "SpqrService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/SpqrService;->findSpqrNativeService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SpqrService;


# direct methods
.method constructor <init>(Lcom/android/server/SpqrService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/SpqrService;

    .line 43
    iput-object p1, p0, Lcom/android/server/SpqrService$1;->this$0:Lcom/android/server/SpqrService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 46
    iget-object v0, p0, Lcom/android/server/SpqrService$1;->this$0:Lcom/android/server/SpqrService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/SpqrService;->mService:Landroid/os/ISpqrService;
    invoke-static {v0, v1}, Lcom/android/server/SpqrService;->access$002(Lcom/android/server/SpqrService;Landroid/os/ISpqrService;)Landroid/os/ISpqrService;

    .line 47
    const-string v0, "SpqrService"

    const-string v1, "SPQR native service died; reconnecting"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v0, p0, Lcom/android/server/SpqrService$1;->this$0:Lcom/android/server/SpqrService;

    # invokes: Lcom/android/server/SpqrService;->findSpqrNativeService()V
    invoke-static {v0}, Lcom/android/server/SpqrService;->access$100(Lcom/android/server/SpqrService;)V

    .line 49
    return-void
.end method
