.class Lcom/android/server/ipm/AufHitCalculation$ObserverHandler;
.super Landroid/os/Handler;
.source "AufPeriodic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/AufHitCalculation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObserverHandler"
.end annotation


# static fields
.field public static final ACTION_CALCULATE_HIT:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/ipm/AufHitCalculation;


# direct methods
.method public constructor <init>(Lcom/android/server/ipm/AufHitCalculation;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 370
    iput-object p1, p0, Lcom/android/server/ipm/AufHitCalculation$ObserverHandler;->this$0:Lcom/android/server/ipm/AufHitCalculation;

    .line 371
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 372
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 378
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_12

    .line 381
    :cond_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 382
    .local v0, "pkgName":Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 383
    .local v1, "pkgUid":I
    iget-object v2, p0, Lcom/android/server/ipm/AufHitCalculation$ObserverHandler;->this$0:Lcom/android/server/ipm/AufHitCalculation;

    # invokes: Lcom/android/server/ipm/AufHitCalculation;->calculateHitCount(Ljava/lang/String;I)V
    invoke-static {v2, v0, v1}, Lcom/android/server/ipm/AufHitCalculation;->access$000(Lcom/android/server/ipm/AufHitCalculation;Ljava/lang/String;I)V

    .line 384
    nop

    .line 388
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v1    # "pkgUid":I
    :goto_12
    return-void
.end method
