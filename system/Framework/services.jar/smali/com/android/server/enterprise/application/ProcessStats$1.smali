.class Lcom/android/server/enterprise/application/ProcessStats$1;
.super Ljava/lang/Object;
.source "ProcessStats.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/application/ProcessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/enterprise/application/ProcessStats$Stats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/server/enterprise/application/ProcessStats$Stats;Lcom/android/server/enterprise/application/ProcessStats$Stats;)I
    .registers 9
    .param p1, "sta"    # Lcom/android/server/enterprise/application/ProcessStats$Stats;
    .param p2, "stb"    # Lcom/android/server/enterprise/application/ProcessStats$Stats;

    .line 239
    iget v0, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    iget v1, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    add-int/2addr v0, v1

    .line 240
    .local v0, "ta":I
    iget v1, p2, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    iget v2, p2, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    add-int/2addr v1, v2

    .line 242
    .local v1, "tb":I
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_13

    .line 243
    if-le v0, v1, :cond_11

    goto :goto_12

    :cond_11
    move v2, v3

    :goto_12
    return v2

    .line 246
    :cond_13
    iget-boolean v4, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->added:Z

    iget-boolean v5, p2, Lcom/android/server/enterprise/application/ProcessStats$Stats;->added:Z

    if-eq v4, v5, :cond_20

    .line 247
    iget-boolean v4, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->added:Z

    if-eqz v4, :cond_1e

    goto :goto_1f

    :cond_1e
    move v2, v3

    :goto_1f
    return v2

    .line 250
    :cond_20
    iget-boolean v4, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->removed:Z

    iget-boolean v5, p2, Lcom/android/server/enterprise/application/ProcessStats$Stats;->removed:Z

    if-eq v4, v5, :cond_2d

    .line 251
    iget-boolean v4, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->added:Z

    if-eqz v4, :cond_2b

    goto :goto_2c

    :cond_2b
    move v2, v3

    :goto_2c
    return v2

    .line 254
    :cond_2d
    const/4 v2, 0x0

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 236
    check-cast p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    check-cast p2, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/application/ProcessStats$1;->compare(Lcom/android/server/enterprise/application/ProcessStats$Stats;Lcom/android/server/enterprise/application/ProcessStats$Stats;)I

    move-result p1

    return p1
.end method
