.class Lcom/android/server/notification/ManagedServices$1$1;
.super Ljava/lang/Object;
.source "ManagedServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/ManagedServices$1;->onBindingDied(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/notification/ManagedServices$1;

.field final synthetic val$name:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/android/server/notification/ManagedServices$1;Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/server/notification/ManagedServices$1;

    .line 1391
    iput-object p1, p0, Lcom/android/server/notification/ManagedServices$1$1;->this$1:Lcom/android/server/notification/ManagedServices$1;

    iput-object p2, p0, Lcom/android/server/notification/ManagedServices$1$1;->val$name:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1394
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$1$1;->this$1:Lcom/android/server/notification/ManagedServices$1;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$1$1;->val$name:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/server/notification/ManagedServices$1$1;->this$1:Lcom/android/server/notification/ManagedServices$1;

    iget v2, v2, Lcom/android/server/notification/ManagedServices$1;->val$userid:I

    # invokes: Lcom/android/server/notification/ManagedServices;->registerService(Landroid/content/ComponentName;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/notification/ManagedServices;->access$500(Lcom/android/server/notification/ManagedServices;Landroid/content/ComponentName;I)V

    .line 1395
    return-void
.end method
