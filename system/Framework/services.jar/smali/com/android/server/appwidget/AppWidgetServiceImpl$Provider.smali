.class final Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Provider"
.end annotation


# instance fields
.field broadcast:Landroid/app/PendingIntent;

.field id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

.field info:Landroid/appwidget/AppWidgetProviderInfo;

.field infoTag:Ljava/lang/String;

.field maskedByLockedProfile:Z

.field maskedByQuietProfile:Z

.field maskedBySuperLocked:Z

.field maskedBySuspendedPackage:Z

.field tag:I

.field widgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;",
            ">;"
        }
    .end annotation
.end field

.field zombie:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 4844
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4847
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    .line 4859
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$1;

    .line 4844
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserId()I
    .registers 2

    .line 4862
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public hostedByPackageForUser(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4872
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4873
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_2a

    .line 4874
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 4875
    .local v2, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 4876
    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v3

    if-ne v3, p2, :cond_27

    .line 4877
    const/4 v3, 0x1

    return v3

    .line 4873
    .end local v2    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4880
    .end local v1    # "i":I
    :cond_2a
    const/4 v1, 0x0

    return v1
.end method

.method public isInPackageForUser(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4866
    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v0

    if-ne v0, p2, :cond_16

    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 4867
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 4866
    :goto_17
    return v0
.end method

.method public isMaskedLocked()Z
    .registers 2

    .line 4919
    iget-boolean v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedByQuietProfile:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedByLockedProfile:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedBySuspendedPackage:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedBySuperLocked:Z

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public semIsHidden(Landroid/content/pm/PackageManager;I)Z
    .registers 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "userId"    # I

    .line 4928
    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v0

    if-ne v0, p2, :cond_16

    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 4929
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->isHidden(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 4928
    :goto_17
    return v0
.end method

.method public setMaskedByLockedProfileLocked(Z)Z
    .registers 4
    .param p1, "masked"    # Z

    .line 4897
    iget-boolean v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedByLockedProfile:Z

    .line 4898
    .local v0, "oldState":Z
    iput-boolean p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedByLockedProfile:Z

    .line 4899
    if-eq p1, v0, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public setMaskedByQuietProfileLocked(Z)Z
    .registers 4
    .param p1, "masked"    # Z

    .line 4890
    iget-boolean v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedByQuietProfile:Z

    .line 4891
    .local v0, "oldState":Z
    iput-boolean p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedByQuietProfile:Z

    .line 4892
    if-eq p1, v0, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public setMaskedBySuperProfileLocked(Z)Z
    .registers 4
    .param p1, "masked"    # Z

    .line 4912
    iget-boolean v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedBySuperLocked:Z

    .line 4913
    .local v0, "oldState":Z
    iput-boolean p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedBySuperLocked:Z

    .line 4914
    if-eq p1, v0, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public setMaskedBySuspendedPackageLocked(Z)Z
    .registers 4
    .param p1, "masked"    # Z

    .line 4904
    iget-boolean v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedBySuspendedPackage:Z

    .line 4905
    .local v0, "oldState":Z
    iput-boolean p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedBySuspendedPackage:Z

    .line 4906
    if-eq p1, v0, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public shouldBePersisted()Z
    .registers 2

    .line 4923
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 4885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Provider{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-eqz v1, :cond_16

    const-string v1, " Z"

    goto :goto_18

    :cond_16
    const-string v1, ""

    :goto_18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
