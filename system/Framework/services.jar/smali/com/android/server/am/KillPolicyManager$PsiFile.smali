.class public Lcom/android/server/am/KillPolicyManager$PsiFile;
.super Ljava/lang/Object;
.source "KillPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/KillPolicyManager;
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
.method public constructor <init>(Ljava/lang/String;Lcom/android/server/am/KillPolicyManager$PsiDataType;)V
    .registers 6
    .param p1, "psiText"    # Ljava/lang/String;
    .param p2, "dataType"    # Lcom/android/server/am/KillPolicyManager$PsiDataType;

    .line 1990
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1991
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1992
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1993
    .local v0, "lines":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/-$$Lambda$KillPolicyManager$PsiFile$e0x36PTSMlpoRtZaVw1q0VK1WyI;

    invoke-direct {v2, p0, p2}, Lcom/android/server/am/-$$Lambda$KillPolicyManager$PsiFile$e0x36PTSMlpoRtZaVw1q0VK1WyI;-><init>(Lcom/android/server/am/KillPolicyManager$PsiFile;Lcom/android/server/am/KillPolicyManager$PsiDataType;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 2008
    .end local v0    # "lines":[Ljava/lang/String;
    goto :goto_1f

    .line 2009
    :cond_1c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/KillPolicyManager$PsiFile;->mIsEmptyFile:Z

    .line 2011
    :goto_1f
    return-void
.end method

.method private getItem(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "itemName"    # Ljava/lang/String;
    .param p3, "index"    # I

    .line 2014
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2015
    .local v0, "items":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2017
    .local v1, "compare":Ljava/lang/String;
    array-length v2, v0

    if-le v2, p3, :cond_2b

    aget-object v2, v0, p3

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 2018
    aget-object v2, v0, p3

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2021
    :cond_2b
    const-string v2, "0"

    return-object v2
.end method


# virtual methods
.method public getFullAvg10()D
    .registers 3

    .line 2029
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$PsiFile;->mFullAvg10:D

    return-wide v0
.end method

.method public getPsiFullTotal()J
    .registers 3

    .line 2034
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$PsiFile;->mPsiFullTotal:J

    return-wide v0
.end method

.method public getPsiSomeTotal()J
    .registers 3

    .line 2032
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$PsiFile;->mPsiSomeTotal:J

    return-wide v0
.end method

.method public getSomeAvg10()D
    .registers 3

    .line 2025
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$PsiFile;->mSomeAvg10:D

    return-wide v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 2037
    iget-boolean v0, p0, Lcom/android/server/am/KillPolicyManager$PsiFile;->mIsEmptyFile:Z

    return v0
.end method

.method public synthetic lambda$new$0$KillPolicyManager$PsiFile(Lcom/android/server/am/KillPolicyManager$PsiDataType;Ljava/lang/String;)V
    .registers 8
    .param p1, "dataType"    # Lcom/android/server/am/KillPolicyManager$PsiDataType;
    .param p2, "line"    # Ljava/lang/String;

    .line 1994
    const-string/jumbo v0, "some"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x4

    const-string/jumbo v2, "total"

    const/4 v3, 0x1

    const-string v4, "avg10"

    if-eqz v0, :cond_2e

    .line 1995
    sget-object v0, Lcom/android/server/am/KillPolicyManager$PsiDataType;->AVG10:Lcom/android/server/am/KillPolicyManager$PsiDataType;

    if-ne p1, v0, :cond_1f

    .line 1996
    invoke-direct {p0, p2, v4, v3}, Lcom/android/server/am/KillPolicyManager$PsiFile;->getItem(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$PsiFile;->mSomeAvg10:D

    goto :goto_54

    .line 1997
    :cond_1f
    sget-object v0, Lcom/android/server/am/KillPolicyManager$PsiDataType;->TOTAL:Lcom/android/server/am/KillPolicyManager$PsiDataType;

    if-ne p1, v0, :cond_54

    .line 1998
    invoke-direct {p0, p2, v2, v1}, Lcom/android/server/am/KillPolicyManager$PsiFile;->getItem(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$PsiFile;->mPsiSomeTotal:J

    goto :goto_54

    .line 2000
    :cond_2e
    const-string/jumbo v0, "full"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 2001
    sget-object v0, Lcom/android/server/am/KillPolicyManager$PsiDataType;->AVG10:Lcom/android/server/am/KillPolicyManager$PsiDataType;

    if-ne p1, v0, :cond_46

    .line 2002
    invoke-direct {p0, p2, v4, v3}, Lcom/android/server/am/KillPolicyManager$PsiFile;->getItem(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$PsiFile;->mFullAvg10:D

    goto :goto_54

    .line 2003
    :cond_46
    sget-object v0, Lcom/android/server/am/KillPolicyManager$PsiDataType;->TOTAL:Lcom/android/server/am/KillPolicyManager$PsiDataType;

    if-ne p1, v0, :cond_54

    .line 2004
    invoke-direct {p0, p2, v2, v1}, Lcom/android/server/am/KillPolicyManager$PsiFile;->getItem(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$PsiFile;->mPsiFullTotal:J

    .line 2007
    :cond_54
    :goto_54
    return-void
.end method
