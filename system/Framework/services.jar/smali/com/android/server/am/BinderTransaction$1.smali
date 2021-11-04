.class Lcom/android/server/am/BinderTransaction$1;
.super Ljava/lang/Thread;
.source "BinderTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/BinderTransaction;->getInfo(I)Lcom/android/server/am/BinderTransaction$BinderProcsInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BinderTransaction;

.field final synthetic val$startPid:I

.field final synthetic val$workInfo:Lcom/android/server/am/BinderTransaction$BinderProcsInfo;


# direct methods
.method constructor <init>(Lcom/android/server/am/BinderTransaction;Ljava/lang/String;Lcom/android/server/am/BinderTransaction$BinderProcsInfo;I)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/am/BinderTransaction;
    .param p2, "name"    # Ljava/lang/String;

    .line 111
    iput-object p1, p0, Lcom/android/server/am/BinderTransaction$1;->this$0:Lcom/android/server/am/BinderTransaction;

    iput-object p3, p0, Lcom/android/server/am/BinderTransaction$1;->val$workInfo:Lcom/android/server/am/BinderTransaction$BinderProcsInfo;

    iput p4, p0, Lcom/android/server/am/BinderTransaction$1;->val$startPid:I

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 113
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 114
    .local v0, "targetPids":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 117
    .local v1, "scannedPids":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/server/am/BinderTransaction$1;->val$workInfo:Lcom/android/server/am/BinderTransaction$BinderProcsInfo;

    iget-object v2, v2, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->rawInfo:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/am/BinderTransaction$1;->this$0:Lcom/android/server/am/BinderTransaction;

    iget v4, p0, Lcom/android/server/am/BinderTransaction$1;->val$startPid:I

    # invokes: Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsLogHeader(I)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/server/am/BinderTransaction;->access$000(Lcom/android/server/am/BinderTransaction;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    iget v2, p0, Lcom/android/server/am/BinderTransaction$1;->val$startPid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 121
    :goto_22
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_63

    .line 123
    invoke-virtual {v0}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 126
    .local v2, "currentPid":I
    iget-object v3, p0, Lcom/android/server/am/BinderTransaction$1;->this$0:Lcom/android/server/am/BinderTransaction;

    iget-object v4, p0, Lcom/android/server/am/BinderTransaction$1;->val$workInfo:Lcom/android/server/am/BinderTransaction$BinderProcsInfo;

    iget-object v4, v4, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->rawInfo:Ljava/util/ArrayList;

    # invokes: Lcom/android/server/am/BinderTransaction;->findBinderTransactions(ILjava/util/LinkedList;Ljava/util/LinkedList;Ljava/util/ArrayList;)Z
    invoke-static {v3, v2, v0, v1, v4}, Lcom/android/server/am/BinderTransaction;->access$100(Lcom/android/server/am/BinderTransaction;ILjava/util/LinkedList;Ljava/util/LinkedList;Ljava/util/ArrayList;)Z

    move-result v3

    .line 128
    .local v3, "successful":Z
    if-nez v3, :cond_62

    .line 130
    iget-object v4, p0, Lcom/android/server/am/BinderTransaction$1;->val$workInfo:Lcom/android/server/am/BinderTransaction$BinderProcsInfo;

    iget-object v4, v4, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->rawInfo:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/am/BinderTransaction$1;->this$0:Lcom/android/server/am/BinderTransaction;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    # getter for: Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_FAILED_TO_GET_THE_BINDER_TRANSACTION:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/BinderTransaction;->access$200()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 130
    # invokes: Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsErrorLog(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/server/am/BinderTransaction;->access$300(Lcom/android/server/am/BinderTransaction;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    .end local v2    # "currentPid":I
    .end local v3    # "successful":Z
    :cond_62
    goto :goto_22

    .line 138
    :cond_63
    iget-object v2, p0, Lcom/android/server/am/BinderTransaction$1;->this$0:Lcom/android/server/am/BinderTransaction;

    iget-object v3, p0, Lcom/android/server/am/BinderTransaction$1;->val$workInfo:Lcom/android/server/am/BinderTransaction$BinderProcsInfo;

    # invokes: Lcom/android/server/am/BinderTransaction;->separatePidsByProcessType(Ljava/util/LinkedList;Lcom/android/server/am/BinderTransaction$BinderProcsInfo;)Z
    invoke-static {v2, v1, v3}, Lcom/android/server/am/BinderTransaction;->access$400(Lcom/android/server/am/BinderTransaction;Ljava/util/LinkedList;Lcom/android/server/am/BinderTransaction$BinderProcsInfo;)Z

    move-result v2

    .line 139
    .local v2, "successful":Z
    if-nez v2, :cond_7e

    .line 141
    iget-object v3, p0, Lcom/android/server/am/BinderTransaction$1;->val$workInfo:Lcom/android/server/am/BinderTransaction$BinderProcsInfo;

    iget-object v3, v3, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->rawInfo:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/am/BinderTransaction$1;->this$0:Lcom/android/server/am/BinderTransaction;

    .line 142
    # getter for: Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_FAILED_TO_GET_THE_PROCESS_TYPES:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/BinderTransaction;->access$500()Ljava/lang/String;

    move-result-object v5

    .line 141
    # invokes: Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsErrorLog(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/server/am/BinderTransaction;->access$300(Lcom/android/server/am/BinderTransaction;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_7e
    iget-object v3, p0, Lcom/android/server/am/BinderTransaction$1;->val$workInfo:Lcom/android/server/am/BinderTransaction$BinderProcsInfo;

    iget-object v3, v3, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->rawInfo:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/am/BinderTransaction$1;->this$0:Lcom/android/server/am/BinderTransaction;

    iget v5, p0, Lcom/android/server/am/BinderTransaction$1;->val$startPid:I

    # invokes: Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsLogFooter(I)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/server/am/BinderTransaction;->access$600(Lcom/android/server/am/BinderTransaction;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    return-void
.end method
