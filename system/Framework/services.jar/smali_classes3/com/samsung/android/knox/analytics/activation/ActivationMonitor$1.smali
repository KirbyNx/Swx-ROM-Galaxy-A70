.class Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;
.super Ljava/lang/Object;
.source "ActivationMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->bootChecking()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    .line 160
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 162
    # getter for: Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bootChecking() - run"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    const/4 v1, 0x1

    # setter for: Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsOnBootCheckings:Z
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->access$102(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;Z)Z

    .line 164
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    # getter for: Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mTriggers:Ljava/util/BitSet;
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->access$200(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;)Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-nez v0, :cond_20

    .line 165
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    # invokes: Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkDOOnBoot()V
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->access$300(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;)V

    .line 166
    :cond_20
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    # getter for: Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mTriggers:Ljava/util/BitSet;
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->access$200(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;)Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-nez v0, :cond_31

    .line 167
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    # invokes: Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkPOOnBoot()V
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->access$400(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;)V

    .line 168
    :cond_31
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    # getter for: Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mTriggers:Ljava/util/BitSet;
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->access$200(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;)Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-nez v0, :cond_42

    .line 169
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    # invokes: Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkKLMOnBoot()V
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->access$500(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;)V

    .line 170
    :cond_42
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    # getter for: Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mTriggers:Ljava/util/BitSet;
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->access$200(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;)Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-nez v0, :cond_53

    .line 171
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    # invokes: Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkKesOnBoot()V
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->access$600(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;)V

    .line 172
    :cond_53
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    # getter for: Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mTriggers:Ljava/util/BitSet;
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->access$200(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;)Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-nez v0, :cond_64

    .line 173
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    # invokes: Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkELMOnBoot()V
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->access$700(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;)V

    .line 174
    :cond_64
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    # getter for: Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mTriggers:Ljava/util/BitSet;
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->access$200(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;)Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-nez v0, :cond_75

    .line 175
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    # invokes: Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkB2COnBoot()V
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->access$800(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;)V

    .line 176
    :cond_75
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    # invokes: Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkConditionsToStart()V
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->access$900(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;)V

    .line 177
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsOnBootCheckings:Z
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->access$102(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;Z)Z

    .line 178
    # getter for: Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bootChecking() - finished"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void
.end method
