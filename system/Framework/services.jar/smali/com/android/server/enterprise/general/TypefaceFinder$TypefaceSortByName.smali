.class public Lcom/android/server/enterprise/general/TypefaceFinder$TypefaceSortByName;
.super Ljava/lang/Object;
.source "TypefaceFinder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/general/TypefaceFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypefaceSortByName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/enterprise/general/Typeface;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/enterprise/general/Typeface;Lcom/android/server/enterprise/general/Typeface;)I
    .registers 5
    .param p1, "o1"    # Lcom/android/server/enterprise/general/Typeface;
    .param p2, "o2"    # Lcom/android/server/enterprise/general/Typeface;

    .line 214
    invoke-virtual {p1}, Lcom/android/server/enterprise/general/Typeface;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/enterprise/general/Typeface;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 208
    check-cast p1, Lcom/android/server/enterprise/general/Typeface;

    check-cast p2, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/general/TypefaceFinder$TypefaceSortByName;->compare(Lcom/android/server/enterprise/general/Typeface;Lcom/android/server/enterprise/general/Typeface;)I

    move-result p1

    return p1
.end method
