.class Lcom/android/server/ipm/chimera/SystemRepositoryDefault$1;
.super Ljava/lang/Object;
.source "SystemRepositoryDefault.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->getDeviceIdleController()Landroid/os/IDeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ipm/chimera/SystemRepositoryDefault;


# direct methods
.method constructor <init>(Lcom/android/server/ipm/chimera/SystemRepositoryDefault;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ipm/chimera/SystemRepositoryDefault;

    .line 275
    iput-object p1, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault$1;->this$0:Lcom/android/server/ipm/chimera/SystemRepositoryDefault;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 278
    iget-object v0, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault$1;->this$0:Lcom/android/server/ipm/chimera/SystemRepositoryDefault;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 279
    return-void
.end method
