.class Lcom/android/server/ibs/SARR/SmartAdaptRRManager$SARRManagerHanlder;
.super Landroid/os/Handler;
.source "SmartAdaptRRManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/SARR/SmartAdaptRRManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SARRManagerHanlder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ibs/SARR/SmartAdaptRRManager;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/SARR/SmartAdaptRRManager;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 67
    iput-object p1, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRManager$SARRManagerHanlder;->this$0:Lcom/android/server/ibs/SARR/SmartAdaptRRManager;

    .line 68
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 69
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 73
    iget v0, p1, Landroid/os/Message;->what:I

    .line 77
    return-void
.end method
