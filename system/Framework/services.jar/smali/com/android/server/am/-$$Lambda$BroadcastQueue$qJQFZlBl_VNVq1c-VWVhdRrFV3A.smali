.class public final synthetic Lcom/android/server/am/-$$Lambda$BroadcastQueue$qJQFZlBl_VNVq1c-VWVhdRrFV3A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BroadcastQueue;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/os/DropBoxManager;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BroadcastQueue;Ljava/lang/String;Landroid/os/DropBoxManager;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$BroadcastQueue$qJQFZlBl_VNVq1c-VWVhdRrFV3A;->f$0:Lcom/android/server/am/BroadcastQueue;

    iput-object p2, p0, Lcom/android/server/am/-$$Lambda$BroadcastQueue$qJQFZlBl_VNVq1c-VWVhdRrFV3A;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/am/-$$Lambda$BroadcastQueue$qJQFZlBl_VNVq1c-VWVhdRrFV3A;->f$2:Landroid/os/DropBoxManager;

    iput-object p4, p0, Lcom/android/server/am/-$$Lambda$BroadcastQueue$qJQFZlBl_VNVq1c-VWVhdRrFV3A;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$BroadcastQueue$qJQFZlBl_VNVq1c-VWVhdRrFV3A;->f$0:Lcom/android/server/am/BroadcastQueue;

    iget-object v1, p0, Lcom/android/server/am/-$$Lambda$BroadcastQueue$qJQFZlBl_VNVq1c-VWVhdRrFV3A;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/-$$Lambda$BroadcastQueue$qJQFZlBl_VNVq1c-VWVhdRrFV3A;->f$2:Landroid/os/DropBoxManager;

    iget-object v3, p0, Lcom/android/server/am/-$$Lambda$BroadcastQueue$qJQFZlBl_VNVq1c-VWVhdRrFV3A;->f$3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/BroadcastQueue;->lambda$addDelayedBrToDropBox$2$BroadcastQueue(Ljava/lang/String;Landroid/os/DropBoxManager;Ljava/lang/String;)V

    return-void
.end method
