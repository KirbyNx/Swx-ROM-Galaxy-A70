.class public Lcom/android/server/asks/ADPContainer$ADPPolicy;
.super Ljava/lang/Object;
.source "ADPContainer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/asks/ADPContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ADPPolicy"
.end annotation


# instance fields
.field private format:Ljava/lang/String;

.field private hashCode:Ljava/lang/String;

.field private pattern:Ljava/lang/String;

.field private versionType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p1, "_pattern"    # Ljava/lang/String;
    .param p2, "_hashCode"    # Ljava/lang/String;
    .param p3, "_versionType"    # I
    .param p4, "_format"    # Ljava/lang/String;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->pattern:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->hashCode:Ljava/lang/String;

    .line 38
    iput p3, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->versionType:I

    .line 39
    iput-object p4, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->format:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 100
    move-object v0, p1

    check-cast v0, Lcom/android/server/asks/ADPContainer$ADPPolicy;

    .line 102
    .local v0, "policy":Lcom/android/server/asks/ADPContainer$ADPPolicy;
    iget v1, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->versionType:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    const v4, 0x65837583

    if-ne v1, v4, :cond_23

    .line 104
    iget-object v1, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->format:Ljava/lang/String;

    if-nez v1, :cond_11

    .line 105
    return v3

    .line 107
    :cond_11
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->hashCode:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getHashCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/android/server/asks/ADPOperation;->isGreaterOrEqual(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 108
    return v2

    .line 110
    :cond_22
    return v3

    .line 113
    :cond_23
    iget-object v4, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->hashCode:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getHashCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/android/server/asks/ADPOperation;->isGreaterOrEqual(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 114
    return v2

    .line 116
    :cond_30
    return v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 80
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 81
    return v0

    .line 83
    :cond_4
    move-object v1, p1

    check-cast v1, Lcom/android/server/asks/ADPContainer$ADPPolicy;

    .line 85
    .local v1, "policy":Lcom/android/server/asks/ADPContainer$ADPPolicy;
    invoke-virtual {p0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getPattern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 86
    .local v2, "regex":Ljava/util/regex/Pattern;
    invoke-virtual {v1}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getHashCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 88
    .local v3, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_1e

    .line 89
    return v0

    .line 91
    :cond_1e
    invoke-virtual {v1}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getPattern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 92
    .end local v2    # "regex":Ljava/util/regex/Pattern;
    .local v0, "regex":Ljava/util/regex/Pattern;
    invoke-virtual {p0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getHashCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 94
    .end local v3    # "matcher":Ljava/util/regex/Matcher;
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    return v3
.end method

.method public findMatcherByHashCode(Ljava/lang/String;)Z
    .registers 5
    .param p1, "hCode"    # Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->pattern:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 66
    .local v0, "regex":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 67
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    return v2
.end method

.method public findMatcherByPattern(Ljava/lang/String;)Z
    .registers 5
    .param p1, "ptn"    # Ljava/lang/String;

    .line 72
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 73
    .local v0, "regex":Ljava/util/regex/Pattern;
    iget-object v1, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->hashCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 74
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    return v2
.end method

.method generateADPrule(I)Ljava/util/HashMap;
    .registers 5
    .param p1, "vType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 53
    .local v0, "targetRule":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const v1, 0x65837583

    if-ne p1, v1, :cond_12

    .line 54
    iget-object v1, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->format:Ljava/lang/String;

    const-string/jumbo v2, "format"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_12
    iget-object v1, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->pattern:Ljava/lang/String;

    const-string/jumbo v2, "pattern"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "versionType"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v1, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->hashCode:Ljava/lang/String;

    const-string/jumbo v2, "hashCode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->format:Ljava/lang/String;

    return-object v0
.end method

.method public getHashCode()Ljava/lang/String;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->hashCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionType()I
    .registers 2

    .line 44
    iget v0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->versionType:I

    return v0
.end method
