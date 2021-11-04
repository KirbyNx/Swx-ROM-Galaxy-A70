.class public final Lcom/android/server/VaultKeeperService;
.super Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Stub;
.source "VaultKeeperService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/VaultKeeperService$LifeCycle;
    }
.end annotation


# static fields
.field private static final ANDROID_SYSTEM_SERVER:Ljava/lang/String; = "system_server"

.field private static final ANDROID_UID_SHELL:I = 0x7d0

.field private static final ANDROID_UID_SYSTEM:I = 0x3e8

.field private static final HMAC_SHA256_LEN:I = 0x20

.field private static final MESSAGE_ACQUIRE_WAKELOCK:I = 0x1

.field private static final MESSAGE_RELEASE_WAKELOCK:I = 0x2

.field private static final SERVICE_NOT_SUPPORT:I = 0x0

.field private static final SERVICE_SUPPORT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VaultKeeperService"

.field private static final TYPE_COMMERCIAL_DEVICE:I = 0x6

.field private static final TYPE_EMT:I = 0x3

.field private static final TYPE_MAX:I = 0x9

.field private static final TYPE_MIN:I = 0x1

.field private static final TYPE_NONCE:I = 0x1

.field private static final TYPE_VAULT_DATA_MAX:I = 0x2

.field private static final TYPE_VAULT_DATA_MIN:I = 0x1

.field private static final TYPE_VAULT_DATA_SHELTERED:I = 0x2

.field private static final TYPE_VAULT_DATA_UNSHELTERED:I = 0x1

.field private static final TYPE_VK_API_LEVEL:I = 0x9

.field private static final TYPE_WB:I = 0x2

