.class Lcom/android/server/power/PowerManagerService$19;
.super Lcom/samsung/android/cover/CoverManager$CoverStateListener;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;

    .line 10288
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$19;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager$CoverStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverAttachStateChanged(Z)V
    .registers 7
    .param p1, "attach"    # Z

    .line 10295
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$19;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mFeatureCoverSysfs:Z
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$18800(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 10297
    const-string v0, "PowerManagerService"

    if-eqz p1, :cond_22

    .line 10298
    :try_start_c
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$19;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$18900(Lcom/android/server/power/PowerManagerService;)Lcom/samsung/android/cover/CoverManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    .line 10299
    .local v1, "state":Lcom/samsung/android/cover/CoverState;
    if-eqz v1, :cond_21

    .line 10300
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$19;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v3

    # setter for: Lcom/android/server/power/PowerManagerService;->mCoverType:I
    invoke-static {v2, v3}, Lcom/android/server/power/PowerManagerService;->access$14102(Lcom/android/server/power/PowerManagerService;I)I

    .line 10302
    .end local v1    # "state":Lcom/samsung/android/cover/CoverState;
    :cond_21
    goto :goto_28

    .line 10303
    :cond_22
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$19;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x2

    # setter for: Lcom/android/server/power/PowerManagerService;->mCoverType:I
    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->access$14102(Lcom/android/server/power/PowerManagerService;I)I

    .line 10305
    :goto_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCoverAttachStateChanged: attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  mCoverType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$19;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mCoverType:I
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$14100(Lcom/android/server/power/PowerManagerService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_4b} :catch_4c

    .line 10308
    goto :goto_53

    .line 10306
    :catch_4c
    move-exception v1

    .line 10307
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "onCoverAttachStateChanged: mCoverManager returns NULL."

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10310
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_53
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 10311
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$19;->this$0:Lcom/android/server/power/PowerManagerService;

    # setter for: Lcom/android/server/power/PowerManagerService;->mlastSetCoverTypeTime:J
    invoke-static {v2, v0, v1}, Lcom/android/server/power/PowerManagerService;->access$14202(Lcom/android/server/power/PowerManagerService;J)J

    .line 10312
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$19;->this$0:Lcom/android/server/power/PowerManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCoverAttachStateChanged = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$19;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mCoverType:I
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->access$14100(Lcom/android/server/power/PowerManagerService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/server/power/PowerManagerService;->mlastUpdateCoverTypeReason:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/server/power/PowerManagerService;->access$14302(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 10314
    .end local v0    # "time":J
    :cond_79
    return-void
.end method

.method public onCoverSwitchStateChanged(Z)V
    .registers 2
    .param p1, "swtichState"    # Z

    .line 10291
    return-void
.end method
