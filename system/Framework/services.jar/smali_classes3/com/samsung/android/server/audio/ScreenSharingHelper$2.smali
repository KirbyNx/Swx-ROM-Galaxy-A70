.class Lcom/samsung/android/server/audio/ScreenSharingHelper$2;
.super Lcom/samsung/android/server/audio/FrequentWorker;
.source "ScreenSharingHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/audio/ScreenSharingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/server/audio/FrequentWorker<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/audio/ScreenSharingHelper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/android/server/audio/ScreenSharingHelper;

    .line 97
    iput-object p1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$2;->this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    invoke-direct {p0}, Lcom/samsung/android/server/audio/FrequentWorker;-><init>()V

    .line 99
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$2;->mPeriodMs:I

    .line 100
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$2;->mCachedValue:Ljava/lang/Object;

    .line 101
    return-void
.end method


# virtual methods
.method public func()Ljava/lang/Boolean;
    .registers 4

    .line 105
    iget-object v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$2;->this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    # getter for: Lcom/samsung/android/server/audio/ScreenSharingHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;
    invoke-static {v0}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->access$300(Lcom/samsung/android/server/audio/ScreenSharingHelper;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetActiveDlnaDevice()Landroid/hardware/display/SemDlnaDevice;

    move-result-object v0

    .line 106
    .local v0, "semDlnaDevice":Landroid/hardware/display/SemDlnaDevice;
    const/4 v1, -0x1

    .line 107
    .local v1, "type":I
    if-eqz v0, :cond_11

    .line 108
    invoke-virtual {v0}, Landroid/hardware/display/SemDlnaDevice;->getDlnaType()I

    move-result v1

    .line 111
    :cond_11
    iget-object v2, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$2;->this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    # getter for: Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsDLNAEnabled:Z
    invoke-static {v2}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->access$400(Lcom/samsung/android/server/audio/ScreenSharingHelper;)Z

    move-result v2

    if-eqz v2, :cond_23

    if-eqz v1, :cond_21

    const/4 v2, 0x2

    if-eq v1, v2, :cond_21

    const/4 v2, 0x3

    if-ne v1, v2, :cond_23

    :cond_21
    const/4 v2, 0x1

    goto :goto_24

    :cond_23
    const/4 v2, 0x0

    :goto_24
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic func()Ljava/lang/Object;
    .registers 2

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/ScreenSharingHelper$2;->func()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
