.class Lcom/android/server/enterprise/wifi/WifiPolicy$WifiSSIDContainerReceiver;
.super Landroid/os/ContainerStateReceiver;
.source "WifiPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/wifi/WifiPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiSSIDContainerReceiver"
.end annotation


# instance fields
.field private personaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

.field private semPersonaManagerService:Lcom/samsung/android/knox/SemPersonaManager;

.field final synthetic this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/wifi/WifiPolicy;)V
    .registers 2

    .line 365
    iput-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$WifiSSIDContainerReceiver;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    invoke-direct {p0}, Landroid/os/ContainerStateReceiver;-><init>()V

    .line 362
    new-instance p1, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    invoke-direct {p1}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$WifiSSIDContainerReceiver;->personaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 363
    invoke-virtual {p1}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$WifiSSIDContainerReceiver;->semPersonaManagerService:Lcom/samsung/android/knox/SemPersonaManager;

    .line 366
    invoke-virtual {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy$WifiSSIDContainerReceiver;->updateCurrentContainerLauncherState()Z

    .line 367
    return-void
.end method


# virtual methods
.method public onContainerSwitch(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I
    .param p3, "b"    # Landroid/os/Bundle;

    .line 371
    invoke-virtual {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy$WifiSSIDContainerReceiver;->onEvent()V

    .line 372
    return-void
.end method

.method public onEvent()V
    .registers 3

    .line 380
    invoke-virtual {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy$WifiSSIDContainerReceiver;->updateCurrentContainerLauncherState()Z

    move-result v0

    .line 381
    .local v0, "isChanged":Z
    if-eqz v0, :cond_b

    .line 382
    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$WifiSSIDContainerReceiver;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    invoke-virtual {v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->refreshWifiSSID()V

    .line 384
    :cond_b
    return-void
.end method

.method public onPersonalSwitch(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "b"    # Landroid/os/Bundle;

    .line 376
    invoke-virtual {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy$WifiSSIDContainerReceiver;->onEvent()V

    .line 377
    return-void
.end method

.method public updateCurrentContainerLauncherState()Z
    .registers 4

    .line 387
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$WifiSSIDContainerReceiver;->semPersonaManagerService:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedLauncherId()I

    move-result v0

    .line 388
    .local v0, "userHandle":I
    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$WifiSSIDContainerReceiver;->personaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isManagedProfile(I)Z

    move-result v1

    .line 389
    .local v1, "newState":Z
    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$WifiSSIDContainerReceiver;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    # getter for: Lcom/android/server/enterprise/wifi/WifiPolicy;->mIsCurrentlyInContainerLauncher:Z
    invoke-static {v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->access$100(Lcom/android/server/enterprise/wifi/WifiPolicy;)Z

    move-result v2

    if-ne v1, v2, :cond_16

    .line 390
    const/4 v2, 0x0

    return v2

    .line 392
    :cond_16
    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$WifiSSIDContainerReceiver;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    # setter for: Lcom/android/server/enterprise/wifi/WifiPolicy;->mIsCurrentlyInContainerLauncher:Z
    invoke-static {v2, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->access$102(Lcom/android/server/enterprise/wifi/WifiPolicy;Z)Z

    .line 393
    const/4 v2, 0x1

    return v2
.end method
