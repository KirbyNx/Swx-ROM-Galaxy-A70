.class Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;
.super Ljava/lang/Object;
.source "KnoxCustomManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/custom/KnoxCustomManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SystemUIAdapterCallbackDeathRecipient"
.end annotation


# instance fields
.field private key:I

.field final synthetic this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;I)V
    .registers 4
    .param p1, "this$0"    # Lcom/samsung/android/knox/custom/KnoxCustomManagerService;
    .param p2, "key"    # I

    .line 11786
    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11785
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;->key:I

    .line 11787
    iput p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;->key:I

    .line 11788
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 11791
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    # getter for: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mSystemUiCallbacks:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$2300(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_9

    .line 11792
    return-void

    .line 11794
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    # getter for: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mSystemUiCallbacks:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$2300(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;->key:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 11795
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    # getter for: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mSystemUiCallbacks:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$2300(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;->key:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 11796
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    # getter for: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mSystemUiCallbacks:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$2300(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;->key:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11798
    :cond_44
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    # getter for: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mSystemUiCallbacks:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$2300(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_56

    .line 11799
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    const/4 v1, 0x1

    # setter for: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mIsCallbackDied:Z
    invoke-static {v0, v1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$2402(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;Z)Z

    .line 11802
    :cond_56
    return-void
.end method
