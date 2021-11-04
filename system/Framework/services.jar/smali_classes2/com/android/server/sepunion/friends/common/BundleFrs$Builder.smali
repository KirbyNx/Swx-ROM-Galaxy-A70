.class public Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;
.super Ljava/lang/Object;
.source "BundleFrs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/friends/common/BundleFrs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private bundle:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->bundle:Landroid/os/Bundle;

    .line 75
    return-void
.end method

.method public static create()Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;
    .registers 1

    .line 78
    new-instance v0, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    invoke-direct {v0}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Landroid/os/Bundle;
    .registers 2

    .line 152
    iget-object v0, p0, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public put(Ljava/lang/String;B)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # B

    .line 122
    iget-object v0, p0, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 123
    return-object p0
.end method

.method public put(Ljava/lang/String;I)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 102
    iget-object v0, p0, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 103
    return-object p0
.end method

.method public put(Ljava/lang/String;J)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 92
    iget-object v0, p0, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 93
    return-object p0
.end method

.method public put(Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/Bundle;

    .line 137
    iget-object v0, p0, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 138
    return-object p0
.end method

.method public put(Ljava/lang/String;Landroid/os/IBinder;)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/IBinder;

    .line 132
    iget-object v0, p0, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 133
    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "+",
            "Landroid/os/Parcelable;",
            ">;)",
            "Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;"
        }
    .end annotation

    .line 142
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Landroid/os/Parcelable;>;"
    iget-object v0, p0, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 143
    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/util/List;)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;"
        }
    .end annotation

    .line 147
    .local p2, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->bundle:Landroid/os/Bundle;

    move-object v1, p2

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 148
    return-object p0
.end method

.method public put(Ljava/lang/String;Z)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 112
    iget-object v0, p0, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 113
    return-object p0
.end method

.method public put(Ljava/lang/String;[B)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .line 127
    iget-object v0, p0, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 128
    return-object p0
.end method

.method public put(Ljava/lang/String;[I)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [I

    .line 107
    iget-object v0, p0, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 108
    return-object p0
.end method

.method public put(Ljava/lang/String;[J)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [J

    .line 97
    iget-object v0, p0, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 98
    return-object p0
.end method

.method public put(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 88
    return-object p0
.end method

.method public put(Ljava/lang/String;[Z)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Z

    .line 117
    iget-object v0, p0, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 118
    return-object p0
.end method
