.class Lcom/android/server/privilege/PrivilegeVirtualDisplay;
.super Ljava/lang/Object;
.source "PrivilegeVirtualDisplay.java"

# interfaces
.implements Lcom/android/server/privilege/IPrivilegeOperation;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLocalPowerManager:Landroid/os/PowerManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 9
    const-class v0, Lcom/android/server/privilege/PrivilegeVirtualDisplay;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/privilege/PrivilegeVirtualDisplay;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/android/server/privilege/PrivilegeVirtualDisplay;->mContext:Landroid/content/Context;

    .line 15
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/privilege/PrivilegeVirtualDisplay;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 16
    return-void
.end method


# virtual methods
.method public request()V
    .registers 3

    .line 23
    sget-object v0, Lcom/android/server/privilege/PrivilegeVirtualDisplay;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "request virtual display"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iget-object v0, p0, Lcom/android/server/privilege/PrivilegeVirtualDisplay;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->setHbmBlock(Z)V

    .line 25
    return-void
.end method

.method public stop()V
    .registers 3

    .line 29
    sget-object v0, Lcom/android/server/privilege/PrivilegeVirtualDisplay;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stop virtual display"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object v0, p0, Lcom/android/server/privilege/PrivilegeVirtualDisplay;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->setHbmBlock(Z)V

    .line 31
    return-void
.end method
