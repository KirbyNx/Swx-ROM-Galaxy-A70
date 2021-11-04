.class public final synthetic Lcom/android/server/wm/-$$Lambda$LockTaskController$MxqYK1R8Veisr1Kl8t6RGlcHYC8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/LockTaskController;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$2:Lcom/android/server/wm/Task;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/LockTaskController;Landroid/content/Intent;Lcom/android/server/wm/Task;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$LockTaskController$MxqYK1R8Veisr1Kl8t6RGlcHYC8;->f$0:Lcom/android/server/wm/LockTaskController;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$LockTaskController$MxqYK1R8Veisr1Kl8t6RGlcHYC8;->f$1:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/server/wm/-$$Lambda$LockTaskController$MxqYK1R8Veisr1Kl8t6RGlcHYC8;->f$2:Lcom/android/server/wm/Task;

    iput p4, p0, Lcom/android/server/wm/-$$Lambda$LockTaskController$MxqYK1R8Veisr1Kl8t6RGlcHYC8;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$LockTaskController$MxqYK1R8Veisr1Kl8t6RGlcHYC8;->f$0:Lcom/android/server/wm/LockTaskController;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$LockTaskController$MxqYK1R8Veisr1Kl8t6RGlcHYC8;->f$1:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/wm/-$$Lambda$LockTaskController$MxqYK1R8Veisr1Kl8t6RGlcHYC8;->f$2:Lcom/android/server/wm/Task;

    iget v3, p0, Lcom/android/server/wm/-$$Lambda$LockTaskController$MxqYK1R8Veisr1Kl8t6RGlcHYC8;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/LockTaskController;->lambda$setLockTaskMode$2$LockTaskController(Landroid/content/Intent;Lcom/android/server/wm/Task;I)V

    return-void
.end method
