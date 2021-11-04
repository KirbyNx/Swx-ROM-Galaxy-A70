.class Lcom/android/server/wm/SmartPopupViewServiceBinder;
.super Lcom/android/server/wm/BubbleContainerServiceBinder;
.source "SmartPopupViewServiceBinder.java"


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 4
    .param p1, "atm"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 32
    invoke-direct {p0, p1}, Lcom/android/server/wm/BubbleContainerServiceBinder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 33
    const-string v0, "com.android.systemui"

    const-string v1, "com.samsung.android.systemui.minimizecontainer.SmartPopupViewService"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/SmartPopupViewServiceBinder;->setServiceComponent(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method private hasSmartPopupViewPackage()Z
    .registers 3

    .line 54
    iget-object v0, p0, Lcom/android/server/wm/SmartPopupViewServiceBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowUtils$SmartPopupViewUtil;->getPackageStrListFromDB(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 56
    .local v0, "smartPopupViewPackageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_12

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method private isSmartPopupViewOn()Z
    .registers 4

    .line 60
    iget-object v0, p0, Lcom/android/server/wm/SmartPopupViewServiceBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "notification_bubbles"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    const/4 v2, 0x1

    :cond_14
    return v2
.end method


# virtual methods
.method protected okToBind()Z
    .registers 2

    .line 40
    invoke-super {p0}, Lcom/android/server/wm/BubbleContainerServiceBinder;->okToBind()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0}, Lcom/android/server/wm/SmartPopupViewServiceBinder;->hasSmartPopupViewPackage()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0}, Lcom/android/server/wm/SmartPopupViewServiceBinder;->isSmartPopupViewOn()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method protected okToUnbind()Z
    .registers 2

    .line 48
    invoke-super {p0}, Lcom/android/server/wm/BubbleContainerServiceBinder;->okToUnbind()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-direct {p0}, Lcom/android/server/wm/SmartPopupViewServiceBinder;->hasSmartPopupViewPackage()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-direct {p0}, Lcom/android/server/wm/SmartPopupViewServiceBinder;->isSmartPopupViewOn()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method
