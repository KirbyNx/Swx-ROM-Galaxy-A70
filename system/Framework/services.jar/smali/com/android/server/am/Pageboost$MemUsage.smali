.class final Lcom/android/server/am/Pageboost$MemUsage;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MemUsage"
.end annotation


# instance fields
.field anon:I

.field gpu:I

.field ion:I


# direct methods
.method constructor <init>(III)V
    .registers 4
    .param p1, "anonval"    # I
    .param p2, "ionval"    # I
    .param p3, "gpuval"    # I

    .line 2143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2144
    iput p1, p0, Lcom/android/server/am/Pageboost$MemUsage;->anon:I

    .line 2145
    iput p2, p0, Lcom/android/server/am/Pageboost$MemUsage;->ion:I

    .line 2146
    iput p3, p0, Lcom/android/server/am/Pageboost$MemUsage;->gpu:I

    .line 2147
    return-void
.end method


# virtual methods
.method public getAnon()I
    .registers 2

    .line 2150
    iget v0, p0, Lcom/android/server/am/Pageboost$MemUsage;->anon:I

    return v0
.end method

.method public getGPUMem()I
    .registers 2

    .line 2158
    iget v0, p0, Lcom/android/server/am/Pageboost$MemUsage;->gpu:I

    return v0
.end method

.method public getIONMem()I
    .registers 2

    .line 2154
    iget v0, p0, Lcom/android/server/am/Pageboost$MemUsage;->ion:I

    return v0
.end method

.method public getTotal()I
    .registers 3

    .line 2162
    iget v0, p0, Lcom/android/server/am/Pageboost$MemUsage;->anon:I

    iget v1, p0, Lcom/android/server/am/Pageboost$MemUsage;->ion:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/am/Pageboost$MemUsage;->gpu:I

    add-int/2addr v0, v1

    return v0
.end method
