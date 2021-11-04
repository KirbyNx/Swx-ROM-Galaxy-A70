.class public Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFile;
.super Ljava/lang/Object;
.source "ChimeraCommonUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/chimera/ChimeraCommonUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PsiFile"
.end annotation


# instance fields
.field private mFullAvg10:D

.field private mIsEmptyFile:Z

.field private mPsiFullTotal:J

.field private mPsiSomeTotal:J

.field private mSomeAvg10:D


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiDataType;)V
    .registers 6
    .param p1, "psiText"    # Ljava/lang/String;
    .param p2, "dataType"    # Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiDataType;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    goto :goto_1f

    .line 181
    :cond_c
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "lines":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/ipm/chimera/-$$Lambda$ChimeraCommonUtil$PsiFile$BmJxDtVQfh85s-OFybsli7DyOx0;

    invoke-direct {v2, p0, p2}, Lcom/android/server/ipm/chimera/-$$Lambda$ChimeraCommonUtil$PsiFile$BmJxDtVQfh85s-OFybsli7DyOx0;-><init>(Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFile;Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiDataType;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 198
    return-void

    .line 177
    .end local v0    # "lines":[Ljava/lang/String;
    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFile;->mIsEmptyFile:Z

    .line 178
    return-void
.end method

.method private getItem(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "itemName"    # Ljava/lang/String;
    .param p3, "index"    # I

    .line 201
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "items":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, "compare":Ljava/lang/String;
    array-length v2, v0

    if-le v2, p3, :cond_2b

    aget-object v2, v0, p3

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    aget-object v2, v0, p3

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2d

    :cond_2b
    const-string v2, "0"

    :goto_2d
    return-object v2
.end method


# virtual methods
.method public getFullAvg10()D
    .registers 3

    .line 211
    iget-wide v0, p0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFile;->mFullAvg10:D

    return-wide v0
.end method

.method public getPsiFullTotal()J
    .registers 3

    .line 219
    iget-wide v0, p0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFile;->mPsiFullTotal:J

    return-wide v0
.end method

.method public getPsiSomeTotal()J
    .registers 3

    .line 215
    iget-wide v0, p0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFile;->mPsiSomeTotal:J

    return-wide v0
.end method

.method public getSomeAvg10()D
    .registers 3

    .line 207
    iget-wide v0, p0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFile;->mSomeAvg10:D

    return-wide v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 223
    iget-boolean v0, p0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFile;->mIsEmptyFile:Z

    return v0
.end method

.method public synthetic lambda$new$0$ChimeraCommonUtil$PsiFile(Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiDataType;Ljava/lang/String;)V
    .registers 8
    .param p1, "dataType"    # Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiDataType;
    .param p2, "line"    # Ljava/lang/String;

    .line 183
    const-string/jumbo v0, "some"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x4

    const-string/jumbo v2, "total"

    const/4 v3, 0x1

    const-string v4, "avg10"

    if-eqz v0, :cond_2e

    .line 184
    sget-object v0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiDataType;->AVG10:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiDataType;

    if-ne p1, v0, :cond_1f

    .line 185
    invoke-direct {p0, p2, v4, v3}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFile;->getItem(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFile;->mSomeAvg10:D

    goto :goto_53

    .line 186
    :cond_1f
    sget-object v0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiDataType;->TOTAL:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiDataType;

    if-ne p1, v0, :cond_53

    .line 187
    invoke-direct {p0, p2, v2, v1}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFile;->getItem(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFile;->mPsiSomeTotal:J

    goto :goto_53

    .line 189
    :cond_2e
    const-string v0, "full"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 190
    sget-object v0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiDataType;->AVG10:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiDataType;

    if-ne p1, v0, :cond_45

    .line 191
    invoke-direct {p0, p2, v4, v3}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFile;->getItem(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFile;->mFullAvg10:D

    goto :goto_53

    .line 192
    :cond_45
    sget-object v0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiDataType;->TOTAL:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiDataType;

    if-ne p1, v0, :cond_53

    .line 193
    invoke-direct {p0, p2, v2, v1}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFile;->getItem(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFile;->mPsiFullTotal:J

    .line 197
    :cond_53
    :goto_53
    return-void
.end method
