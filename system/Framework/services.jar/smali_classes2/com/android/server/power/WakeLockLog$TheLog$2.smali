.class Lcom/android/server/power/WakeLockLog$TheLog$2;
.super Ljava/lang/Object;
.source "WakeLockLog.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/WakeLockLog$TheLog;->getAllItems(Lcom/android/server/power/WakeLockLog$LogEntry;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/android/server/power/WakeLockLog$LogEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final mChangeValue:J

.field private mCurrent:I

.field private mCurrentTimeReference:J

.field final synthetic this$0:Lcom/android/server/power/WakeLockLog$TheLog;

.field final synthetic val$tempEntry:Lcom/android/server/power/WakeLockLog$LogEntry;


# direct methods
.method constructor <init>(Lcom/android/server/power/WakeLockLog$TheLog;Lcom/android/server/power/WakeLockLog$LogEntry;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/power/WakeLockLog$TheLog;

    .line 841
    iput-object p1, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->this$0:Lcom/android/server/power/WakeLockLog$TheLog;

    iput-object p2, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->val$tempEntry:Lcom/android/server/power/WakeLockLog$LogEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 842
    iget-object p2, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->this$0:Lcom/android/server/power/WakeLockLog$TheLog;

    # getter for: Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I
    invoke-static {p2}, Lcom/android/server/power/WakeLockLog$TheLog;->access$300(Lcom/android/server/power/WakeLockLog$TheLog;)I

    move-result p2

    iput p2, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->mCurrent:I

    .line 843
    iget-object p2, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->this$0:Lcom/android/server/power/WakeLockLog$TheLog;

    # getter for: Lcom/android/server/power/WakeLockLog$TheLog;->mStartTime:J
    invoke-static {p2}, Lcom/android/server/power/WakeLockLog$TheLog;->access$400(Lcom/android/server/power/WakeLockLog$TheLog;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->mCurrentTimeReference:J

    .line 844
    iget-object p2, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->this$0:Lcom/android/server/power/WakeLockLog$TheLog;

    # getter for: Lcom/android/server/power/WakeLockLog$TheLog;->mChangeCount:J
    invoke-static {p2}, Lcom/android/server/power/WakeLockLog$TheLog;->access$500(Lcom/android/server/power/WakeLockLog$TheLog;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->mChangeValue:J

    return-void
.end method

.method private checkState()V
    .registers 5

    .line 888
    iget-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->mChangeValue:J

    iget-object v2, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->this$0:Lcom/android/server/power/WakeLockLog$TheLog;

    # getter for: Lcom/android/server/power/WakeLockLog$TheLog;->mChangeCount:J
    invoke-static {v2}, Lcom/android/server/power/WakeLockLog$TheLog;->access$500(Lcom/android/server/power/WakeLockLog$TheLog;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    .line 892
    return-void

    .line 889
    :cond_d
    new-instance v0, Ljava/util/ConcurrentModificationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buffer modified, old change: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->mChangeValue:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", new change: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->this$0:Lcom/android/server/power/WakeLockLog$TheLog;

    .line 890
    # getter for: Lcom/android/server/power/WakeLockLog$TheLog;->mChangeCount:J
    invoke-static {v2}, Lcom/android/server/power/WakeLockLog$TheLog;->access$500(Lcom/android/server/power/WakeLockLog$TheLog;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .line 852
    invoke-direct {p0}, Lcom/android/server/power/WakeLockLog$TheLog$2;->checkState()V

    .line 853
    iget v0, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->mCurrent:I

    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->this$0:Lcom/android/server/power/WakeLockLog$TheLog;

    # getter for: Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I
    invoke-static {v1}, Lcom/android/server/power/WakeLockLog$TheLog;->access$600(Lcom/android/server/power/WakeLockLog$TheLog;)I

    move-result v1

    if-eq v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public next()Lcom/android/server/power/WakeLockLog$LogEntry;
    .registers 6

    .line 865
    invoke-direct {p0}, Lcom/android/server/power/WakeLockLog$TheLog$2;->checkState()V

    .line 867
    invoke-virtual {p0}, Lcom/android/server/power/WakeLockLog$TheLog$2;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 871
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->this$0:Lcom/android/server/power/WakeLockLog$TheLog;

    iget v1, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->mCurrent:I

    iget-wide v2, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->mCurrentTimeReference:J

    iget-object v4, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->val$tempEntry:Lcom/android/server/power/WakeLockLog$LogEntry;

    # invokes: Lcom/android/server/power/WakeLockLog$TheLog;->readEntryAt(IJLcom/android/server/power/WakeLockLog$LogEntry;)Lcom/android/server/power/WakeLockLog$LogEntry;
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/power/WakeLockLog$TheLog;->access$700(Lcom/android/server/power/WakeLockLog$TheLog;IJLcom/android/server/power/WakeLockLog$LogEntry;)Lcom/android/server/power/WakeLockLog$LogEntry;

    move-result-object v0

    .line 872
    .local v0, "entry":Lcom/android/server/power/WakeLockLog$LogEntry;
    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->this$0:Lcom/android/server/power/WakeLockLog$TheLog;

    # getter for: Lcom/android/server/power/WakeLockLog$TheLog;->mTranslator:Lcom/android/server/power/WakeLockLog$EntryByteTranslator;
    invoke-static {v1}, Lcom/android/server/power/WakeLockLog$TheLog;->access$800(Lcom/android/server/power/WakeLockLog$TheLog;)Lcom/android/server/power/WakeLockLog$EntryByteTranslator;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->this$0:Lcom/android/server/power/WakeLockLog$TheLog;

    # getter for: Lcom/android/server/power/WakeLockLog$TheLog;->mStartTime:J
    invoke-static {v3}, Lcom/android/server/power/WakeLockLog$TheLog;->access$400(Lcom/android/server/power/WakeLockLog$TheLog;)J

    move-result-wide v3

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->toBytes(Lcom/android/server/power/WakeLockLog$LogEntry;[BJ)I

    move-result v1

    .line 873
    .local v1, "size":I
    iget v2, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->mCurrent:I

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->this$0:Lcom/android/server/power/WakeLockLog$TheLog;

    # getter for: Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B
    invoke-static {v3}, Lcom/android/server/power/WakeLockLog$TheLog;->access$900(Lcom/android/server/power/WakeLockLog$TheLog;)[B

    move-result-object v3

    array-length v3, v3

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->mCurrent:I

    .line 874
    iget-wide v2, v0, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    iput-wide v2, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->mCurrentTimeReference:J

    .line 876
    return-object v0

    .line 868
    .end local v0    # "entry":Lcom/android/server/power/WakeLockLog$LogEntry;
    .end local v1    # "size":I
    :cond_38
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No more entries left."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 841
    invoke-virtual {p0}, Lcom/android/server/power/WakeLockLog$TheLog$2;->next()Lcom/android/server/power/WakeLockLog$LogEntry;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->mCurrent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
