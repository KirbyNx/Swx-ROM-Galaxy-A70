.class Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$2;
.super Ljava/lang/Object;
.source "CoverManagerServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 122
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$2;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 125
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$2;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    # getter for: Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;
    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->access$500(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$2;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    # getter for: Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mIsCoverAppCovered:Z
    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->access$600(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 126
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$2;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    # getter for: Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;
    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->access$700(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    move-result-object v0

    if-nez v0, :cond_55

    .line 127
    # getter for: Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "acquireSleepToken"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$2;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    # getter for: Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;
    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->access$900(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "cover"

    invoke-virtual {v1, v3, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->acquireSleepToken(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    move-result-object v1

    # setter for: Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;
    invoke-static {v0, v1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->access$702(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    goto :goto_55

    .line 132
    :cond_34
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$2;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    # getter for: Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;
    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->access$700(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    move-result-object v0

    if-eqz v0, :cond_55

    .line 133
    # getter for: Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "releaseSleepToken"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$2;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    # getter for: Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;
    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->access$700(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;->release()V

    .line 135
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$2;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;
    invoke-static {v0, v1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->access$702(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    .line 138
    :cond_55
    :goto_55
    return-void
.end method