.field private static final VAULT_KEY_LEN:I = 0x20


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mServiceSupport:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 128
    const-string/jumbo v0, "vkjni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 146
    invoke-direct {p0}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Stub;-><init>()V

    .line 95
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 158
    new-instance v0, Lcom/android/server/VaultKeeperService$1;

    invoke-direct {v0, p0}, Lcom/android/server/VaultKeeperService$1;-><init>(Lcom/android/server/VaultKeeperService;)V

    iput-object v0, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    .line 147
    iput-object p1, p0, Lcom/android/server/VaultKeeperService;->mContext:Landroid/content/Context;

    .line 148
    invoke-direct {p0}, Lcom/android/server/VaultKeeperService;->nativeGetSystemSolution()I

    move-result v0

    iput v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    .line 149
    iget-object v0, p0, Lcom/android/server/VaultKeeperService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 150
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v2, "VK_WakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/VaultKeeperService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 151
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/VaultKeeperService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VaultKeeperService;

    .line 35
    iget-object v0, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/VaultKeeperService;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VaultKeeperService;

    .line 35
    iget-object v0, p0, Lcom/android/server/VaultKeeperService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "vaultName"    # Ljava/lang/String;

    .line 189
    const-string/jumbo v0, "system_server"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get service instance by ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "VaultKeeperService"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/4 v1, 0x0

    .line 193
    .local v1, "clientPkgName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 196
    const/4 v4, 0x0

    :try_start_3a
    iget-object v5, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v6, 0x1

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v5
    :try_end_44
    .catch Ljava/lang/InterruptedException; {:try_start_3a .. :try_end_44} :catch_184

    if-eqz v5, :cond_17e

    .line 199
    if-nez p1, :cond_54

    .line 200
    :try_start_48
    const-string v0, "Vault name is null"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4d} :catch_167
    .catchall {:try_start_48 .. :try_end_4d} :catchall_165

    .line 201
    nop

    .line 260
    :try_start_4e
    iget-object v0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_53
    .catch Ljava/lang/InterruptedException; {:try_start_4e .. :try_end_53} :catch_184

    .line 201
    return-object v4

    .line 204
    :cond_54
    if-eqz p1, :cond_68

    :try_start_56
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_68

    .line 205
    const-string v0, "Vault name is wrong"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_61} :catch_167
    .catchall {:try_start_56 .. :try_end_61} :catchall_165

    .line 206
    nop

    .line 260
    :try_start_62
    iget-object v0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_67
    .catch Ljava/lang/InterruptedException; {:try_start_62 .. :try_end_67} :catch_184

    .line 206
    return-object v4

    .line 209
    :cond_68
    :try_start_68
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/VaultKeeperService;->nativeGetProcessName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const v6, 0x186a0

    if-eqz v5, :cond_85

    .line 210
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    rem-int/2addr v5, v6

    const/16 v7, 0x3e8

    if-ne v5, v7, :cond_85

    .line 211
    move-object v1, v0

    .end local v1    # "clientPkgName":Ljava/lang/String;
    .local v0, "clientPkgName":Ljava/lang/String;
    goto/16 :goto_14a

    .line 213
    .end local v0    # "clientPkgName":Ljava/lang/String;
    .restart local v1    # "clientPkgName":Ljava/lang/String;
    :cond_85
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    rem-int/2addr v0, v6

    const/16 v5, 0x7d0

    if-ne v0, v5, :cond_b0

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission denied. Check your UID ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_a9} :catch_167
    .catchall {:try_start_68 .. :try_end_a9} :catchall_165

    .line 215
    nop

    .line 260
    :try_start_aa
    iget-object v0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_af
    .catch Ljava/lang/InterruptedException; {:try_start_aa .. :try_end_af} :catch_184

    .line 215
    return-object v4

    .line 218
    :cond_b0
    :try_start_b0
    iget-object v0, p0, Lcom/android/server/VaultKeeperService;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 219
    .local v0, "am":Landroid/app/ActivityManager;
    if-nez v0, :cond_c8

    .line 220
    const-string v2, "ActivityManager is null, something wrong in framework"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_c1} :catch_167
    .catchall {:try_start_b0 .. :try_end_c1} :catchall_165

    .line 221
    nop

    .line 260
    :try_start_c2
    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_c7
    .catch Ljava/lang/InterruptedException; {:try_start_c2 .. :try_end_c7} :catch_184

    .line 221
    return-object v4

    .line 224
    :cond_c8
    :try_start_c8
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_db

    .line 225
    const-string/jumbo v2, "getRunningAppProcesses return null List. Cannot check permision"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_d4} :catch_167
    .catchall {:try_start_c8 .. :try_end_d4} :catchall_165

    .line 226
    nop

    .line 260
    :try_start_d5
    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_da
    .catch Ljava/lang/InterruptedException; {:try_start_d5 .. :try_end_da} :catch_184

    .line 226
    return-object v4

    .line 229
    :cond_db
    :try_start_db
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_fc

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 230
    .local v5, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    if-ne v6, v7, :cond_fb

    .line 231
    iget-object v2, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object v1, v2

    .line 232
    goto :goto_fc

    .line 234
    .end local v5    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_fb
    goto :goto_e3

    .line 236
    :cond_fc
    :goto_fc
    if-nez v1, :cond_10a

    .line 237
    const-string v2, "Invalid package name"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_103} :catch_167
    .catchall {:try_start_db .. :try_end_103} :catchall_165

    .line 238
    nop

    .line 260
    :try_start_104
    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_109
    .catch Ljava/lang/InterruptedException; {:try_start_104 .. :try_end_109} :catch_184

    .line 238
    return-object v4

    .line 241
    :cond_10a
    :try_start_10a
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_11c

    .line 242
    const-string v2, "Invalid package length"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_10a .. :try_end_115} :catch_167
    .catchall {:try_start_10a .. :try_end_115} :catchall_165

    .line 243
    nop

    .line 260
    :try_start_116
    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_11b
    .catch Ljava/lang/InterruptedException; {:try_start_116 .. :try_end_11b} :catch_184

    .line 243
    return-object v4

    .line 246
    :cond_11c
    :try_start_11c
    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 247
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string v5, "android"

    invoke-virtual {v2, v5, v1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_14a

    .line 248
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NOT Allowed : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " isn\'t signed with platform key."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_143
    .catch Ljava/lang/Exception; {:try_start_11c .. :try_end_143} :catch_167
    .catchall {:try_start_11c .. :try_end_143} :catchall_165

    .line 249
    nop

    .line 260
    :try_start_144
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_149
    .catch Ljava/lang/InterruptedException; {:try_start_144 .. :try_end_149} :catch_184

    .line 249
    return-object v4

    .line 253
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_14a
    :goto_14a
    :try_start_14a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client info : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15e
    .catch Ljava/lang/Exception; {:try_start_14a .. :try_end_15e} :catch_167
    .catchall {:try_start_14a .. :try_end_15e} :catchall_165

    .line 254
    nop

    .line 260
    :try_start_15f
    iget-object v0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_164
    .catch Ljava/lang/InterruptedException; {:try_start_15f .. :try_end_164} :catch_184

    .line 254
    return-object v1

    .line 260
    :catchall_165
    move-exception v0

    goto :goto_177

    .line 255
    :catch_167
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/Exception;
    :try_start_168
    const-string v2, "Fail to check permission(Exception)"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_170
    .catchall {:try_start_168 .. :try_end_170} :catchall_165

    .line 258
    nop

    .line 260
    :try_start_171
    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 258
    return-object v4

    .line 260
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_177
    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 261
    nop

    .end local v1    # "clientPkgName":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/VaultKeeperService;
    .end local p1    # "vaultName":Ljava/lang/String;
    throw v0

    .line 263
    .restart local v1    # "clientPkgName":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/VaultKeeperService;
    .restart local p1    # "vaultName":Ljava/lang/String;
    :cond_17e
    const-string v0, "Unable to acquire lock"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_183
    .catch Ljava/lang/InterruptedException; {:try_start_171 .. :try_end_183} :catch_184

    .line 264
    return-object v4

    .line 266
    :catch_184
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 268
    return-object v4
.end method

.method private native nativeCheckDataWritable(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeDestroy(Ljava/lang/String;Ljava/lang/String;[B[B[B)I
.end method

.method private native nativeEncryptMessage(Ljava/lang/String;Ljava/lang/String;[B)[B
.end method

.method private native nativeGenerateHotpCode(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeGetProcessName(I)Ljava/lang/String;
.end method

.method private native nativeGetSystemSolution()I
.end method

.method private native nativeInitialize(Ljava/lang/String;Ljava/lang/String;[B[B[B)I
.end method

.method private native nativeIsInitialized(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native nativeMigrationStorage(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native nativeRead(Ljava/lang/String;Ljava/lang/String;I[I)[B
.end method

.method private native nativeSensitiveBox(Ljava/lang/String;Ljava/lang/String;I[I)[B
.end method

.method private native nativeVerifyCertificate(Ljava/lang/String;Ljava/lang/String;[B)Z
.end method

.method private native nativeWrite(Ljava/lang/String;Ljava/lang/String;I[B[B[B)I
.end method


# virtual methods
.method public checkDataWritable(Ljava/lang/String;)I
    .registers 8
    .param p1, "vaultName"    # Ljava/lang/String;

    .line 679
    const-string v0, "VaultKeeperService"

    const-string v1, "checkDataWritable"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iget v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v1, :cond_29

    .line 682
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VaultKeeper not support("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const/16 v0, -0x68

    return v0

    .line 686
    :cond_29
    invoke-direct {p0, p1}, Lcom/android/server/VaultKeeperService;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 688
    .local v1, "clientPkgName":Ljava/lang/String;
    if-nez v1, :cond_32

    .line 689
    const/16 v0, -0x6a

    return v0

    .line 691
    :cond_32
    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 694
    :try_start_3c
    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v3, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2
    :try_end_46
    .catch Ljava/lang/InterruptedException; {:try_start_3c .. :try_end_46} :catch_62

    if-eqz v2, :cond_5a

    .line 696
    :try_start_48
    invoke-direct {p0, v1, p1}, Lcom/android/server/VaultKeeperService;->nativeCheckDataWritable(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_52

    .line 698
    :try_start_4c
    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 696
    return v0

    .line 698
    :catchall_52
    move-exception v0

    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 699
    nop

    .end local v1    # "clientPkgName":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/VaultKeeperService;
    .end local p1    # "vaultName":Ljava/lang/String;
    throw v0

    .line 701
    .restart local v1    # "clientPkgName":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/VaultKeeperService;
    .restart local p1    # "vaultName":Ljava/lang/String;
    :cond_5a
    const-string v2, "Unable to acquire lock"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catch Ljava/lang/InterruptedException; {:try_start_4c .. :try_end_5f} :catch_62

    .line 702
    const/16 v0, -0x69

    return v0

    .line 704
    :catch_62
    move-exception v0

    .line 705
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 706
    const/16 v2, -0x67

    return v2
.end method

.method public destroy(Ljava/lang/String;[B[B[B)I
    .registers 13
    .param p1, "vaultName"    # Ljava/lang/String;
    .param p2, "hmac"    # [B
    .param p3, "cert"    # [B
    .param p4, "sig"    # [B

    .line 373
    const-string v0, "VaultKeeperService"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v1, :cond_29

    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VaultKeeper not support("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const/16 v0, -0x68

    return v0

    .line 380
    :cond_29
    invoke-direct {p0, p1}, Lcom/android/server/VaultKeeperService;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 382
    .local v7, "clientPkgName":Ljava/lang/String;
    if-nez v7, :cond_32

    .line 383
    const/16 v0, -0x6a

    return v0

    .line 385
    :cond_32
    const/16 v1, -0x66

    if-eqz p2, :cond_51

    .line 386
    array-length v2, p2

    const/16 v3, 0x20

    if-le v2, v3, :cond_51

    .line 387
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroy : Invalid hmac length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    return v1

    .line 392
    :cond_51
    if-eqz p3, :cond_67

    if-eqz p4, :cond_67

    .line 393
    array-length v2, p3

    if-nez v2, :cond_5e

    .line 394
    const-string v2, "destroy : if cert is exist, it should contain value."

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    return v1

    .line 398
    :cond_5e
    array-length v2, p4

    if-nez v2, :cond_67

    .line 399
    const-string v2, "destroy : if signature is exist, it should contain value."

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    return v1

    .line 404
    :cond_67
    if-eqz p2, :cond_73

    if-eqz p3, :cond_73

    if-eqz p4, :cond_73

    .line 405
    const-string v2, "destroy : Invalid arguments(too many arguments)"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    return v1

    .line 409
    :cond_73
    iget-object v1, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 412
    :try_start_7d
    iget-object v1, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v2, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_87
    .catch Ljava/lang/InterruptedException; {:try_start_7d .. :try_end_87} :catch_a9

    if-eqz v1, :cond_a1

    .line 414
    move-object v1, p0

    move-object v2, v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    :try_start_8f
    invoke-direct/range {v1 .. v6}, Lcom/android/server/VaultKeeperService;->nativeDestroy(Ljava/lang/String;Ljava/lang/String;[B[B[B)I

    move-result v0
    :try_end_93
    .catchall {:try_start_8f .. :try_end_93} :catchall_99

    .line 416
    :try_start_93
    iget-object v1, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 414
    return v0

    .line 416
    :catchall_99
    move-exception v0

    iget-object v1, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 417
    nop

    .end local v7    # "clientPkgName":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/VaultKeeperService;
    .end local p1    # "vaultName":Ljava/lang/String;
    .end local p2    # "hmac":[B
    .end local p3    # "cert":[B
    .end local p4    # "sig":[B
    throw v0

    .line 419
    .restart local v7    # "clientPkgName":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/VaultKeeperService;
    .restart local p1    # "vaultName":Ljava/lang/String;
    .restart local p2    # "hmac":[B
    .restart local p3    # "cert":[B
    .restart local p4    # "sig":[B
    :cond_a1
    const-string v1, "Unable to acquire lock"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a6
    .catch Ljava/lang/InterruptedException; {:try_start_93 .. :try_end_a6} :catch_a9

    .line 420
    const/16 v0, -0x69

    return v0

    .line 422
    :catch_a9
    move-exception v0

    .line 423
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 424
    const/16 v1, -0x67

    return v1
.end method

.method public encryptMessage(Ljava/lang/String;[B)[B
    .registers 10
    .param p1, "vaultName"    # Ljava/lang/String;
    .param p2, "msg"    # [B

    .line 565
    const-string v0, "VaultKeeperService"

    const-string v1, "encryptMessage"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    const/4 v2, 0x0

    if-nez v1, :cond_28

    .line 568
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VaultKeeper not support("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    return-object v2

    .line 572
    :cond_28
    invoke-direct {p0, p1}, Lcom/android/server/VaultKeeperService;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 574
    .local v1, "clientPkgName":Ljava/lang/String;
    if-nez v1, :cond_2f

    .line 575
    return-object v2

    .line 577
    :cond_2f
    if-eqz p2, :cond_3a

    array-length v3, p2

    if-nez v3, :cond_3a

    .line 578
    const-string v3, "encryptMessage : if msg is exist, it should contain value."

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    return-object v2

    .line 582
    :cond_3a
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 585
    :try_start_44
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3
    :try_end_4e
    .catch Ljava/lang/InterruptedException; {:try_start_44 .. :try_end_4e} :catch_68

    if-eqz v3, :cond_62

    .line 587
    :try_start_50
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/VaultKeeperService;->nativeEncryptMessage(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0
    :try_end_54
    .catchall {:try_start_50 .. :try_end_54} :catchall_5a

    .line 589
    :try_start_54
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 587
    return-object v0

    .line 589
    :catchall_5a
    move-exception v0

    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 590
    nop

    .end local v1    # "clientPkgName":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/VaultKeeperService;
    .end local p1    # "vaultName":Ljava/lang/String;
    .end local p2    # "msg":[B
    throw v0

    .line 592
    .restart local v1    # "clientPkgName":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/VaultKeeperService;
    .restart local p1    # "vaultName":Ljava/lang/String;
    .restart local p2    # "msg":[B
    :cond_62
    const-string v3, "Unable to acquire lock"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Ljava/lang/InterruptedException; {:try_start_54 .. :try_end_67} :catch_68

    .line 593
    return-object v2

    .line 595
    :catch_68
    move-exception v0

    .line 596
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 597
    return-object v2
.end method

.method public generateHotpCode(Ljava/lang/String;)I
    .registers 8
    .param p1, "vaultName"    # Ljava/lang/String;

    .line 712
    const-string v0, "VaultKeeperService"

    const-string/jumbo v1, "generateHotpCode"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v1, :cond_2a

    .line 715
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VaultKeeper not support("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    const/16 v0, -0x68

    return v0

    .line 719
    :cond_2a
    invoke-direct {p0, p1}, Lcom/android/server/VaultKeeperService;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 721
    .local v1, "clientPkgName":Ljava/lang/String;
    if-nez v1, :cond_33

    .line 722
    const/16 v0, -0x6a

    return v0

    .line 724
    :cond_33
    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 727
    :try_start_3d
    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v3, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2
    :try_end_47
    .catch Ljava/lang/InterruptedException; {:try_start_3d .. :try_end_47} :catch_63

    if-eqz v2, :cond_5b

    .line 729
    :try_start_49
    invoke-direct {p0, v1, p1}, Lcom/android/server/VaultKeeperService;->nativeGenerateHotpCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_53

    .line 731
    :try_start_4d
    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 729
    return v0

    .line 731
    :catchall_53
    move-exception v0

    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 732
    nop

    .end local v1    # "clientPkgName":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/VaultKeeperService;
    .end local p1    # "vaultName":Ljava/lang/String;
    throw v0

    .line 734
    .restart local v1    # "clientPkgName":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/VaultKeeperService;
    .restart local p1    # "vaultName":Ljava/lang/String;
    :cond_5b
    const-string v2, "Unable to acquire lock"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catch Ljava/lang/InterruptedException; {:try_start_4d .. :try_end_60} :catch_63

    .line 735
    const/16 v0, -0x69

    return v0

    .line 737
    :catch_63
    move-exception v0

    .line 738
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 739
    const/16 v2, -0x67

    return v2
.end method

.method public initialize(Ljava/lang/String;[B[B[B[B)I
    .registers 15
    .param p1, "vaultName"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "initUnsheltered"    # [B
    .param p4, "cert"    # [B
    .param p5, "sig"    # [B

    .line 308
    const-string v0, "VaultKeeperService"

    const-string/jumbo v1, "initialize"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    const-string v2, ")"

    if-nez v1, :cond_2a

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VaultKeeper not support("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/16 v0, -0x68

    return v0

    .line 315
    :cond_2a
    invoke-direct {p0, p1}, Lcom/android/server/VaultKeeperService;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 317
    .local v7, "clientPkgName":Ljava/lang/String;
    if-nez v7, :cond_33

    .line 318
    const/16 v0, -0x6a

    return v0

    .line 320
    :cond_33
    const/16 v1, -0x66

    if-eqz p2, :cond_56

    array-length v3, p2

    const/16 v4, 0x20

    if-eq v3, v4, :cond_56

    .line 321
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initialize : if key is exist, it should be 32 Bytes. but now("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    return v1

    .line 325
    :cond_56
    if-eqz p3, :cond_62

    array-length v2, p3

    if-nez v2, :cond_62

    .line 326
    const-string/jumbo v2, "initialize : if initUnsheltered is exist, it should contain value."

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    return v1

    .line 330
    :cond_62
    if-eqz p4, :cond_6e

    array-length v2, p4

    if-nez v2, :cond_6e

    .line 331
    const-string/jumbo v2, "initialize : if cert is exist, it should contain value."

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    return v1

    .line 335
    :cond_6e
    if-eqz p5, :cond_7a

    array-length v2, p5

    if-nez v2, :cond_7a

    .line 336
    const-string/jumbo v2, "initialize :  if signature is exist, it should contain value."

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    return v1

    .line 340
    :cond_7a
    const/4 v2, 0x0

    .line 341
    .local v2, "sigAndCert":[B
    if-eqz p4, :cond_90

    if-eqz p5, :cond_90

    .line 342
    array-length v3, p5

    array-length v4, p4

    add-int/2addr v3, v4

    new-array v2, v3, [B

    .line 343
    array-length v3, p5

    const/4 v4, 0x0

    invoke-static {p5, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 344
    array-length v3, p5

    array-length v5, p4

    invoke-static {p4, v4, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v2

    goto :goto_91

    .line 347
    :cond_90
    move-object v8, v2

    .end local v2    # "sigAndCert":[B
    .local v8, "sigAndCert":[B
    :goto_91
    if-nez p4, :cond_9c

    if-nez p5, :cond_9c

    .line 348
    const-string/jumbo v2, "initialize : All of input param is empty."

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    return v1

    .line 352
    :cond_9c
    iget-object v1, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 355
    :try_start_a6
    iget-object v1, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v2, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_b0
    .catch Ljava/lang/InterruptedException; {:try_start_a6 .. :try_end_b0} :catch_d2

    if-eqz v1, :cond_ca

    .line 357
    move-object v1, p0

    move-object v2, v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v8

    :try_start_b8
    invoke-direct/range {v1 .. v6}, Lcom/android/server/VaultKeeperService;->nativeInitialize(Ljava/lang/String;Ljava/lang/String;[B[B[B)I

    move-result v0
    :try_end_bc
    .catchall {:try_start_b8 .. :try_end_bc} :catchall_c2

    .line 359
    :try_start_bc
    iget-object v1, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 357
    return v0

    .line 359
    :catchall_c2
    move-exception v0

    iget-object v1, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 360
    nop

    .end local v7    # "clientPkgName":Ljava/lang/String;
    .end local v8    # "sigAndCert":[B
    .end local p0    # "this":Lcom/android/server/VaultKeeperService;
    .end local p1    # "vaultName":Ljava/lang/String;
    .end local p2    # "key":[B
    .end local p3    # "initUnsheltered":[B
    .end local p4    # "cert":[B
    .end local p5    # "sig":[B
    throw v0

    .line 362
    .restart local v7    # "clientPkgName":Ljava/lang/String;
    .restart local v8    # "sigAndCert":[B
    .restart local p0    # "this":Lcom/android/server/VaultKeeperService;
    .restart local p1    # "vaultName":Ljava/lang/String;
    .restart local p2    # "key":[B
    .restart local p3    # "initUnsheltered":[B
    .restart local p4    # "cert":[B
    .restart local p5    # "sig":[B
    :cond_ca
    const-string v1, "Unable to acquire lock"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cf
    .catch Ljava/lang/InterruptedException; {:try_start_bc .. :try_end_cf} :catch_d2

    .line 363
    const/16 v0, -0x69

    return v0

    .line 365
    :catch_d2
    move-exception v0

    .line 366
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 367
    const/16 v1, -0x67

    return v1
.end method

.method public isInitialized(Ljava/lang/String;)Z
    .registers 9
    .param p1, "vaultName"    # Ljava/lang/String;

    .line 274
    const-string v0, "VaultKeeperService"

    const-string/jumbo v1, "isInitialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    const/4 v2, 0x0

    if-nez v1, :cond_29

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VaultKeeper not support("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return v2

    .line 281
    :cond_29
    invoke-direct {p0, p1}, Lcom/android/server/VaultKeeperService;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, "clientPkgName":Ljava/lang/String;
    if-nez v1, :cond_30

    .line 284
    return v2

    .line 286
    :cond_30
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 289
    :try_start_3a
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3
    :try_end_44
    .catch Ljava/lang/InterruptedException; {:try_start_3a .. :try_end_44} :catch_5e

    if-eqz v3, :cond_58

    .line 291
    :try_start_46
    invoke-direct {p0, v1, p1}, Lcom/android/server/VaultKeeperService;->nativeIsInitialized(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_4a
    .catchall {:try_start_46 .. :try_end_4a} :catchall_50

    .line 293
    :try_start_4a
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 291
    return v0

    .line 293
    :catchall_50
    move-exception v0

    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 294
    nop

    .end local v1    # "clientPkgName":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/VaultKeeperService;
    .end local p1    # "vaultName":Ljava/lang/String;
    throw v0

    .line 296
    .restart local v1    # "clientPkgName":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/VaultKeeperService;
    .restart local p1    # "vaultName":Ljava/lang/String;
    :cond_58
    const-string v3, "Unable to acquire lock"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catch Ljava/lang/InterruptedException; {:try_start_4a .. :try_end_5d} :catch_5e

    .line 297
    return v2

    .line 299
    :catch_5e
    move-exception v0

    .line 300
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 301
    return v2
.end method

.method public migrationStorage(Ljava/lang/String;)Z
    .registers 9
    .param p1, "vaultName"    # Ljava/lang/String;

    .line 603
    const-string v0, "VaultKeeperService"

    const-string/jumbo v1, "migrationStorage"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    const/4 v2, 0x0

    if-nez v1, :cond_29

    .line 606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VaultKeeper not support("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    return v2

    .line 610
    :cond_29
    invoke-direct {p0, p1}, Lcom/android/server/VaultKeeperService;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 612
    .local v1, "clientPkgName":Ljava/lang/String;
    if-nez v1, :cond_30

    .line 613
    return v2

    .line 615
    :cond_30
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 618
    :try_start_3a
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3
    :try_end_44
    .catch Ljava/lang/InterruptedException; {:try_start_3a .. :try_end_44} :catch_5e

    if-eqz v3, :cond_58

    .line 620
    :try_start_46
    invoke-direct {p0, v1, p1}, Lcom/android/server/VaultKeeperService;->nativeMigrationStorage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_4a
    .catchall {:try_start_46 .. :try_end_4a} :catchall_50

    .line 622
    :try_start_4a
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 620
    return v0

    .line 622
    :catchall_50
    move-exception v0

    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 623
    nop

    .end local v1    # "clientPkgName":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/VaultKeeperService;
    .end local p1    # "vaultName":Ljava/lang/String;
    throw v0

    .line 625
    .restart local v1    # "clientPkgName":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/VaultKeeperService;
    .restart local p1    # "vaultName":Ljava/lang/String;
    :cond_58
    const-string v3, "Unable to acquire lock"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catch Ljava/lang/InterruptedException; {:try_start_4a .. :try_end_5d} :catch_5e

    .line 626
    return v2

    .line 628
    :catch_5e
    move-exception v0

    .line 629
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 630
    return v2
.end method

.method public read(Ljava/lang/String;I[I)[B
    .registers 11
    .param p1, "vaultName"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "errorCode"    # [I

    .line 430
    const-string v0, "VaultKeeperService"

    const-string/jumbo v1, "read"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    const/4 v2, 0x0

    if-nez v1, :cond_29

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VaultKeeper not support("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    return-object v2

    .line 437
    :cond_29
    invoke-direct {p0, p1}, Lcom/android/server/VaultKeeperService;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 439
    .local v1, "clientPkgName":Ljava/lang/String;
    if-nez v1, :cond_30

    .line 440
    return-object v2

    .line 442
    :cond_30
    const/4 v3, 0x1

    if-lt p2, v3, :cond_6c

    const/4 v4, 0x2

    if-le p2, v4, :cond_37

    goto :goto_6c

    .line 447
    :cond_37
    if-nez p3, :cond_3a

    .line 448
    return-object v2

    .line 450
    :cond_3a
    iget-object v4, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 453
    :try_start_43
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3
    :try_end_4d
    .catch Ljava/lang/InterruptedException; {:try_start_43 .. :try_end_4d} :catch_67

    if-eqz v3, :cond_61

    .line 455
    :try_start_4f
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/VaultKeeperService;->nativeRead(Ljava/lang/String;Ljava/lang/String;I[I)[B

    move-result-object v0
    :try_end_53
    .catchall {:try_start_4f .. :try_end_53} :catchall_59

    .line 457
    :try_start_53
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 455
    return-object v0

    .line 457
    :catchall_59
    move-exception v0

    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 458
    nop

    .end local v1    # "clientPkgName":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/VaultKeeperService;
    .end local p1    # "vaultName":Ljava/lang/String;
    .end local p2    # "type":I
    .end local p3    # "errorCode":[I
    throw v0

    .line 460
    .restart local v1    # "clientPkgName":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/VaultKeeperService;
    .restart local p1    # "vaultName":Ljava/lang/String;
    .restart local p2    # "type":I
    .restart local p3    # "errorCode":[I
    :cond_61
    const-string v3, "Unable to acquire lock"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catch Ljava/lang/InterruptedException; {:try_start_53 .. :try_end_66} :catch_67

    .line 461
    return-object v2

    .line 463
    :catch_67
    move-exception v0

    .line 464
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 465
    return-object v2

    .line 443
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_6c
    :goto_6c
    const-string/jumbo v3, "read : Invalid type value."

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    return-object v2
.end method

.method public sensitiveBox(Ljava/lang/String;I[I)[B
    .registers 11
    .param p1, "vaultName"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "errorCode"    # [I

    .line 524
    const-string v0, "VaultKeeperService"

    const-string/jumbo v1, "sensitiveBox"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    const/4 v2, 0x0

    if-nez v1, :cond_29

    .line 527
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VaultKeeper not support("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    return-object v2

    .line 531
    :cond_29
    invoke-direct {p0, p1}, Lcom/android/server/VaultKeeperService;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 533
    .local v1, "clientPkgName":Ljava/lang/String;
    if-nez v1, :cond_30

    .line 534
    return-object v2

    .line 536
    :cond_30
    const/4 v3, 0x1

    if-lt p2, v3, :cond_6d

    const/16 v4, 0x9

    if-le p2, v4, :cond_38

    goto :goto_6d

    .line 541
    :cond_38
    if-nez p3, :cond_3b

    .line 542
    return-object v2

    .line 544
    :cond_3b
    iget-object v4, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 547
    :try_start_44
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3
    :try_end_4e
    .catch Ljava/lang/InterruptedException; {:try_start_44 .. :try_end_4e} :catch_68

    if-eqz v3, :cond_62

    .line 549
    :try_start_50
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/VaultKeeperService;->nativeSensitiveBox(Ljava/lang/String;Ljava/lang/String;I[I)[B

    move-result-object v0
    :try_end_54
    .catchall {:try_start_50 .. :try_end_54} :catchall_5a

    .line 551
    :try_start_54
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 549
    return-object v0

    .line 551
    :catchall_5a
    move-exception v0

    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 552
    nop

    .end local v1    # "clientPkgName":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/VaultKeeperService;
    .end local p1    # "vaultName":Ljava/lang/String;
    .end local p2    # "type":I
    .end local p3    # "errorCode":[I
    throw v0

    .line 554
    .restart local v1    # "clientPkgName":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/VaultKeeperService;
    .restart local p1    # "vaultName":Ljava/lang/String;
    .restart local p2    # "type":I
    .restart local p3    # "errorCode":[I
    :cond_62
    const-string v3, "Unable to acquire lock"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Ljava/lang/InterruptedException; {:try_start_54 .. :try_end_67} :catch_68

    .line 555
    return-object v2

    .line 557
    :catch_68
    move-exception v0

    .line 558
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 559
    return-object v2

    .line 537
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_6d
    :goto_6d
    const-string/jumbo v3, "sensitiveBox : Invalid type value."

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    return-object v2
.end method

.method public systemReady()V
    .registers 3

    .line 155
    const-string v0, "VaultKeeperService"

    const-string v1, "System is ready"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void
.end method

.method public verifyCertificate(Ljava/lang/String;[B)Z
    .registers 10
    .param p1, "vaultName"    # Ljava/lang/String;
    .param p2, "cert"    # [B

    .line 636
    const-string v0, "VaultKeeperService"

    const-string/jumbo v1, "verifyCertificate"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iget v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    const/4 v2, 0x0

    if-nez v1, :cond_29

    .line 639
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VaultKeeper not support("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    return v2

    .line 643
    :cond_29
    invoke-direct {p0, p1}, Lcom/android/server/VaultKeeperService;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 645
    .local v1, "clientPkgName":Ljava/lang/String;
    if-nez v1, :cond_30

    .line 646
    return v2

    .line 648
    :cond_30
    if-nez p2, :cond_39

    .line 649
    const-string/jumbo v3, "verifyCertificate : cert is null."

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    return v2

    .line 653
    :cond_39
    array-length v3, p2

    if-nez v3, :cond_43

    .line 654
    const-string/jumbo v3, "verifyCertificate : certificate length is zero"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    return v2

    .line 658
    :cond_43
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 661
    :try_start_4d
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3
    :try_end_57
    .catch Ljava/lang/InterruptedException; {:try_start_4d .. :try_end_57} :catch_71

    if-eqz v3, :cond_6b

    .line 663
    :try_start_59
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/VaultKeeperService;->nativeVerifyCertificate(Ljava/lang/String;Ljava/lang/String;[B)Z

    move-result v0
    :try_end_5d
    .catchall {:try_start_59 .. :try_end_5d} :catchall_63

    .line 665
    :try_start_5d
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 663
    return v0

    .line 665
    :catchall_63
    move-exception v0

    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 666
    nop

    .end local v1    # "clientPkgName":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/VaultKeeperService;
    .end local p1    # "vaultName":Ljava/lang/String;
    .end local p2    # "cert":[B
    throw v0

    .line 668
    .restart local v1    # "clientPkgName":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/VaultKeeperService;
    .restart local p1    # "vaultName":Ljava/lang/String;
    .restart local p2    # "cert":[B
    :cond_6b
    const-string v3, "Unable to acquire lock"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catch Ljava/lang/InterruptedException; {:try_start_5d .. :try_end_70} :catch_71

    .line 669
    return v2

    .line 671
    :catch_71
    move-exception v0

    .line 672
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 673
    return v2
.end method

.method public write(Ljava/lang/String;I[B[B[B)I
    .registers 15
    .param p1, "vaultName"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "data"    # [B
    .param p4, "cert"    # [B
    .param p5, "sig"    # [B

    .line 471
    const-string v0, "VaultKeeperService"

    const-string/jumbo v1, "write"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v1, :cond_2a

    .line 474
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VaultKeeper not support("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const/16 v0, -0x68

    return v0

    .line 478
    :cond_2a
    invoke-direct {p0, p1}, Lcom/android/server/VaultKeeperService;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 480
    .local v8, "clientPkgName":Ljava/lang/String;
    if-nez v8, :cond_33

    .line 481
    const/16 v0, -0x6a

    return v0

    .line 483
    :cond_33
    const/4 v1, 0x1

    const/16 v2, -0x66

    if-lt p2, v1, :cond_9d

    const/4 v3, 0x2

    if-le p2, v3, :cond_3c

    goto :goto_9d

    .line 488
    :cond_3c
    if-eqz p3, :cond_48

    array-length v3, p3

    if-nez v3, :cond_48

    .line 489
    const-string/jumbo v1, "write : if data is exist, it should contain value."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    return v2

    .line 493
    :cond_48
    if-eqz p4, :cond_54

    array-length v3, p4

    if-nez v3, :cond_54

    .line 494
    const-string/jumbo v1, "write : if cert is exist, it should contain value."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    return v2

    .line 498
    :cond_54
    if-eqz p5, :cond_60

    array-length v3, p5

    if-nez v3, :cond_60

    .line 499
    const-string/jumbo v1, "write : if sig is exist, it should contain value."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    return v2

    .line 503
    :cond_60
    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 506
    :try_start_69
    iget-object v1, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v2, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_73
    .catch Ljava/lang/InterruptedException; {:try_start_69 .. :try_end_73} :catch_96

    if-eqz v1, :cond_8e

    .line 508
    move-object v1, p0

    move-object v2, v8

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    :try_start_7c
    invoke-direct/range {v1 .. v7}, Lcom/android/server/VaultKeeperService;->nativeWrite(Ljava/lang/String;Ljava/lang/String;I[B[B[B)I

    move-result v0
    :try_end_80
    .catchall {:try_start_7c .. :try_end_80} :catchall_86

    .line 510
    :try_start_80
    iget-object v1, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 508
    return v0

    .line 510
    :catchall_86
    move-exception v0

    iget-object v1, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 511
    nop

    .end local v8    # "clientPkgName":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/VaultKeeperService;
    .end local p1    # "vaultName":Ljava/lang/String;
    .end local p2    # "type":I
    .end local p3    # "data":[B
    .end local p4    # "cert":[B
    .end local p5    # "sig":[B
    throw v0

    .line 513
    .restart local v8    # "clientPkgName":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/VaultKeeperService;
    .restart local p1    # "vaultName":Ljava/lang/String;
    .restart local p2    # "type":I
    .restart local p3    # "data":[B
    .restart local p4    # "cert":[B
    .restart local p5    # "sig":[B
    :cond_8e
    const-string v1, "Unable to acquire lock"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_93
    .catch Ljava/lang/InterruptedException; {:try_start_80 .. :try_end_93} :catch_96

    .line 514
    const/16 v0, -0x69

    return v0

    .line 516
    :catch_96
    move-exception v0

    .line 517
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 518
    const/16 v1, -0x67

    return v1

    .line 484
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_9d
    :goto_9d
    const-string/jumbo v1, "write : Invalid type value."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    return v2
.end method
