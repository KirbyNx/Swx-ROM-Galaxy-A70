.class Lcom/android/server/oemlock/OemLockService$2;
.super Landroid/service/oemlock/IOemLockService$Stub;
.source "OemLockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/oemlock/OemLockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/oemlock/OemLockService;


# direct methods
.method constructor <init>(Lcom/android/server/oemlock/OemLockService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/oemlock/OemLockService;

    .line 114
    iput-object p1, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-direct {p0}, Landroid/service/oemlock/IOemLockService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getLockName()Ljava/lang/String;
    .registers 4

    .line 118
    iget-object v0, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    # invokes: Lcom/android/server/oemlock/OemLockService;->enforceManageCarrierOemUnlockPermission()V
    invoke-static {v0}, Lcom/android/server/oemlock/OemLockService;->access$200(Lcom/android/server/oemlock/OemLockService;)V

    .line 120
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 122
    .local v0, "token":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    # getter for: Lcom/android/server/oemlock/OemLockService;->mOemLock:Lcom/android/server/oemlock/OemLock;
    invoke-static {v2}, Lcom/android/server/oemlock/OemLockService;->access$000(Lcom/android/server/oemlock/OemLockService;)Lcom/android/server/oemlock/OemLock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/oemlock/OemLock;->getLockName()Ljava/lang/String;

    move-result-object v2
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_17

    .line 124
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 122
    return-object v2

    .line 124
    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 125
    throw v2
.end method

.method public isDeviceOemUnlocked()Z
    .registers 5

    .line 216
    iget-object v0, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    # invokes: Lcom/android/server/oemlock/OemLockService;->enforceOemUnlockReadPermission()V
    invoke-static {v0}, Lcom/android/server/oemlock/OemLockService;->access$600(Lcom/android/server/oemlock/OemLockService;)V

    .line 218
    const-string/jumbo v0, "ro.boot.flash.locked"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "locked":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x30

    if-eq v1, v3, :cond_16

    :cond_15
    goto :goto_20

    :cond_16
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    move v1, v2

    goto :goto_21

    :goto_20
    const/4 v1, -0x1

    :goto_21
    if-eqz v1, :cond_24

    .line 223
    return v2

    .line 221
    :cond_24
    const/4 v1, 0x1

    return v1
.end method

.method public isOemUnlockAllowed()Z
    .registers 5

    .line 201
    iget-object v0, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    # invokes: Lcom/android/server/oemlock/OemLockService;->enforceOemUnlockReadPermission()V
    invoke-static {v0}, Lcom/android/server/oemlock/OemLockService;->access$600(Lcom/android/server/oemlock/OemLockService;)V

    .line 203
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 205
    .local v0, "token":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    # getter for: Lcom/android/server/oemlock/OemLockService;->mOemLock:Lcom/android/server/oemlock/OemLock;
    invoke-static {v2}, Lcom/android/server/oemlock/OemLockService;->access$000(Lcom/android/server/oemlock/OemLockService;)Lcom/android/server/oemlock/OemLock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/oemlock/OemLock;->isOemUnlockAllowedByCarrier()Z

    move-result v2

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    .line 206
    # getter for: Lcom/android/server/oemlock/OemLockService;->mOemLock:Lcom/android/server/oemlock/OemLock;
    invoke-static {v2}, Lcom/android/server/oemlock/OemLockService;->access$000(Lcom/android/server/oemlock/OemLockService;)Lcom/android/server/oemlock/OemLock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/oemlock/OemLock;->isOemUnlockAllowedByDevice()Z

    move-result v2

    if-eqz v2, :cond_23

    const/4 v2, 0x1

    goto :goto_24

    :cond_23
    const/4 v2, 0x0

    .line 207
    .local v2, "allowed":Z
    :goto_24
    iget-object v3, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    # invokes: Lcom/android/server/oemlock/OemLockService;->setPersistentDataBlockOemUnlockAllowedBit(Z)V
    invoke-static {v3, v2}, Lcom/android/server/oemlock/OemLockService;->access$100(Lcom/android/server/oemlock/OemLockService;Z)V
    :try_end_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_2e

    .line 208
    nop

    .line 210
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 208
    return v2

    .line 210
    .end local v2    # "allowed":Z
    :catchall_2e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 211
    throw v2
.end method

.method public isOemUnlockAllowedByCarrier()Z
    .registers 4

    .line 143
    iget-object v0, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    # invokes: Lcom/android/server/oemlock/OemLockService;->enforceManageCarrierOemUnlockPermission()V
    invoke-static {v0}, Lcom/android/server/oemlock/OemLockService;->access$200(Lcom/android/server/oemlock/OemLockService;)V

    .line 145
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 147
    .local v0, "token":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    # getter for: Lcom/android/server/oemlock/OemLockService;->mOemLock:Lcom/android/server/oemlock/OemLock;
    invoke-static {v2}, Lcom/android/server/oemlock/OemLockService;->access$000(Lcom/android/server/oemlock/OemLockService;)Lcom/android/server/oemlock/OemLock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/oemlock/OemLock;->isOemUnlockAllowedByCarrier()Z

    move-result v2
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_17

    .line 149
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 147
    return v2

    .line 149
    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 150
    throw v2
.end method

.method public isOemUnlockAllowedByUser()Z
    .registers 4

    .line 184
    iget-object v0, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    # invokes: Lcom/android/server/oemlock/OemLockService;->enforceManageUserOemUnlockPermission()V
    invoke-static {v0}, Lcom/android/server/oemlock/OemLockService;->access$400(Lcom/android/server/oemlock/OemLockService;)V

    .line 186
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 188
    .local v0, "token":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    # getter for: Lcom/android/server/oemlock/OemLockService;->mOemLock:Lcom/android/server/oemlock/OemLock;
    invoke-static {v2}, Lcom/android/server/oemlock/OemLockService;->access$000(Lcom/android/server/oemlock/OemLockService;)Lcom/android/server/oemlock/OemLock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/oemlock/OemLock;->isOemUnlockAllowedByDevice()Z

    move-result v2
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_17

    .line 190
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 188
    return v2

    .line 190
    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 191
    throw v2
.end method

.method public setOemUnlockAllowedByCarrier(Z[B)V
    .registers 6
    .param p1, "allowed"    # Z
    .param p2, "signature"    # [B

    .line 130
    iget-object v0, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    # invokes: Lcom/android/server/oemlock/OemLockService;->enforceManageCarrierOemUnlockPermission()V
    invoke-static {v0}, Lcom/android/server/oemlock/OemLockService;->access$200(Lcom/android/server/oemlock/OemLockService;)V

    .line 131
    iget-object v0, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    # invokes: Lcom/android/server/oemlock/OemLockService;->enforceUserIsAdmin()V
    invoke-static {v0}, Lcom/android/server/oemlock/OemLockService;->access$300(Lcom/android/server/oemlock/OemLockService;)V

    .line 133
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 135
    .local v0, "token":J
    :try_start_e
    iget-object v2, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    # getter for: Lcom/android/server/oemlock/OemLockService;->mOemLock:Lcom/android/server/oemlock/OemLock;
    invoke-static {v2}, Lcom/android/server/oemlock/OemLockService;->access$000(Lcom/android/server/oemlock/OemLockService;)Lcom/android/server/oemlock/OemLock;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/oemlock/OemLock;->setOemUnlockAllowedByCarrier(Z[B)V
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_1c

    .line 137
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 138
    nop

    .line 139
    return-void

    .line 137
    :catchall_1c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 138
    throw v2
.end method

.method public setOemUnlockAllowedByUser(Z)V
    .registers 6
    .param p1, "allowedByUser"    # Z

    .line 157
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 159
    return-void

    .line 162
    :cond_7
    iget-object v0, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    # invokes: Lcom/android/server/oemlock/OemLockService;->enforceManageUserOemUnlockPermission()V
    invoke-static {v0}, Lcom/android/server/oemlock/OemLockService;->access$400(Lcom/android/server/oemlock/OemLockService;)V

    .line 163
    iget-object v0, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    # invokes: Lcom/android/server/oemlock/OemLockService;->enforceUserIsAdmin()V
    invoke-static {v0}, Lcom/android/server/oemlock/OemLockService;->access$300(Lcom/android/server/oemlock/OemLockService;)V

    .line 165
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 167
    .local v0, "token":J
    :try_start_15
    iget-object v2, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    # invokes: Lcom/android/server/oemlock/OemLockService;->isOemUnlockAllowedByAdmin()Z
    invoke-static {v2}, Lcom/android/server/oemlock/OemLockService;->access$500(Lcom/android/server/oemlock/OemLockService;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 171
    iget-object v2, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    # getter for: Lcom/android/server/oemlock/OemLockService;->mOemLock:Lcom/android/server/oemlock/OemLock;
    invoke-static {v2}, Lcom/android/server/oemlock/OemLockService;->access$000(Lcom/android/server/oemlock/OemLockService;)Lcom/android/server/oemlock/OemLock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/oemlock/OemLock;->isOemUnlockAllowedByCarrier()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 175
    iget-object v2, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    # getter for: Lcom/android/server/oemlock/OemLockService;->mOemLock:Lcom/android/server/oemlock/OemLock;
    invoke-static {v2}, Lcom/android/server/oemlock/OemLockService;->access$000(Lcom/android/server/oemlock/OemLockService;)Lcom/android/server/oemlock/OemLock;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/oemlock/OemLock;->setOemUnlockAllowedByDevice(Z)V

    .line 176
    iget-object v2, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    # invokes: Lcom/android/server/oemlock/OemLockService;->setPersistentDataBlockOemUnlockAllowedBit(Z)V
    invoke-static {v2, p1}, Lcom/android/server/oemlock/OemLockService;->access$100(Lcom/android/server/oemlock/OemLockService;Z)V
    :try_end_37
    .catchall {:try_start_15 .. :try_end_37} :catchall_4c

    .line 178
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 179
    nop

    .line 180
    return-void

    .line 172
    :cond_3c
    :try_start_3c
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Carrier does not allow OEM unlock"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/oemlock/OemLockService$2;
    .end local p1    # "allowedByUser":Z
    throw v2

    .line 168
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/oemlock/OemLockService$2;
    .restart local p1    # "allowedByUser":Z
    :cond_44
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Admin does not allow OEM unlock"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/oemlock/OemLockService$2;
    .end local p1    # "allowedByUser":Z
    throw v2
    :try_end_4c
    .catchall {:try_start_3c .. :try_end_4c} :catchall_4c

    .line 178
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/oemlock/OemLockService$2;
    .restart local p1    # "allowedByUser":Z
    :catchall_4c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 179
    throw v2
.end method
