.class Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;
.super Ljava/lang/Object;
.source "MARsPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HistoryBuffer"
.end annotation


# instance fields
.field private final buffer:[Ljava/lang/String;

.field private head:I

.field private pointer:I

.field private size:I

.field final synthetic this$0:Lcom/android/server/am/MARsPolicyManager;

.field private totalSize:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsPolicyManager;I)V
    .registers 3
    .param p2, "Size"    # I

    .line 2924
    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2919
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;->size:I

    .line 2920
    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;->totalSize:I

    .line 2921
    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;->head:I

    .line 2922
    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;->pointer:I

    .line 2925
    iput p2, p0, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;->totalSize:I

    .line 2926
    new-array p1, p2, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;->buffer:[Ljava/lang/String;

    .line 2927
    return-void
.end method


# virtual methods
.method public declared-synchronized getBuffer()[Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 2940
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;->buffer:[Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 2940
    .end local p0    # "this":Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSize()I
    .registers 2

    .line 2944
    iget v0, p0, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;->size:I

    return v0
.end method

.method public declared-synchronized put(Ljava/lang/String;)V
    .registers 4
    .param p1, "data"    # Ljava/lang/String;

    monitor-enter p0

    .line 2930
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;->buffer:[Ljava/lang/String;

    iget v1, p0, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;->pointer:I

    aput-object p1, v0, v1

    .line 2931
    iget v0, p0, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;->pointer:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;->totalSize:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;->pointer:I

    .line 2932
    iget v0, p0, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;->size:I

    iget v1, p0, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;->totalSize:I

    if-ne v0, v1, :cond_20

    .line 2933
    iget v0, p0, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;->head:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;->totalSize:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;->head:I

    goto :goto_26

    .line 2935
    .end local p0    # "this":Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;
    :cond_20
    iget v0, p0, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;->size:I
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_28

    .line 2937
    :goto_26
    monitor-exit p0

    return-void

    .line 2929
    .end local p1    # "data":Ljava/lang/String;
    :catchall_28
    move-exception p1

    monitor-exit p0

    throw p1
.end method
