.class Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/lib/metrics/mm/MM07;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RtpStats"
.end annotation


# instance fields
.field private a:B

.field private b:B

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method private constructor <init>(BB)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->a:B

    iput-byte p2, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->b:B

    const/4 p1, 0x0

    iput p1, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->c:I

    iput p1, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->d:I

    iput p1, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->e:I

    iput p1, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->f:I

    return-void
.end method

.method synthetic constructor <init>(BBLcom/att/iqi/lib/metrics/mm/MM07$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;-><init>(BB)V

    return-void
.end method

.method static synthetic a(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;)I
    .registers 1

    iget p0, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->c:I

    return p0
.end method

.method static synthetic a(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;I)I
    .registers 2

    iput p1, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->c:I

    return p1
.end method

.method static synthetic a(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;Ljava/nio/ByteBuffer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->a(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private a(Ljava/nio/ByteBuffer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->a:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->b:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->c:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->d:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->e:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->f:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method

.method static synthetic b(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;)I
    .registers 1

    iget p0, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->d:I

    return p0
.end method

.method static synthetic b(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;I)I
    .registers 2

    iput p1, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->d:I

    return p1
.end method

.method static synthetic c(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;)I
    .registers 1

    iget p0, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->e:I

    return p0
.end method

.method static synthetic c(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;I)I
    .registers 2

    iput p1, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->e:I

    return p1
.end method

.method static synthetic d(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;)I
    .registers 1

    iget p0, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->f:I

    return p0
.end method

.method static synthetic d(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;I)I
    .registers 2

    iput p1, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->f:I

    return p1
.end method

.method static synthetic e(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;)B
    .registers 1

    iget-byte p0, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->a:B

    return p0
.end method

.method static synthetic f(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;)B
    .registers 1

    iget-byte p0, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->b:B

    return p0
.end method


# virtual methods
.method public set(IIII)V
    .registers 5

    iput p1, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->c:I

    iput p2, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->d:I

    iput p3, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->e:I

    iput p4, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->f:I

    return-void
.end method
