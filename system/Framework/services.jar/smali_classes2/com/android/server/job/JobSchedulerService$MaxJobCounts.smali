.class Lcom/android/server/job/JobSchedulerService$MaxJobCounts;
.super Ljava/lang/Object;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MaxJobCounts"
.end annotation


# instance fields
.field private final mMaxBg:Landroid/util/KeyValueListParser$IntValue;

.field private final mMinBg:Landroid/util/KeyValueListParser$IntValue;

.field private final mTotal:Landroid/util/KeyValueListParser$IntValue;


# direct methods
.method constructor <init>(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .registers 8
    .param p1, "totalDefault"    # I
    .param p2, "totalKey"    # Ljava/lang/String;
    .param p3, "maxBgDefault"    # I
    .param p4, "maxBgKey"    # Ljava/lang/String;
    .param p5, "minBgDefault"    # I
    .param p6, "minBgKey"    # Ljava/lang/String;

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    new-instance v0, Landroid/util/KeyValueListParser$IntValue;

    invoke-direct {v0, p2, p1}, Landroid/util/KeyValueListParser$IntValue;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mTotal:Landroid/util/KeyValueListParser$IntValue;

    .line 385
    new-instance v0, Landroid/util/KeyValueListParser$IntValue;

    invoke-direct {v0, p4, p3}, Landroid/util/KeyValueListParser$IntValue;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMaxBg:Landroid/util/KeyValueListParser$IntValue;

    .line 386
    new-instance v0, Landroid/util/KeyValueListParser$IntValue;

    invoke-direct {v0, p6, p5}, Landroid/util/KeyValueListParser$IntValue;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMinBg:Landroid/util/KeyValueListParser$IntValue;

    .line 387
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 436
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mTotal:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v0, p1, p2}, Landroid/util/KeyValueListParser$IntValue;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMaxBg:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v0, p1, p2}, Landroid/util/KeyValueListParser$IntValue;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMinBg:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v0, p1, p2}, Landroid/util/KeyValueListParser$IntValue;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 439
    return-void
.end method

.method public dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 442
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 443
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mTotal:Landroid/util/KeyValueListParser$IntValue;

    const-wide v3, 0x10500000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/util/KeyValueListParser$IntValue;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 444
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMaxBg:Landroid/util/KeyValueListParser$IntValue;

    const-wide v3, 0x10500000002L

    invoke-virtual {v2, p1, v3, v4}, Landroid/util/KeyValueListParser$IntValue;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 445
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMinBg:Landroid/util/KeyValueListParser$IntValue;

    const-wide v3, 0x10500000003L

    invoke-virtual {v2, p1, v3, v4}, Landroid/util/KeyValueListParser$IntValue;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 446
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 447
    return-void
.end method

.method public getMaxBg()I
    .registers 2

    .line 424
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMaxBg:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v0}, Landroid/util/KeyValueListParser$IntValue;->getValue()I

    move-result v0

    return v0
.end method

.method public getMaxTotal()I
    .registers 2

    .line 419
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mTotal:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v0}, Landroid/util/KeyValueListParser$IntValue;->getValue()I

    move-result v0

    return v0
.end method

.method public getMinBg()I
    .registers 2

    .line 432
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMinBg:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v0}, Landroid/util/KeyValueListParser$IntValue;->getValue()I

    move-result v0

    return v0
.end method

.method public parse(Landroid/util/KeyValueListParser;)V
    .registers 5
    .param p1, "parser"    # Landroid/util/KeyValueListParser;

    .line 390
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mTotal:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v0, p1}, Landroid/util/KeyValueListParser$IntValue;->parse(Landroid/util/KeyValueListParser;)V

    .line 391
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMaxBg:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v0, p1}, Landroid/util/KeyValueListParser$IntValue;->parse(Landroid/util/KeyValueListParser;)V

    .line 392
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMinBg:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v0, p1}, Landroid/util/KeyValueListParser$IntValue;->parse(Landroid/util/KeyValueListParser;)V

    .line 394
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mTotal:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v0}, Landroid/util/KeyValueListParser$IntValue;->getValue()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1e

    .line 395
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mTotal:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v0, v1}, Landroid/util/KeyValueListParser$IntValue;->setValue(I)V

    goto :goto_2d

    .line 396
    :cond_1e
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mTotal:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v0}, Landroid/util/KeyValueListParser$IntValue;->getValue()I

    move-result v0

    const/16 v2, 0x10

    if-le v0, v2, :cond_2d

    .line 397
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mTotal:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v0, v2}, Landroid/util/KeyValueListParser$IntValue;->setValue(I)V

    .line 400
    :cond_2d
    :goto_2d
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMaxBg:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v0}, Landroid/util/KeyValueListParser$IntValue;->getValue()I

    move-result v0

    if-ge v0, v1, :cond_3b

    .line 401
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMaxBg:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v0, v1}, Landroid/util/KeyValueListParser$IntValue;->setValue(I)V

    goto :goto_54

    .line 402
    :cond_3b
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMaxBg:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v0}, Landroid/util/KeyValueListParser$IntValue;->getValue()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mTotal:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v2}, Landroid/util/KeyValueListParser$IntValue;->getValue()I

    move-result v2

    if-le v0, v2, :cond_54

    .line 403
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMaxBg:Landroid/util/KeyValueListParser$IntValue;

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mTotal:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v2}, Landroid/util/KeyValueListParser$IntValue;->getValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/KeyValueListParser$IntValue;->setValue(I)V

    .line 405
    :cond_54
    :goto_54
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMinBg:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v0}, Landroid/util/KeyValueListParser$IntValue;->getValue()I

    move-result v0

    if-gez v0, :cond_63

    .line 406
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMinBg:Landroid/util/KeyValueListParser$IntValue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/KeyValueListParser$IntValue;->setValue(I)V

    goto :goto_96

    .line 408
    :cond_63
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMinBg:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v0}, Landroid/util/KeyValueListParser$IntValue;->getValue()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMaxBg:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v2}, Landroid/util/KeyValueListParser$IntValue;->getValue()I

    move-result v2

    if-le v0, v2, :cond_7c

    .line 409
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMinBg:Landroid/util/KeyValueListParser$IntValue;

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMaxBg:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v2}, Landroid/util/KeyValueListParser$IntValue;->getValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/KeyValueListParser$IntValue;->setValue(I)V

    .line 411
    :cond_7c
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMinBg:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v0}, Landroid/util/KeyValueListParser$IntValue;->getValue()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mTotal:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v2}, Landroid/util/KeyValueListParser$IntValue;->getValue()I

    move-result v2

    if-lt v0, v2, :cond_96

    .line 412
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMinBg:Landroid/util/KeyValueListParser$IntValue;

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mTotal:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v2}, Landroid/util/KeyValueListParser$IntValue;->getValue()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/util/KeyValueListParser$IntValue;->setValue(I)V

    .line 415
    :cond_96
    :goto_96
    return-void
.end method
