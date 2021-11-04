.class Lcom/android/server/privilege/PrivilegePackage;
.super Ljava/lang/Object;
.source "PrivilegePackage.java"


# instance fields
.field private mAllowed:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "carriers"    # Ljava/lang/String;
    .param p3, "models"    # Ljava/lang/String;
    .param p4, "operations"    # Ljava/lang/String;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/privilege/PrivilegePackage;->mAllowed:Ljava/util/HashMap;

    .line 10
    const-string v0, "#"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_13
    if-ge v4, v2, :cond_1f

    aget-object v5, v1, v4

    .line 11
    .local v5, "carrier":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/privilege/PrivilegePackage;->mAllowed:Ljava/util/HashMap;

    invoke-virtual {v6, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .end local v5    # "carrier":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 14
    :cond_1f
    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    move v4, v3

    :goto_25
    if-ge v4, v2, :cond_31

    aget-object v5, v1, v4

    .line 15
    .local v5, "model":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/privilege/PrivilegePackage;->mAllowed:Ljava/util/HashMap;

    invoke-virtual {v6, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .end local v5    # "model":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 18
    :cond_31
    invoke-virtual {p4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    :goto_36
    if-ge v3, v1, :cond_42

    aget-object v2, v0, v3

    .line 19
    .local v2, "operation":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/privilege/PrivilegePackage;->mAllowed:Ljava/util/HashMap;

    invoke-virtual {v4, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .end local v2    # "operation":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    .line 21
    :cond_42
    return-void
.end method


# virtual methods
.method isAllowed(Ljava/lang/String;)Z
    .registers 3
    .param p1, "allow"    # Ljava/lang/String;

    .line 24
    iget-object v0, p0, Lcom/android/server/privilege/PrivilegePackage;->mAllowed:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/android/server/privilege/PrivilegePackage;->mAllowed:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
