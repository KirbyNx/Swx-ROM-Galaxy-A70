.class public Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
.super Ljava/lang/Object;
.source "PermissionManagerServiceInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGidsChanged(II)V
    .registers 3
    .param p1, "appId"    # I
    .param p2, "userId"    # I

    .line 160
    return-void
.end method

.method public onInstallPermissionGranted()V
    .registers 1

    .line 166
    return-void
.end method

.method public onInstallPermissionRevoked()V
    .registers 1

    .line 170
    return-void
.end method

.method public onInstallPermissionUpdated()V
    .registers 1

    .line 180
    return-void
.end method

.method public onInstallPermissionUpdatedNotifyListener(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 182
    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onInstallPermissionUpdated()V

    .line 183
    return-void
.end method

.method public onPermissionChanged()V
    .registers 1

    .line 162
    return-void
.end method

.method public onPermissionGranted(II)V
    .registers 3
    .param p1, "uid"    # I
    .param p2, "userId"    # I

    .line 164
    return-void
.end method

.method public onPermissionRemoved()V
    .registers 1

    .line 178
    return-void
.end method

.method public onPermissionRevoked(IILjava/lang/String;)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "userId"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 168
    return-void
.end method

.method public onPermissionUpdated([IZ)V
    .registers 3
    .param p1, "updatedUserIds"    # [I
    .param p2, "sync"    # Z

    .line 172
    return-void
.end method

.method public onPermissionUpdatedNotifyListener([IZI)V
    .registers 4
    .param p1, "updatedUserIds"    # [I
    .param p2, "sync"    # Z
    .param p3, "uid"    # I

    .line 175
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onPermissionUpdated([IZ)V

    .line 176
    return-void
.end method
