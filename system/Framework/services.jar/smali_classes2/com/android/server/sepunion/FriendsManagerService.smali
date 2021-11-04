.class public Lcom/android/server/sepunion/FriendsManagerService;
.super Lcom/samsung/android/sepunion/IFriendsManagerService$Stub;
.source "FriendsManagerService.java"

# interfaces
.implements Lcom/android/server/sepunion/AbsSemSystemService;


# static fields
.field private static final NFC_AUTH:Ljava/lang/String; = "com.sec.feature.nfc_authentication"

.field private static final TAG:Ljava/lang/String;

.field private static final USB_AUTH:Ljava/lang/String; = "com.sec.feature.usb_authentication"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    const-class v0, Lcom/android/server/sepunion/FriendsManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/FriendsManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Lcom/samsung/android/sepunion/IFriendsManagerService$Stub;-><init>()V

    .line 50
    sget-object v0, Lcom/android/server/sepunion/FriendsManagerService;->TAG:Ljava/lang/String;

    const-string v1, "FriendsManagerService"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iput-object p1, p0, Lcom/android/server/sepunion/FriendsManagerService;->mContext:Landroid/content/Context;

    .line 52
    invoke-virtual {p0}, Lcom/android/server/sepunion/FriendsManagerService;->initialize()V

    .line 53
    return-void
.end method


