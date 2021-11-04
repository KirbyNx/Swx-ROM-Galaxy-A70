.class Lcom/android/server/accessibility/GestureWakeup$1;
.super Ljava/lang/Object;
.source "GestureWakeup.java"

# interfaces
.implements Lcom/samsung/android/hardware/context/SemContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/GestureWakeup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/GestureWakeup;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/GestureWakeup;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/accessibility/GestureWakeup;

    .line 123
    iput-object p1, p0, Lcom/android/server/accessibility/GestureWakeup$1;->this$0:Lcom/android/server/accessibility/GestureWakeup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSemContextChanged(Lcom/samsung/android/hardware/context/SemContextEvent;)V
    .registers 8
    .param p1, "semContextEvent"    # Lcom/samsung/android/hardware/context/SemContextEvent;

    .line 125
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getApproachContext()Lcom/samsung/android/hardware/context/SemContextApproach;

    move-result-object v0

    .line 126
    .local v0, "approach":Lcom/samsung/android/hardware/context/SemContextApproach;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 127
    .local v1, "currentUser":I
    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContextApproach;->getUserID()I

    move-result v2

    .line 128
    .local v2, "userId":I
    iget-object v3, p1, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    invoke-virtual {v3}, Lcom/samsung/android/hardware/context/SemContext;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_59

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSContextChanged() Approach, userId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , currentUser : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", setting : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/accessibility/GestureWakeup$1;->this$0:Lcom/android/server/accessibility/GestureWakeup;

    .line 130
    # getter for: Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/accessibility/GestureWakeup;->access$000(Lcom/android/server/accessibility/GestureWakeup;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/accessibility/GestureWakeup;->checkSettingCondition(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 129
    const-string v4, "GestureWakeup"

    invoke-static {v4, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v3, p0, Lcom/android/server/accessibility/GestureWakeup$1;->this$0:Lcom/android/server/accessibility/GestureWakeup;

    # getter for: Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/accessibility/GestureWakeup;->access$000(Lcom/android/server/accessibility/GestureWakeup;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/accessibility/GestureWakeup;->checkSettingCondition(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_59

    if-ne v2, v1, :cond_59

    .line 132
    iget-object v3, p0, Lcom/android/server/accessibility/GestureWakeup$1;->this$0:Lcom/android/server/accessibility/GestureWakeup;

    # invokes: Lcom/android/server/accessibility/GestureWakeup;->launchGestureWakeup()V
    invoke-static {v3}, Lcom/android/server/accessibility/GestureWakeup;->access$100(Lcom/android/server/accessibility/GestureWakeup;)V

    .line 135
    :cond_59
    return-void
.end method
