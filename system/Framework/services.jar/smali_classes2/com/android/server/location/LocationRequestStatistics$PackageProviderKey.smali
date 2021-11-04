.class public Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;
.super Ljava/lang/Object;
.source "LocationRequestStatistics.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LocationRequestStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageProviderKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;",
        ">;"
    }
.end annotation


# instance fields
.field public final mFeatureId:Ljava/lang/String;

.field public final mPackageName:Ljava/lang/String;

.field public final mProviderName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "featureId"    # Ljava/lang/String;
    .param p3, "providerName"    # Ljava/lang/String;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->mPackageName:Ljava/lang/String;

    .line 122
    iput-object p2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->mFeatureId:Ljava/lang/String;

    .line 123
    iput-object p3, p0, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->mProviderName:Ljava/lang/String;

    .line 124
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;)I
    .registers 7
    .param p1, "other"    # Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;

    .line 138
    iget-object v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->mProviderName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->mProviderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 139
    .local v0, "providerCompare":I
    if-eqz v0, :cond_b

    .line 140
    return v0

    .line 143
    :cond_b
    iget-object v1, p0, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->mPackageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    .line 144
    .local v1, "packageCompare":I
    if-eqz v1, :cond_16

    .line 145
    return v1

    .line 148
    :cond_16
    iget-object v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->mFeatureId:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->mFeatureId:Ljava/lang/String;

    sget-object v4, Lcom/android/server/location/-$$Lambda$TEfSBt3hRUlBSSARfPEHsJesTtE;->INSTANCE:Lcom/android/server/location/-$$Lambda$TEfSBt3hRUlBSSARfPEHsJesTtE;

    .line 149
    invoke-static {v4}, Ljava/util/Comparator;->nullsFirst(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v4

    .line 148
    invoke-static {v2, v3, v4}, Ljava/util/Objects;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 104
    check-cast p1, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;

    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->compareTo(Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 154
    instance-of v0, p1, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 155
    return v1

    .line 158
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;

    .line 159
    .local v0, "otherKey":Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;
    iget-object v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->mPackageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->mProviderName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->mProviderName:Ljava/lang/String;

    .line 160
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->mFeatureId:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->mFeatureId:Ljava/lang/String;

    .line 161
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v1, 0x1

    goto :goto_2a

    :cond_29
    nop

    .line 159
    :goto_2a
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 166
    iget-object v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->mProviderName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 167
    .local v0, "hash":I
    iget-object v1, p0, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->mFeatureId:Ljava/lang/String;

    if-eqz v1, :cond_1b

    .line 168
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v2, v0, 0x1f

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 170
    :cond_1b
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->mProviderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-object v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->mFeatureId:Ljava/lang/String;

    if-nez v2, :cond_1b

    const-string v1, ""

    goto :goto_2c

    :cond_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->mFeatureId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    return-object v0
.end method
