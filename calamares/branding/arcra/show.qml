import QtQuick 2.0  // Basic QML
import calamares.slideshow 1.0  // Calamares slideshow: Presentation
import io.calamares.ui 1.0  // Calamares internals: Branding

Presentation
{
    id: presentation

    Timer {
        // Interval between pictures
        interval: 10000
        running: presentation.activatedInCalamares
        repeat: true
        onTriggered: presentation.goToNextSlide()
    }

    function onActivate() { }
    function onLeave() { }

    Rectangle {
        id: mybackground
        anchors.fill: parent
        color: Branding.styleString(Branding.SidebarBackground)
        z: -1
    }

    // list of slides
    ImageSlide {
        src: "airplane.png"
    }

    ImageSlide {
        src: "train-tracks.jpg"
    }

    ImageSlide {
        src: "sunset.jpg"
    }

    ImageSlide {
        src: "russian-station.jpg"
    }
    
     ImageSlide {
        src: "balcony.jpg"
    }
    
     ImageSlide {
        src: "bike.jpg"
    }
    
     ImageSlide {
        src: "cosy.jpg"
    }
    
     ImageSlide {
        src: "forest-view.jpg"
    }
    
     ImageSlide {
        src: "japanese-house.jpg"
    }
    
     ImageSlide {
        src: "mountain-road.jpg"
    }
    
     ImageSlide {
        src: "portal.png"
    }
    
     ImageSlide {
        src: "suits.png"
    }
    
     ImageSlide {
        src: "thor-movies.png"
    }
    
     ImageSlide {
        src: "train-station.jpg"
    }
    
     ImageSlide {
        src: "window.jpg"
    }
    
    ImageSlide {
        src: "keyboard.jpg"
    }
    
    ImageSlide {
        src: "coffee.png"
    }
    
    ImageSlide {
        src: "sunrise.jpg"
    }
}
