.class Lcom/android/server/people/data/EventList;
.super Ljava/lang/Object;
.source "EventList.java"


# instance fields
.field private final mEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/people/data/Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    return-void
.end method

.method private firstIndexOnOrAfter(J)I
    .registers 9
    .param p1, "timestamp"    # J

    .line 128
    iget-object v0, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 129
    .local v0, "result":I
    const/4 v1, 0x0

    .line 130
    .local v1, "low":I
    iget-object v2, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 131
    .local v2, "high":I
    :goto_f
    if-gt v1, v2, :cond_2c

    .line 132
    add-int v3, v1, v2

    ushr-int/lit8 v3, v3, 0x1

    .line 133
    .local v3, "mid":I
    iget-object v4, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/people/data/Event;

    invoke-virtual {v4}, Lcom/android/server/people/data/Event;->getTimestamp()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-ltz v4, :cond_29

    .line 134
    add-int/lit8 v2, v3, -0x1

    .line 135
    move v0, v3

    goto :goto_2b

    .line 137
    :cond_29
    add-int/lit8 v1, v3, 0x1

    .line 139
    .end local v3    # "mid":I
    :goto_2b
    goto :goto_f

    .line 140
    :cond_2c
    return v0
.end method

.method private isDuplicate(Lcom/android/server/people/data/Event;I)Z
    .registers 9
    .param p1, "event"    # Lcom/android/server/people/data/Event;
    .param p2, "startIndex"    # I

    .line 148
    iget-object v0, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 149
    .local v0, "size":I
    move v1, p2

    .line 150
    .local v1, "index":I
    :goto_7
    if-ge v1, v0, :cond_35

    iget-object v2, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/people/data/Event;

    invoke-virtual {v2}, Lcom/android/server/people/data/Event;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/android/server/people/data/Event;->getTimestamp()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_35

    .line 151
    iget-object v2, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "index":I
    .local v3, "index":I
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/people/data/Event;

    invoke-virtual {v1}, Lcom/android/server/people/data/Event;->getType()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/people/data/Event;->getType()I

    move-result v2

    if-ne v1, v2, :cond_33

    .line 152
    const/4 v1, 0x1

    return v1

    .line 151
    :cond_33
    move v1, v3

    goto :goto_7

    .line 155
    .end local v3    # "index":I
    .restart local v1    # "index":I
    :cond_35
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method add(Lcom/android/server/people/data/Event;)V
    .registers 7
    .param p1, "event"    # Lcom/android/server/people/data/Event;

    .line 37
    invoke-virtual {p1}, Lcom/android/server/people/data/Event;->getTimestamp()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/people/data/EventList;->firstIndexOnOrAfter(J)I

    move-result v0

    .line 38
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2b

    iget-object v1, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    .line 39
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/people/data/Event;

    invoke-virtual {v1}, Lcom/android/server/people/data/Event;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/android/server/people/data/Event;->getTimestamp()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_2b

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/android/server/people/data/EventList;->isDuplicate(Lcom/android/server/people/data/Event;I)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 41
    return-void

    .line 43
    :cond_2b
    iget-object v1, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 44
    return-void
.end method

.method addAll(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/people/data/Event;",
            ">;)V"
        }
    .end annotation

    .line 51
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/people/data/Event;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/people/data/Event;

    .line 52
    .local v1, "event":Lcom/android/server/people/data/Event;
    invoke-virtual {p0, v1}, Lcom/android/server/people/data/EventList;->add(Lcom/android/server/people/data/Event;)V

    .line 53
    .end local v1    # "event":Lcom/android/server/people/data/Event;
    goto :goto_4

    .line 54
    :cond_14
    return-void
.end method

.method clear()V
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 86
    return-void
.end method

.method getAllEvents()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/people/data/Event;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method queryEvents(Ljava/util/Set;JJ)Ljava/util/List;
    .registers 12
    .param p2, "fromTimestamp"    # J
    .param p4, "toTimestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;JJ)",
            "Ljava/util/List<",
            "Lcom/android/server/people/data/Event;",
            ">;"
        }
    .end annotation

    .line 66
    .local p1, "eventTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0, p2, p3}, Lcom/android/server/people/data/EventList;->firstIndexOnOrAfter(J)I

    move-result v0

    .line 67
    .local v0, "fromIndex":I
    iget-object v1, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_12

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 70
    :cond_12
    invoke-direct {p0, p4, p5}, Lcom/android/server/people/data/EventList;->firstIndexOnOrAfter(J)I

    move-result v1

    .line 71
    .local v1, "toIndex":I
    if-ge v1, v0, :cond_1e

    .line 72
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    .line 74
    :cond_1e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/people/data/Event;>;"
    move v3, v0

    .local v3, "i":I
    :goto_24
    if-ge v3, v1, :cond_42

    .line 76
    iget-object v4, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/people/data/Event;

    .line 77
    .local v4, "e":Lcom/android/server/people/data/Event;
    invoke-virtual {v4}, Lcom/android/server/people/data/Event;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 78
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    .end local v4    # "e":Lcom/android/server/people/data/Event;
    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 81
    .end local v3    # "i":I
    :cond_42
    return-object v2
.end method

.method removeOldEvents(J)V
    .registers 8
    .param p1, "cutOffThreshold"    # J

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/server/people/data/EventList;->firstIndexOnOrAfter(J)I

    move-result v0

    .line 103
    .local v0, "cutOffIndex":I
    if-nez v0, :cond_7

    .line 104
    return-void

    .line 108
    :cond_7
    iget-object v1, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 109
    .local v1, "eventsSize":I
    if-ne v0, v1, :cond_15

    .line 110
    iget-object v2, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 111
    return-void

    .line 115
    :cond_15
    const/4 v2, 0x0

    .line 116
    .local v2, "i":I
    :goto_16
    if-ge v0, v1, :cond_28

    .line 117
    iget-object v3, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/people/data/Event;

    invoke-interface {v3, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 116
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 121
    :cond_28
    if-le v1, v2, :cond_33

    .line 122
    iget-object v3, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    invoke-interface {v3, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 124
    :cond_33
    return-void
.end method
