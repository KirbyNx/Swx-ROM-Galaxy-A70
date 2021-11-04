.class final Lcom/android/server/am/Pageboost$PageboostdProxy;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PageboostdProxy"
.end annotation


# static fields
.field public static final PAGEBOOST_ACTIVELAUNCH:I = 0x4

.field public static final PAGEBOOST_HALT:I = 0x2

.field public static final PAGEBOOST_MEMRECLAIM:I = 0x3

.field public static final PAGEBOOST_PREFETCH:I = 0x1

.field private static conn:Lcom/android/server/am/Pageboost$DaemonConnector; = null

.field private static final socketName:Ljava/lang/String; = "pageboostd"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2792
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static executeCmd(ILjava/lang/String;)V
    .registers 6
    .param p0, "cmd"    # I
    .param p1, "aName"    # Ljava/lang/String;

    .line 2807
    sget-object v0, Lcom/android/server/am/Pageboost$PageboostdProxy;->conn:Lcom/android/server/am/Pageboost$DaemonConnector;

    if-nez v0, :cond_5

    .line 2808
    return-void

    .line 2811
    :cond_5
    const/4 v0, 0x1

    const/16 v1, 0x8

    if-ne p0, v0, :cond_24

    .line 2812
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 2813
    .local v2, "bytes":[B
    array-length v3, v2

    add-int/2addr v3, v1

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2814
    .local v1, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2815
    array-length v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2816
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 2817
    sget-object v0, Lcom/android/server/am/Pageboost$PageboostdProxy;->conn:Lcom/android/server/am/Pageboost$DaemonConnector;

    invoke-virtual {v0, v1}, Lcom/android/server/am/Pageboost$DaemonConnector;->writeDaemon(Ljava/nio/ByteBuffer;)V

    .line 2818
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    .end local v2    # "bytes":[B
    goto :goto_69

    :cond_24
    const/4 v0, 0x2

    const/4 v2, 0x4

    if-ne p0, v0, :cond_35

    .line 2820
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2821
    .restart local v1    # "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2822
    sget-object v0, Lcom/android/server/am/Pageboost$PageboostdProxy;->conn:Lcom/android/server/am/Pageboost$DaemonConnector;

    invoke-virtual {v0, v1}, Lcom/android/server/am/Pageboost$DaemonConnector;->writeDaemon(Ljava/nio/ByteBuffer;)V

    .line 2823
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    goto :goto_69

    :cond_35
    const/4 v0, 0x3

    if-ne p0, v0, :cond_4c

    .line 2825
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2826
    .restart local v1    # "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2827
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2828
    sget-object v0, Lcom/android/server/am/Pageboost$PageboostdProxy;->conn:Lcom/android/server/am/Pageboost$DaemonConnector;

    invoke-virtual {v0, v1}, Lcom/android/server/am/Pageboost$DaemonConnector;->writeDaemon(Ljava/nio/ByteBuffer;)V

    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    goto :goto_68

    .line 2829
    :cond_4c
    if-ne p0, v2, :cond_68

    .line 2830
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 2831
    .local v0, "bytes":[B
    array-length v3, v0

    add-int/2addr v3, v1

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2832
    .restart local v1    # "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2833
    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2834
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 2835
    sget-object v2, Lcom/android/server/am/Pageboost$PageboostdProxy;->conn:Lcom/android/server/am/Pageboost$DaemonConnector;

    invoke-virtual {v2, v1}, Lcom/android/server/am/Pageboost$DaemonConnector;->writeDaemon(Ljava/nio/ByteBuffer;)V

    goto :goto_69

    .line 2829
    .end local v0    # "bytes":[B
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    :cond_68
    :goto_68
    nop

    .line 2837
    :goto_69
    return-void
.end method

.method public static initPageboostdProxy()V
    .registers 2

    .line 2803
    new-instance v0, Lcom/android/server/am/Pageboost$DaemonConnector;

    const-string/jumbo v1, "pageboostd"

    invoke-direct {v0, v1}, Lcom/android/server/am/Pageboost$DaemonConnector;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/Pageboost$PageboostdProxy;->conn:Lcom/android/server/am/Pageboost$DaemonConnector;

    .line 2804
    return-void
.end method