# virtual methods
.method public accessoryStateChanged(Z[B[B)V
    .registers 8
    .param p1, "isAttached"    # Z
    .param p2, "uriData"    # [B
    .param p3, "coverId"    # [B

    .line 80
    sget-object v0, Lcom/android/server/sepunion/FriendsManagerService;->TAG:Ljava/lang/String;

    const-string v1, "accessoryStateChanged"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/android/server/sepunion/FriendsManagerService;->mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    if-eqz v0, :cond_2c

    .line 82
    const v1, 0x110001

    .line 83
    invoke-static {}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->create()Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v2

    const-string v3, "attached"

    invoke-virtual {v2, v3, p1}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;Z)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {v2, v3, p2}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;[B)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v2

    .line 84
    const-string v3, "extraData"

    invoke-virtual {v2, v3, p3}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;[B)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->build()Landroid/os/Bundle;

    move-result-object v2

    .line 82
    invoke-virtual {v0, v1, v2}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->executeAction(ILandroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_34

    .line 86
    :cond_2c
    sget-object v0, Lcom/android/server/sepunion/FriendsManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mFrsServiceImpl is null."

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_34
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 176
    const-string v0, "\n##### FriendsManagerService #####\n##### (dumpsys sepunion example) #####\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/android/server/sepunion/FriendsManagerService;->mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    if-eqz v0, :cond_d

    .line 180
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_15

    .line 182
    :cond_d
    sget-object v0, Lcom/android/server/sepunion/FriendsManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mFrsServiceImpl is null."

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :goto_15
    return-void
.end method

.method public executeAction(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4
    .param p1, "action"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 69
    iget-object v0, p0, Lcom/android/server/sepunion/FriendsManagerService;->mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    if-nez v0, :cond_6

    .line 70
    const/4 v0, 0x0

    return-object v0

    .line 72
    :cond_6
    invoke-virtual {v0, p1, p2}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->executeAction(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getFrsServiceImpl()Lcom/android/server/sepunion/friends/FrsServiceImpl;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/android/server/sepunion/FriendsManagerService;->mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    return-object v0
.end method

.method public getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 170
    const/4 v0, 0x0

    return-object v0
.end method

.method public initialize()V
    .registers 4

    .line 56
    iget-object v0, p0, Lcom/android/server/sepunion/FriendsManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 57
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "com.sec.feature.nfc_authentication"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "com.sec.feature.usb_authentication"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_28

    .line 60
    :cond_17
    sget-object v1, Lcom/android/server/sepunion/FriendsManagerService;->TAG:Ljava/lang/String;

    const-string v2, "Feature is not supported: com.sec.feature.nfc_authentication"

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    new-instance v1, Lcom/android/server/sepunion/friends/FrsServiceImpl;

    iget-object v2, p0, Lcom/android/server/sepunion/FriendsManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/sepunion/friends/FrsServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/sepunion/FriendsManagerService;->mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    goto :goto_31

    .line 58
    :cond_28
    :goto_28
    new-instance v1, Lcom/android/server/sepunion/friends/FrsServiceImpl;

    iget-object v2, p0, Lcom/android/server/sepunion/FriendsManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/sepunion/friends/FrsServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/sepunion/FriendsManagerService;->mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    .line 65
    :goto_31
    return-void
.end method

.method public onBootPhase(I)V
    .registers 4
    .param p1, "phase"    # I

    .line 101
    iget-object v0, p0, Lcom/android/server/sepunion/FriendsManagerService;->mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    if-eqz v0, :cond_8

    .line 102
    invoke-virtual {v0, p1}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->onBootPhase(I)V

    goto :goto_10

    .line 104
    :cond_8
    sget-object v0, Lcom/android/server/sepunion/FriendsManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mFrsServiceImpl is null."

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :goto_10
    return-void
.end method

.method public onCleanupUser(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .line 146
    iget-object v0, p0, Lcom/android/server/sepunion/FriendsManagerService;->mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    if-eqz v0, :cond_8

    .line 147
    invoke-virtual {v0, p1}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->onCleanupUser(I)V

    goto :goto_10

    .line 149
    :cond_8
    sget-object v0, Lcom/android/server/sepunion/FriendsManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mFrsServiceImpl is null."

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :goto_10
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "opt"    # Landroid/os/Bundle;

    .line 161
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 166
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 16
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 189
    sget-object v0, Lcom/android/server/sepunion/FriendsManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onShellCommand"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v2, p0, Lcom/android/server/sepunion/FriendsManagerService;->mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    if-eqz v2, :cond_16

    .line 191
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V

    goto :goto_1e

    .line 193
    :cond_16
    sget-object v0, Lcom/android/server/sepunion/FriendsManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mFrsServiceImpl is null."

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :goto_1e
    return-void
.end method

.method public onStart()V
    .registers 1

    .line 156
    return-void
.end method

.method public onStartUser(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .line 110
    iget-object v0, p0, Lcom/android/server/sepunion/FriendsManagerService;->mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    if-eqz v0, :cond_8

    .line 111
    invoke-virtual {v0, p1}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->onStartUser(I)V

    goto :goto_10

    .line 113
    :cond_8
    sget-object v0, Lcom/android/server/sepunion/FriendsManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mFrsServiceImpl is null."

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_10
    return-void
.end method

.method public onStopUser(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .line 119
    iget-object v0, p0, Lcom/android/server/sepunion/FriendsManagerService;->mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    if-eqz v0, :cond_8

    .line 120
    invoke-virtual {v0, p1}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->onStopUser(I)V

    goto :goto_10

    .line 122
    :cond_8
    sget-object v0, Lcom/android/server/sepunion/FriendsManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mFrsServiceImpl is null."

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :goto_10
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .line 128
    iget-object v0, p0, Lcom/android/server/sepunion/FriendsManagerService;->mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    if-eqz v0, :cond_8

    .line 129
    invoke-virtual {v0, p1}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->onSwitchUser(I)V

    goto :goto_10

    .line 131
    :cond_8
    sget-object v0, Lcom/android/server/sepunion/FriendsManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mFrsServiceImpl is null."

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :goto_10
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .line 137
    iget-object v0, p0, Lcom/android/server/sepunion/FriendsManagerService;->mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    if-eqz v0, :cond_8

    .line 138
    invoke-virtual {v0, p1}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->onUnlockUser(I)V

    goto :goto_10

    .line 140
    :cond_8
    sget-object v0, Lcom/android/server/sepunion/FriendsManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mFrsServiceImpl is null."

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :goto_10
    return-void
.end method

.method public screenTurnedOff()V
    .registers 4

    .line 91
    sget-object v0, Lcom/android/server/sepunion/FriendsManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "screenTurnOff"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/android/server/sepunion/FriendsManagerService;->mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    if-eqz v0, :cond_14

    .line 93
    const v1, 0x210002

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->executeAction(ILandroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_1c

    .line 95
    :cond_14
    sget-object v0, Lcom/android/server/sepunion/FriendsManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mFrsServiceImpl is null."

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :goto_1c
    return-void
.end method
