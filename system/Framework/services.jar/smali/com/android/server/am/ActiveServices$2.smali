.class Lcom/android/server/am/ActiveServices$2;
.super Ljava/lang/Object;
.source "ActiveServices.java"

# interfaces
.implements Landroid/os/PowerManager$OnThermalStatusChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActiveServices;->systemServicesReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActiveServices;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActiveServices;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/ActiveServices;

    .line 486
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$2;->this$0:Lcom/android/server/am/ActiveServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThermalStatusChanged(I)V
    .registers 4
    .param p1, "status"    # I

    .line 489
    const/4 v0, 0x5

    if-lt p1, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    .line 490
    .local v0, "shouldBeCooldown":Z
    :goto_6
    iget-object v1, p0, Lcom/android/server/am/ActiveServices$2;->this$0:Lcom/android/server/am/ActiveServices;

    # getter for: Lcom/android/server/am/ActiveServices;->mIsThermalRestricted:Z
    invoke-static {v1}, Lcom/android/server/am/ActiveServices;->access$200(Lcom/android/server/am/ActiveServices;)Z

    move-result v1

    if-ne v1, v0, :cond_f

    .line 491
    return-void

    .line 493
    :cond_f
    iget-object v1, p0, Lcom/android/server/am/ActiveServices$2;->this$0:Lcom/android/server/am/ActiveServices;

    # setter for: Lcom/android/server/am/ActiveServices;->mIsThermalRestricted:Z
    invoke-static {v1, v0}, Lcom/android/server/am/ActiveServices;->access$202(Lcom/android/server/am/ActiveServices;Z)Z

    .line 494
    return-void
.end method
