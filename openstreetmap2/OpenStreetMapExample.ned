package openstreetmap2;

import inet.common.geometry.common.SimpleGeographicCoordinateSystem;
import inet.visualizer.canvas.integrated.IntegratedCanvasVisualizer;
import inet.environment.common.PhysicalEnvironment;
import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.contract.INetworkNode;
import inet.physicallayer.wireless.ieee80211.packetlevel.Ieee80211ScalarRadioMedium;

network OpenStreetMapExample
{
    submodules:
        visualizer: IntegratedCanvasVisualizer {
            parameters:
                @display("p=100,100");
        }
        coordinateSystem: SimpleGeographicCoordinateSystem {
            parameters:
                @display("p=100,200");
        }
        
          host1:  <default("WirelessHost")> like INetworkNode {
            @display("p=382,50");
        }
        host2:  <default("WirelessHost")> like INetworkNode {
            @display("p=382,150");
        }
         configurator: Ipv4NetworkConfigurator {
            @display("p=259,150");
        }
        radioMedium: Ieee80211ScalarRadioMedium {
            @display("p=258,50");
        }
}
