.class public final synthetic Lnl/joery/animatedbottombar/TabView$WhenMappings;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I

.field public static final synthetic $EnumSwitchMapping$2:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 5

    invoke-static {}, Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;->values()[Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lnl/joery/animatedbottombar/TabView$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;->TAB_TYPE:Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;

    invoke-virtual {v1}, Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;->ANIMATIONS:Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;

    invoke-virtual {v1}, Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v1, Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;->COLORS:Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;

    invoke-virtual {v1}, Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sget-object v1, Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;->RIPPLE:Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;

    invoke-virtual {v1}, Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;->ordinal()I

    move-result v1

    const/4 v4, 0x4

    aput v4, v0, v1

    sget-object v1, Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;->TEXT:Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;

    invoke-virtual {v1}, Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;->ordinal()I

    move-result v1

    const/4 v4, 0x5

    aput v4, v0, v1

    sget-object v1, Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;->ICON:Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;

    invoke-virtual {v1}, Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;->ordinal()I

    move-result v1

    const/4 v4, 0x6

    aput v4, v0, v1

    sget-object v1, Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;->BADGE:Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;

    invoke-virtual {v1}, Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;->ordinal()I

    move-result v1

    const/4 v4, 0x7

    aput v4, v0, v1

    invoke-static {}, Lnl/joery/animatedbottombar/AnimatedBottomBar$TabType;->values()[Lnl/joery/animatedbottombar/AnimatedBottomBar$TabType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lnl/joery/animatedbottombar/TabView$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lnl/joery/animatedbottombar/AnimatedBottomBar$TabType;->TEXT:Lnl/joery/animatedbottombar/AnimatedBottomBar$TabType;

    invoke-virtual {v1}, Lnl/joery/animatedbottombar/AnimatedBottomBar$TabType;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lnl/joery/animatedbottombar/AnimatedBottomBar$TabType;->ICON:Lnl/joery/animatedbottombar/AnimatedBottomBar$TabType;

    invoke-virtual {v1}, Lnl/joery/animatedbottombar/AnimatedBottomBar$TabType;->ordinal()I

    move-result v1

    aput v3, v0, v1

    invoke-static {}, Lnl/joery/animatedbottombar/AnimatedBottomBar$TabType;->values()[Lnl/joery/animatedbottombar/AnimatedBottomBar$TabType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lnl/joery/animatedbottombar/TabView$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lnl/joery/animatedbottombar/AnimatedBottomBar$TabType;->TEXT:Lnl/joery/animatedbottombar/AnimatedBottomBar$TabType;

    invoke-virtual {v1}, Lnl/joery/animatedbottombar/AnimatedBottomBar$TabType;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lnl/joery/animatedbottombar/AnimatedBottomBar$TabType;->ICON:Lnl/joery/animatedbottombar/AnimatedBottomBar$TabType;

    invoke-virtual {v1}, Lnl/joery/animatedbottombar/AnimatedBottomBar$TabType;->ordinal()I

    move-result v1

    aput v3, v0, v1

    return-void
.end method
