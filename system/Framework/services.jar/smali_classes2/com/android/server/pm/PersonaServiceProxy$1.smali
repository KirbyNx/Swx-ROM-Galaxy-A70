.class Lcom/android/server/pm/PersonaServiceProxy$1;
.super Landroid/os/ContainerStateReceiver;
.source "PersonaServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PersonaServiceProxy;->registerContainerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaServiceProxy;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaServiceProxy;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/pm/PersonaServiceProxy;

    .line 86
    iput-object p1, p0, Lcom/android/server/pm/PersonaServiceProxy$1;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    invoke-direct {p0}, Landroid/os/ContainerStateReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceOwnerActivated(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "b"    # Landroid/os/Bundle;

    .line 89
    const-string v0, "PersonaManagerService::Proxy"

    const-string/jumbo v1, "onDeviceOwnerActivated..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/android/server/pm/PersonaServiceProxy$1;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/pm/PersonaServiceProxy;->mIsDoEnabled:Z
    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaServiceProxy;->access$002(Lcom/android/server/pm/PersonaServiceProxy;Z)Z

    .line 91
    iget-object v0, p0, Lcom/android/server/pm/PersonaServiceProxy$1;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/pm/PersonaServiceProxy;->findAndConnectToContainerService(I)V
    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaServiceProxy;->access$100(Lcom/android/server/pm/PersonaServiceProxy;I)V

    .line 92
    return-void
.end method
