.class public final Lcom/android/server/location/AbstractLocationProvider$State;
.super Ljava/lang/Object;
.source "AbstractLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/AbstractLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "State"
.end annotation


# static fields
.field public static final EMPTY_STATE:Lcom/android/server/location/AbstractLocationProvider$State;


# instance fields
.field public final allowed:Z

.field public final properties:Lcom/android/internal/location/ProviderProperties;

.field public final providerPackageNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 95
    new-instance v0, Lcom/android/server/location/AbstractLocationProvider$State;

    .line 96
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/location/AbstractLocationProvider$State;-><init>(ZLcom/android/internal/location/ProviderProperties;Ljava/util/Set;)V

    sput-object v0, Lcom/android/server/location/AbstractLocationProvider$State;->EMPTY_STATE:Lcom/android/server/location/AbstractLocationProvider$State;

    .line 95
    return-void
.end method

.method private constructor <init>(ZLcom/android/internal/location/ProviderProperties;Ljava/util/Set;)V
    .registers 5
    .param p1, "allowed"    # Z
    .param p2, "properties"    # Lcom/android/internal/location/ProviderProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/android/internal/location/ProviderProperties;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 114
    .local p3, "providerPackageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-boolean p1, p0, Lcom/android/server/location/AbstractLocationProvider$State;->allowed:Z

    .line 116
    iput-object p2, p0, Lcom/android/server/location/AbstractLocationProvider$State;->properties:Lcom/android/internal/location/ProviderProperties;

    .line 117
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p3

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/android/server/location/AbstractLocationProvider$State;->providerPackageNames:Ljava/util/Set;

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/AbstractLocationProvider$State;Ljava/util/Set;)Lcom/android/server/location/AbstractLocationProvider$State;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/location/AbstractLocationProvider$State;
    .param p1, "x1"    # Ljava/util/Set;

    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/location/AbstractLocationProvider$State;->withProviderPackageNames(Ljava/util/Set;)Lcom/android/server/location/AbstractLocationProvider$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/location/AbstractLocationProvider$State;Lcom/android/internal/location/ProviderProperties;)Lcom/android/server/location/AbstractLocationProvider$State;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/location/AbstractLocationProvider$State;
    .param p1, "x1"    # Lcom/android/internal/location/ProviderProperties;

    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/location/AbstractLocationProvider$State;->withProperties(Lcom/android/internal/location/ProviderProperties;)Lcom/android/server/location/AbstractLocationProvider$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/location/AbstractLocationProvider$State;Z)Lcom/android/server/location/AbstractLocationProvider$State;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/location/AbstractLocationProvider$State;
    .param p1, "x1"    # Z

    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/location/AbstractLocationProvider$State;->withAllowed(Z)Lcom/android/server/location/AbstractLocationProvider$State;

    move-result-object v0

    return-object v0
.end method

.method private withAllowed(Z)Lcom/android/server/location/AbstractLocationProvider$State;
    .registers 5
    .param p1, "allowed"    # Z

    .line 121
    iget-boolean v0, p0, Lcom/android/server/location/AbstractLocationProvider$State;->allowed:Z

    if-ne p1, v0, :cond_5

    .line 122
    return-object p0

    .line 124
    :cond_5
    new-instance v0, Lcom/android/server/location/AbstractLocationProvider$State;

    iget-object v1, p0, Lcom/android/server/location/AbstractLocationProvider$State;->properties:Lcom/android/internal/location/ProviderProperties;

    iget-object v2, p0, Lcom/android/server/location/AbstractLocationProvider$State;->providerPackageNames:Ljava/util/Set;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/location/AbstractLocationProvider$State;-><init>(ZLcom/android/internal/location/ProviderProperties;Ljava/util/Set;)V

    return-object v0
.end method

.method private withProperties(Lcom/android/internal/location/ProviderProperties;)Lcom/android/server/location/AbstractLocationProvider$State;
    .registers 5
    .param p1, "properties"    # Lcom/android/internal/location/ProviderProperties;

    .line 129
    iget-object v0, p0, Lcom/android/server/location/AbstractLocationProvider$State;->properties:Lcom/android/internal/location/ProviderProperties;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 130
    return-object p0

    .line 132
    :cond_9
    new-instance v0, Lcom/android/server/location/AbstractLocationProvider$State;

    iget-boolean v1, p0, Lcom/android/server/location/AbstractLocationProvider$State;->allowed:Z

    iget-object v2, p0, Lcom/android/server/location/AbstractLocationProvider$State;->providerPackageNames:Ljava/util/Set;

    invoke-direct {v0, v1, p1, v2}, Lcom/android/server/location/AbstractLocationProvider$State;-><init>(ZLcom/android/internal/location/ProviderProperties;Ljava/util/Set;)V

    return-object v0
.end method

.method private withProviderPackageNames(Ljava/util/Set;)Lcom/android/server/location/AbstractLocationProvider$State;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/location/AbstractLocationProvider$State;"
        }
    .end annotation

    .line 137
    .local p1, "providerPackageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/location/AbstractLocationProvider$State;->providerPackageNames:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 138
    return-object p0

    .line 140
    :cond_9
    new-instance v0, Lcom/android/server/location/AbstractLocationProvider$State;

    iget-boolean v1, p0, Lcom/android/server/location/AbstractLocationProvider$State;->allowed:Z

    iget-object v2, p0, Lcom/android/server/location/AbstractLocationProvider$State;->properties:Lcom/android/internal/location/ProviderProperties;

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 141
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/location/AbstractLocationProvider$State;-><init>(ZLcom/android/internal/location/ProviderProperties;Ljava/util/Set;)V

    .line 140
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 147
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 148
    return v0

    .line 150
    :cond_4
    instance-of v1, p1, Lcom/android/server/location/AbstractLocationProvider$State;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 151
    return v2

    .line 153
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/android/server/location/AbstractLocationProvider$State;

    .line 154
    .local v1, "state":Lcom/android/server/location/AbstractLocationProvider$State;
    iget-boolean v3, p0, Lcom/android/server/location/AbstractLocationProvider$State;->allowed:Z

    iget-boolean v4, v1, Lcom/android/server/location/AbstractLocationProvider$State;->allowed:Z

    if-ne v3, v4, :cond_24

    iget-object v3, p0, Lcom/android/server/location/AbstractLocationProvider$State;->properties:Lcom/android/internal/location/ProviderProperties;

    iget-object v4, v1, Lcom/android/server/location/AbstractLocationProvider$State;->properties:Lcom/android/internal/location/ProviderProperties;

    if-ne v3, v4, :cond_24

    iget-object v3, p0, Lcom/android/server/location/AbstractLocationProvider$State;->providerPackageNames:Ljava/util/Set;

    iget-object v4, v1, Lcom/android/server/location/AbstractLocationProvider$State;->providerPackageNames:Ljava/util/Set;

    .line 155
    invoke-interface {v3, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    goto :goto_25

    :cond_24
    move v0, v2

    .line 154
    :goto_25
    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 160
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/android/server/location/AbstractLocationProvider$State;->allowed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/location/AbstractLocationProvider$State;->properties:Lcom/android/internal/location/ProviderProperties;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/location/AbstractLocationProvider$State;->providerPackageNames:Ljava/util/Set;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
