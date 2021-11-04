.class Lcom/android/server/notification/NotificationManagerService$22;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 11968
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$22;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Ljava/lang/String;)V
    .registers 4
    .param p1, "function"    # Ljava/lang/String;

    .line 11971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStart(), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11972
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$22;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mGoodCatchViToastOn:Z
    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->access$14102(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 11973
    return-void
.end method

.method public onStop(Ljava/lang/String;)V
    .registers 4
    .param p1, "function"    # Ljava/lang/String;

    .line 11976
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStop(),"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11977
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$22;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mGoodCatchViToastOn:Z
    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->access$14102(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 11978
    return-void
.end method
