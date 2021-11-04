.class public Lcom/samsung/android/knox/analytics/util/ZipResult;
.super Ljava/lang/Object;
.source "ZipResult.java"


# instance fields
.field private content:[B

.field private length:I

.field private originalLength:I


# direct methods
.method public constructor <init>([BII)V
    .registers 4
    .param p1, "content"    # [B
    .param p2, "length"    # I
    .param p3, "originalLength"    # I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/util/ZipResult;->content:[B

    .line 11
    iput p2, p0, Lcom/samsung/android/knox/analytics/util/ZipResult;->length:I

    .line 12
    iput p3, p0, Lcom/samsung/android/knox/analytics/util/ZipResult;->originalLength:I

    .line 13
    return-void
.end method


# virtual methods
.method public getContent()[B
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/util/ZipResult;->content:[B

    return-object v0
.end method

.method public getLength()I
    .registers 2

    .line 20
    iget v0, p0, Lcom/samsung/android/knox/analytics/util/ZipResult;->length:I

    return v0
.end method

.method public getOriginalLength()I
    .registers 2

    .line 24
    iget v0, p0, Lcom/samsung/android/knox/analytics/util/ZipResult;->originalLength:I

    return v0
.end method
